//
//  UniversalAppIBViewController.h
//  UniversalAppIB
//
//  Created by Luca Di Franco on 30/05/10.
//  Copyright Luca Di Franco 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import <Socialize-iOS/Socialize.h>
#import "RRSGlowLabel.h"

@interface EconoDashViewController : UIViewController <MBProgressHUDDelegate> {
    MBProgressHUD *HUD;
    IBOutlet UIScrollView *scroller;
    NSMutableData *receivedData;
    NSMutableString *formattedNumberString; 
    NSArray *numbers;
    NSString *fullString;
    IBOutlet RRSGlowLabel *debtLabel;
    IBOutlet RRSGlowLabel *applePrice;
    IBOutlet RRSGlowLabel *applePercent;
    IBOutlet RRSGlowLabel *appleRange;
    IBOutlet RRSGlowLabel *jobsMonth;
    IBOutlet RRSGlowLabel *dowPrice;
    NSNumberFormatter *form; 
    IBOutlet RRSGlowLabel *dowPercent;
    IBOutlet RRSGlowLabel *dowRange;
    IBOutlet RRSGlowLabel *snpPrice;
    IBOutlet RRSGlowLabel *snpPercent;
    IBOutlet RRSGlowLabel *snpRange;
    IBOutlet RRSGlowLabel *nasdaqPrice;
    IBOutlet RRSGlowLabel *nasdaqPercent;
    IBOutlet RRSGlowLabel *nasdaqRange;
    IBOutlet RRSGlowLabel *oilPrice;
    IBOutlet RRSGlowLabel *oilPercent;
    IBOutlet RRSGlowLabel *euro;
    IBOutlet RRSGlowLabel *yen;
    IBOutlet RRSGlowLabel *gbp;
    IBOutlet RRSGlowLabel *franc;
    IBOutlet RRSGlowLabel *oilPump;
    IBOutlet RRSGlowLabel *unemployment;
    IBOutlet RRSGlowLabel *jobsGrowth;
    IBOutlet RRSGlowLabel *gdp;
    IBOutlet RRSGlowLabel *existingHomeSalesCurrent;
    IBOutlet RRSGlowLabel *existingHomeSalesLastYear;
    IBOutlet RRSGlowLabel *existingHomeSalesMonth;
    IBOutlet RRSGlowLabel *homeSalesNewCurrent;
    IBOutlet RRSGlowLabel *homeSalesNewLastYear;
    NSNumber *myNumber;
    IBOutlet RRSGlowLabel *homeSalesMonthNew;
    NSString *debtString;
    long long expectedLength;
    NSString *entityUrlString;
    long long currentLength;
}


@property (nonatomic,retain) NSArray *numbers;
@property (nonatomic,retain) NSString *fullString;
@property (nonatomic,retain) NSString *debtString;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *debtLabel;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *jobsMonth;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *applePrice;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *applePercent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *appleRange;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *dowPrice;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *dowPercent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *dowRange;
@property (nonatomic,retain) NSNumber * myNumber ;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *snpPrice;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *snpPercent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *snpRange;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *nasdaqPrice;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *nasdaqPercent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *nasdaqRange;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *oilPrice;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *oilPercent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *euro;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *yen;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *gbp;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *franc;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *oilPump;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *unemployment;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *jobsGrowth;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *gdp;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *existingHomeSalesCurrent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *existingHomeSalesLastYear;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *existingHomeSalesMonth;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *homeSalesNewCurrent;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *homeSalesNewLastYear;
@property (nonatomic,retain) IBOutlet RRSGlowLabel *homeSalesMonthNew;
@property (nonatomic,retain) NSNumberFormatter *form; 
@property (nonatomic,retain) IBOutlet UIScrollView *scroller;



-(IBAction)dowComments;
-(IBAction)nasComments;
-(IBAction)spComments;
-(IBAction)applComments;
-(IBAction)currComments;
-(IBAction)jobsComments;
-(IBAction)gasComments;
-(IBAction)housingComments;
-(IBAction)debtComments;
-(void)Initiate;
-(void)launchMessage;
-(IBAction)fetchComments;
-(void)display;
-(void)debtCalc;

@end

