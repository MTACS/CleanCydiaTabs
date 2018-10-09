#line 1 "Tweak.xm"

#import <SpringBoard/SpringBoard.h>
#import <Foundation/Foundation.h>

@interface UITabBarButtonLabel : UILabel

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

@end

@interface TWEAK : NSObject {}

@property (assign) BOOL enabled;

@end

@implementation TWEAK: NSObject



NSUserDefaults *prefs = [[NSUserDefaults alloc] initWithSuiteName:@"com.mtac.cleancydiatabs"];

BOOL _enabled = [[prefs objectForKey:@"enabled"] boolValue];

@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UITabBarButton; @class UITabBarButtonLabel; 
static void (*_logos_orig$_ungrouped$UITabBarButtonLabel$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITabBarButtonLabel* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UITabBarButtonLabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITabBarButtonLabel* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITabBarButton$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UITabBarButton$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL); 

#line 27 "Tweak.xm"


static void _logos_method$_ungrouped$UITabBarButtonLabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITabBarButtonLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

  


















  if (self.enabled) {

    _logos_orig$_ungrouped$UITabBarButtonLabel$layoutSubviews(self, _cmd);

    self.hidden = YES;

  } else {

    self.hidden = NO;

  }

}



@interface UITabBarButton : UIControl

@property (nonatomic, assign, readwrite) CGPoint center;

@end



static void _logos_method$_ungrouped$UITabBarButton$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

  











  if (self.enabled) {

    _logos_orig$_ungrouped$UITabBarButton$layoutSubviews(self, _cmd);

    CGPoint newCenter = self.center;
    newCenter.y = 30;
    self.center = newCenter;

  } else {



  }

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UITabBarButtonLabel = objc_getClass("UITabBarButtonLabel"); MSHookMessageEx(_logos_class$_ungrouped$UITabBarButtonLabel, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITabBarButtonLabel$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$UITabBarButtonLabel$layoutSubviews);Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITabBarButton$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$layoutSubviews);} }
#line 105 "Tweak.xm"
