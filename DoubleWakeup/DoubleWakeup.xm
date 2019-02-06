#import<UIKit/UIKit.h>

%hook SBTapToWakeController
- (_Bool)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2{
    UITapGestureRecognizer *selfTap = arg2;
    if ([NSStringFromClass(selfTap.class) isEqualToString:@"UITapGestureRecognizer"]){
        if(selfTap.numberOfTapsRequired == 2){
            NSLog(@"test=%@",selfTap);
            [((SpringBoard *)[%c(SpringBoard) sharedApplication]) _simulateHomeButtonPress];
        }
    }
    return %orig;
}
- (void)tapToWakeDidRecognize:(id)arg1{
    return;
}
%end
