//
//  iCodeBrowserAppDelegate.h
//  iCodeBrowser
//
//  Created by Brandon Trebitowski on 12/19/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iCodeBrowserViewController;

@interface iCodeBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iCodeBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iCodeBrowserViewController *viewController;

@end

