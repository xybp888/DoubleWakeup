#line 1 "/Users/xybp888/Desktop/DoubleWakeup/DoubleWakeup/DoubleWakeup.xm"
#import<UIKit/UIKit.h>


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

@class SBTapToWakeController; @class SpringBoard; 
static _Bool (*_logos_orig$_ungrouped$SBTapToWakeController$gestureRecognizer$shouldRecognizeSimultaneouslyWithGestureRecognizer$)(_LOGOS_SELF_TYPE_NORMAL SBTapToWakeController* _LOGOS_SELF_CONST, SEL, id, id); static _Bool _logos_method$_ungrouped$SBTapToWakeController$gestureRecognizer$shouldRecognizeSimultaneouslyWithGestureRecognizer$(_LOGOS_SELF_TYPE_NORMAL SBTapToWakeController* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$SBTapToWakeController$tapToWakeDidRecognize$)(_LOGOS_SELF_TYPE_NORMAL SBTapToWakeController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBTapToWakeController$tapToWakeDidRecognize$(_LOGOS_SELF_TYPE_NORMAL SBTapToWakeController* _LOGOS_SELF_CONST, SEL, id); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SpringBoard(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SpringBoard"); } return _klass; }
#line 3 "/Users/xybp888/Desktop/DoubleWakeup/DoubleWakeup/DoubleWakeup.xm"

static _Bool _logos_method$_ungrouped$SBTapToWakeController$gestureRecognizer$shouldRecognizeSimultaneouslyWithGestureRecognizer$(_LOGOS_SELF_TYPE_NORMAL SBTapToWakeController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    UITapGestureRecognizer *selfTap = arg2;
    if ([NSStringFromClass(selfTap.class) isEqualToString:@"UITapGestureRecognizer"]){
        if(selfTap.numberOfTapsRequired == 2){
            NSLog(@"test=%@",selfTap);
            [((SpringBoard *)[_logos_static_class_lookup$SpringBoard() sharedApplication]) _simulateHomeButtonPress];
        }
    }
    return _logos_orig$_ungrouped$SBTapToWakeController$gestureRecognizer$shouldRecognizeSimultaneouslyWithGestureRecognizer$(self, _cmd, arg1, arg2);
}
static void _logos_method$_ungrouped$SBTapToWakeController$tapToWakeDidRecognize$(_LOGOS_SELF_TYPE_NORMAL SBTapToWakeController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    return;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBTapToWakeController = objc_getClass("SBTapToWakeController"); MSHookMessageEx(_logos_class$_ungrouped$SBTapToWakeController, @selector(gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:), (IMP)&_logos_method$_ungrouped$SBTapToWakeController$gestureRecognizer$shouldRecognizeSimultaneouslyWithGestureRecognizer$, (IMP*)&_logos_orig$_ungrouped$SBTapToWakeController$gestureRecognizer$shouldRecognizeSimultaneouslyWithGestureRecognizer$);MSHookMessageEx(_logos_class$_ungrouped$SBTapToWakeController, @selector(tapToWakeDidRecognize:), (IMP)&_logos_method$_ungrouped$SBTapToWakeController$tapToWakeDidRecognize$, (IMP*)&_logos_orig$_ungrouped$SBTapToWakeController$tapToWakeDidRecognize$);} }
#line 18 "/Users/xybp888/Desktop/DoubleWakeup/DoubleWakeup/DoubleWakeup.xm"
