@interface SBFLockScreenDateSubtitleDateView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook SBFLockScreenDateSubtitleDateView

-(void)viewDidLoad {
	%orig;
	self.hidden = TRUE;
}

%end