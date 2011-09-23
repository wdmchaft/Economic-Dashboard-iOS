//
//  EconoDashAppDelegate.h
//  EconoDash
//
//  Created by Peter Kazazes on 9/22/11.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EconoDashViewController;

@interface EconoDashAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet EconoDashViewController *viewController;

@end
