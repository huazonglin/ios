//
//  iCodeBrowserViewController.m
//  iCodeBrowser
//
//  Created by Brandon Trebitowski on 12/19/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "iCodeBrowserViewController.h"

@implementation iCodeBrowserViewController

@synthesize webView, addressBar, activityIndicator;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *urlAddress = @"http://icodeblog.com";
	
	NSURL *url = [NSURL URLWithString:urlAddress];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	[webView loadRequest:requestObj];
	[addressBar setText:urlAddress];
	
}

-(IBAction)gotoAddress:(id) sender {
	NSURL *url = [NSURL URLWithString:[addressBar text]];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	
	//Load the request in the UIWebView.
	[webView loadRequest:requestObj];
	[addressBar resignFirstResponder];
}

-(IBAction) goBack:(id)sender {
	[webView goBack];
}

-(IBAction) goForward:(id)sender {
	[webView goForward];
}

- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
	//CAPTURE USER LINK-CLICK.
	if (navigationType == UIWebViewNavigationTypeLinkClicked) {
		NSURL *URL = [request URL];	
		if ([[URL scheme] isEqualToString:@"http"]) {
			[addressBar setText:[URL absoluteString]];
			[self gotoAddress:nil];
		}	 
		return NO;
	}	
	return YES;   
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
	[activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
	[activityIndicator stopAnimating];
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

@end
