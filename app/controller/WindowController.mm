#import "WindowController.h"

@implementation WindowController

- (instancetype)initWithRect:(NSRect)rect {
    self = [super init];
    if (self) {
        unsigned int mask = NSWindowStyleMaskTitled | NSWindowStyleMaskResizable |
                            NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable;
        self.window = [[NSWindow alloc] initWithContentRect:rect
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
