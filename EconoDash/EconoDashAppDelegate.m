//
//  UniversalAppIBAppDelegate.m
//  UniversalAppIB
//
//  Created by Luca Di Franco on 30/05/10.
//  Copyright Luca Di Franco 2010. All rights reserved.
//

#import "EconoDashAppDelegate.h"
#import "EconoDashViewController.h"

@implementation EconoDashAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self.window addSubview:navController.view];
    [self.window makeKeyAndVisible];
	// Allocate memory for the instance
    socialize = [[Socialize alloc] initWithDelegate:self];
    // invoke the call
    [socialize authenticateWithApiKey:@"b631d5f9-3982-4404-9000-098ec991802c" apiSecret:@"67ae21a7-7ccf-4bb5-baf0-ebad8529c352"];
    
	return YES;
}


-(void)didAuthenticate{
    
    NSLog(@"Authenticated");
}
// if the authentication fails the following method is called
-(void)service:(SocializeService*)service didFail:(NSError*)error{
    NSLog(@"%@", error);
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
