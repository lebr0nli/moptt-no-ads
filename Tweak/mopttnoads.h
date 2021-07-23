#import <UIKit/UIKit.h>


#define PLIST_PATH "/var/mobile/Library/Preferences/com.alanli.mopttnoadspreferences.plist"

@interface PostListViewController: UITableViewController
- (id)adItemFromIndexPath:(id)arg1;
@end

@interface PostContentBox: UITableView
- (id)adItemFromIndexPath:(id)arg1;
@end

@interface PostContentPageViewController: UIView
@end