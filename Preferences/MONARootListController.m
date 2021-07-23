#include "MONARootListController.h"

@implementation MONARootListController
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}


- (void) openGithub{
	[[UIApplication sharedApplication]	
	openURL: [NSURL URLWithString:@"https://github.com/lebr0nli/moptt-no-ads"]
	options:@{}
	completionHandler:nil];
}


- (void) aboutMe{
	[[UIApplication sharedApplication]	
	openURL: [NSURL URLWithString:@"https://github.com/lebr0nli"]
	options:@{}
	completionHandler:nil];
}

@end
