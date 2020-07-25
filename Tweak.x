@interface SBFLockScreenDateSubtitleDateView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%group HideDate

%hook SBFLockScreenDateSubtitleDateView

-(void)layoutSubviews {
	%orig;
	self.hidden = TRUE;
}

%end

%end

%ctor {
	%init(HideDate);
}
