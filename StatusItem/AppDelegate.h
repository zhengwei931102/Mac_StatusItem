//
//  AppDelegate.h
//  StatusItem
//
//  Created by admin on 17/2/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (strong,nonatomic) NSStatusItem *item;
@property (weak) IBOutlet NSMenu *statusMenu;

@property (strong) NSPopover *popover;
@property(nonatomic)BOOL  isShow;

@end

