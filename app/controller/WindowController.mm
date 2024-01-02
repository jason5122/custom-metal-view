#import "WindowController.h"

@implementation WindowController

- (instancetype)initWithSize:(CGSize)theSize
                     padding:(CGFloat)thePadding
                innerPadding:(CGFloat)theInnerPadding
            titleTextPadding:(CGFloat)theTitleTextPadding {
    self = [super init];
    if (self) {
        size = theSize;
        padding = thePadding;
        innerPadding = theInnerPadding;
        titleTextPadding = theTitleTextPadding;

        unsigned int mask = NSWindowStyleMaskTitled | NSWindowStyleMaskResizable |
                            NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable;
        self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 600, 500)
                                                  styleMask:mask
                                                    backing:NSBackingStoreBuffered
                                                      defer:false];
    }
    return self;
}

- (void)showWindow {
    [self.window center];
    [self.window setFrameAutosaveName:@"metal-app"];
    [self.window makeKeyAndOrderFront:nil];
}

@end
