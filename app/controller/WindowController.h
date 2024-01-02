#import <Cocoa/Cocoa.h>

@interface WindowController : NSWindowController {
    CGSize size;
    CGFloat padding;
    CGFloat innerPadding;
    CGFloat titleTextPadding;
}

- (instancetype)initWithSize:(CGSize)size
                     padding:(CGFloat)padding
                innerPadding:(CGFloat)innerPadding
            titleTextPadding:(CGFloat)titleTextPadding;

- (void)showWindow;

@end
