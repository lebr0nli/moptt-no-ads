#include "mopttnoads.h"


BOOL noads;

%group NoAds
    %hook PostListViewController
        - (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 {
            id tbv = %orig;
            if([self adItemFromIndexPath:arg2]){
                // NSLog(@"[HOOK] Find ad");
                [tbv setHidden: YES];
            }
            return tbv;
        }
        - (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 {
            double tbv_height = %orig;
            if([self adItemFromIndexPath:arg2]){
                // NSLog(@"[HOOK] Find ad");
                return 0;
            }
            return tbv_height;
        }
    %end

    %hook PostContentBox
        - (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 {
            id tbv = %orig;
            if([self adItemFromIndexPath:arg2]){
                // NSLog(@"[HOOK] Find ad");
                [tbv setHidden: YES];
            }
            return tbv;
        }
        - (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 {
            double tbv_height = %orig;
            if([self adItemFromIndexPath:arg2]){
                // NSLog(@"[HOOK] Find ad");
                return 0;
            }
            return tbv_height;
        }
    %end

    %hook PostContentPageViewController
        - (bool)enableAd{
            return false;
        }
    %end
%end

%ctor {
    NSDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@PLIST_PATH] ?: [@{} mutableCopy];
    // NSLog(@"[moptt] settings: %@",settings);
    noads = [[settings objectForKey:@"noads"] ?: @(YES) boolValue];
    // NSLog(@"[moptt] noads: %d",noads);
    if(noads){
       %init(NoAds);
    }
}