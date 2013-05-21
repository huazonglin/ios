//
//  iCodeBrowserViewController.h
//  iCodeBrowser
//
//  Created by Brandon Trebitowski on 12/19/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iCodeBrowserViewController : UIViewController<UIWebViewDelegate> {
	IBOutlet UIWebView *webView;
	IBOutlet UITextField *addressBar;
	IBOutlet UIActivityIndicatorView *activityIndicator;
}

@property(nonatomic,retain) UIWebView *webView;
@property(nonatomic,retain) UITextField *addressBar;
@property(nonatomic,retain) UIActivityIndicatorView *activityIndicator;

-(IBAction) gotoAddress:(id)sender;
-(IBAction) goBack:(id)sender;
-(IBAction) goForward:(id)sender;

@end
