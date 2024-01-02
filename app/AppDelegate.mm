#import "AppDelegate.h"
#import "util/log_util.h"

@implementation AppDelegate

- (instancetype)init {
    self = [super init];
    if (self) {
        CGSize size = CGSizeMake(160, 100);
        CGFloat padding = 20;
        CGFloat innerPadding = 15;
        CGFloat titleTextPadding = 15;

        windowController = [[WindowController alloc] initWithSize:size
                                                          padding:padding
                                                     innerPadding:innerPadding
                                                 titleTextPadding:titleTextPadding];
    }
    return self;
}

- (void)applicationWillFinishLaunching:(NSNotification*)notification {
    NSString* appName = NSBundle.mainBundle.infoDictionary[@"CFBundleName"];
    menu = [[NSMenu alloc] init];
    NSMenuItem* appMenu = [[NSMenuItem alloc] init];
    appMenu.submenu = [[NSMenu alloc] init];
    [appMenu.submenu addItemWithTitle:[NSString stringWithFormat:@"About %@", appName]
                               action:@selector(showAboutPanel)
                        keyEquivalent:@""];
    [appMenu.submenu addItem:[NSMenuItem separatorItem]];
    [appMenu.submenu addItemWithTitle:[NSString stringWithFormat:@"Quit %@", appName]
                               action:@selector(terminate:)
                        keyEquivalent:@"q"];
    [menu addItem:appMenu];
    NSApplication.sharedApplication.mainMenu = menu;

    [windowController showWindow];
}

- (void)showAboutPanel {
    [NSApplication.sharedApplication orderFrontStandardAboutPanel:menu];
    [NSApplication.sharedApplication activateIgnoringOtherApps:true];
}

@end
