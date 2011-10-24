//
//  UniversalAppIBAppDelegate.h
//  UniversalAppIB
//
//  Created by Luca Di Franco on 30/05/10.
//  Copyright Luca Di Franco 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Socialize-iOS/Socialize.h>
#import "EconoDashViewController.h"

@class EconoDashViewController;

@interface EconoDashAppDelegate : NSObject <UIApplicationDelegate, SocializeServiceDelegate> {
    UIWindow *window;
    EconoDashViewController *viewController;
    UINavigationController*         navController;
    Socialize                   *socialize;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EconoDashViewController *viewController;

@end

