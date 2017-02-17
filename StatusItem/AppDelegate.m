//
//  AppDelegate.m
//  StatusItem
//
//  Created by admin on 17/2/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "POPVC.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.item = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    [self.item setImage:[NSImage imageNamed:@"1"]];
    [self.item setToolTip:@"吧啦吧啦吧啦吧啦吧啦"];
    self.item.menu = self.statusMenu;
    
    //下面所有代码为自定义popover弹出view
//    [self.item.button setTarget:self];
//    [self.item.button setAction:@selector(itemAction:)];
//    [self setUpPopover];
    
}
-(void) setUpPopover {
    self.popover = [[NSPopover alloc] init];
    self.popover.contentViewController = [[POPVC alloc] init];
   
    self.popover.behavior = 0;
}
- (void)itemAction:(id)sender {
    NSLog(@"itemAction");
    //激活应用到前台(如果应用窗口处于非活动状态)
    [[NSRunningApplication currentApplication] activateWithOptions:(NSApplicationActivateAllWindows | NSApplicationActivateIgnoringOtherApps)];
    if (!self.isShow) {
        [self.popover showRelativeToRect:NSZeroRect ofView:[self item].button preferredEdge:NSRectEdgeMinY];
    } else {
        [self.popover close];
    }
    self.isShow = ~self.isShow;

}
- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
