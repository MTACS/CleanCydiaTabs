// #import <Preferences/Preferences.h>
#import <SpringBoard/SpringBoard.h>
#import <Foundation/Foundation.h>

@interface UITabBarButtonLabel : UILabel

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

@end

@interface TWEAK : NSObject {}

@property (assign) BOOL enabled;

@end

@implementation TWEAK: NSObject

// NSMutableDictionary *prefs [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.mtac.cctprefs.plist"];

NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.mtac.cleancydiatabs"];

BOOL _enabled = [[prefs objectForKey:@"enabled"] boolValue];

@end

%hook UITabBarButtonLabel

- (void)layoutSubviews {

  /* if ([prefs boolForKey:@"enabled"]) {

    if (tweakEnabled == NO) {

      tweakEnabled = YES;
      self.hidden = YES;

    }

  } else {

    if (tweakEnabled == YES) {

      tweakEnabled = NO;

    }

  } */

  if (self.enabled) {

    %orig;

    self.hidden = YES;

  } else {

    self.hidden = NO;

  }

}

%end

@interface UITabBarButton : UIControl

@property (nonatomic, assign, readwrite) CGPoint center;

@end

%hook UITabBarButton

- (void)layoutSubviews {

  /* if ([prefs boolForKey:@"enabled"]) {

    CGPoint newCenter = self.center;
    newCenter.y = 30;
    self.center = newCenter;

  } else {

    %orig;

  } */

  if (self.enabled) {

    %orig;

    CGPoint newCenter = self.center;
    newCenter.y = 30;
    self.center = newCenter;

  } else {



  }

}

%end
