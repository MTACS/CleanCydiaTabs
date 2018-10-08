@interface UITabBarButtonLabel : UILabel

@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;

@end

%hook UITabBarButtonLabel

- (void)layoutSubviews {

  %orig;

  self.hidden = YES;

}

%end

@interface UITabBarButton : UIControl

@property (nonatomic, assign, readwrite) CGPoint center;

@end

%hook UITabBarButton

- (void)layoutSubviews {

  %orig;

  CGPoint newCenter = self.center;
  newCenter.y = 30;
  self.center = newCenter;

}

%end
