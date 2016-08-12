#import <UIKit/UIKit.h>
#import <substrate.h>
#define Plist_PATH @"/var/mobile/Library/Preferences/Root.plist"
inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:Plist_PATH] valueForKey:key] boolValue];
}

%hook SCStoriesViewController
-(bool)_hasFeaturedSection{if(GetPrefBool(@"k1")) {return false;}else{return %orig;}
}%end 
