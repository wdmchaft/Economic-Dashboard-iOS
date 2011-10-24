//
//  UniversalAppIBViewController.m
//  UniversalAppIB
//
//  Created by Luca Di Franco on 30/05/10.
//  Copyright Luca Di Franco 2010. All rights reserved.
//

#import "EconoDashViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <Socialize-iOS/SocializeCommentsTableViewController.h>
#import <Socialize-iOS/UINavigationBarBackground.h>
#import <Socialize-iOS/UIButton+Socialize.h>
#import <Socialize-iOS/Socialize.h>

@implementation EconoDashViewController
@synthesize numbers;
@synthesize fullString;
@synthesize debtLabel;
@synthesize scroller;
@synthesize applePrice;
@synthesize applePercent;
@synthesize myNumber;
@synthesize appleRange;
@synthesize dowPrice;
@synthesize dowPercent;
@synthesize form;
@synthesize dowRange;
@synthesize snpPrice;
@synthesize snpPercent;
@synthesize snpRange;
@synthesize nasdaqPrice;
@synthesize nasdaqPercent;
@synthesize nasdaqRange;
@synthesize oilPrice;
@synthesize jobsMonth;
@synthesize oilPercent;
@synthesize euro;
@synthesize yen;
@synthesize gbp;
@synthesize franc;
@synthesize oilPump;
@synthesize unemployment;
@synthesize jobsGrowth;
@synthesize gdp;
@synthesize existingHomeSalesCurrent;
@synthesize existingHomeSalesLastYear;
@synthesize existingHomeSalesMonth;
@synthesize homeSalesMonthNew;
@synthesize homeSalesNewCurrent;
@synthesize homeSalesNewLastYear;
@synthesize debtString;



- (void)viewDidLoad
{
    [receivedData setLength:0];
    [self Initiate];
    [super viewDidLoad];
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 1460)];
    //Create a couple of colours for the background gradient
    UIColor *colorOne = [UIColor colorWithRed:0.0 green:0.125 blue:0.18 alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:0.0 green:0.00 blue:0.05 alpha:1.0];
    
    //Create the gradient and add it to our view's root layer
    CAGradientLayer *gradientLayer = [[[CAGradientLayer alloc] init] autorelease];
    gradientLayer.frame = [[UIScreen mainScreen] bounds];
    [gradientLayer setColors:[NSArray arrayWithObjects:(id)colorOne.CGColor, (id)colorTwo.CGColor, nil]];
    [self.view.layer insertSublayer:gradientLayer atIndex:0];
    
    UIImage * socializeNavBarBackground = [UIImage imageNamed:@"socialize-navbar-bg.png"];
    [self.navigationController.navigationBar setBackgroundImage:socializeNavBarBackground];
}

- (void) viewDidAppear:(BOOL)animated {
    animated = YES;
    [self becomeFirstResponder];
    NSLog(@"IS first responder %i" , [self isFirstResponder]);
}

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake)
        [self Initiate];
}

- (void)Initiate {
    HUD = [[MBProgressHUD showHUDAddedTo:self.view animated:YES] retain];
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.pkazz.com/econ1/request.php"]
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:30];
    NSURLConnection *theConnection=[[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    
    if (theConnection) {
        // Create the NSMutableData to hold the received data.
        // receivedData is an instance variable declared elsewhere.
        receivedData = [[NSMutableData data] retain];
        
        
        
        NSLog(@"Downloading data");
        
    } else {
        [theConnection release]; 
        
        [self launchMessage];
        
    }
    
}

-(IBAction)dowComments{
        entityUrlString = @"http://www.pkazz.com/dow";
        
        // Allocate memory for the instance
        SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
        
        [self.navigationController pushViewController:commentsController animated:YES];
        
}


-(IBAction)nasComments {
    entityUrlString = @"http://www.pkazz.com/nas";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}
-(IBAction)spComments{
    entityUrlString = @"http://www.pkazz.com/sp";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}
-(IBAction)applComments{
    entityUrlString = @"http://www.pkazz.com/appl";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}
-(IBAction)currComments{
    entityUrlString = @"http://www.pkazz.com/curr";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}
-(IBAction)jobsComments{
    entityUrlString = @"http://www.pkazz.com/jobs";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}
-(IBAction)gasComments{
    entityUrlString = @"http://www.pkazz.com/gas";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}
-(IBAction)housingComments{
    entityUrlString = @"http://www.pkazz.com/housing";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}

-(IBAction)debtComments {
    entityUrlString = @"http://www.pkazz.com/debt";
    
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
}

-(IBAction)fetchComments{
        entityUrlString = [NSString stringWithFormat:@"http://www.pkazz.com/econ/"];
    // Allocate memory for the instance
    SocializeCommentsTableViewController* commentsController = [[[SocializeCommentsTableViewController alloc] initWithNibName:@"SocializeCommentsTableViewController" bundle:nil entryUrlString:entityUrlString] autorelease];
    
    [self.navigationController pushViewController:commentsController animated:YES];
    
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    // This method is called when the server has determined that it
    // has enough information to create the NSURLResponse.
    
    // It can be called multiple times, for example in the case of a
    // redirect, so each time we reset the data.
    
    // receivedData is an instance variable declared elsewhere.
    [receivedData setLength:0];
    expectedLength = [response expectedContentLength];
	currentLength = 0;
	HUD.mode = MBProgressHUDModeDeterminate;
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // Append the new data to receivedData.
    // receivedData is an instance variable declared elsewhere.
    [receivedData appendData:data];
    currentLength += [data length];
	HUD.progress = currentLength / (float)expectedLength;
    
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    [HUD hide:YES];
    // release the connection, and the data object
    
    [connection release];
    // receivedData is declared as a method instance elsewhere
    [receivedData release];
    
    // inform the user
    NSLog(@"Connection failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
    
    [self launchMessage];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    [HUD hide:YES];
    // do something with the data
    // receivedData is declared as a method instance elsewhere
    NSLog(@"Succeeded! Received %d bytes of data",[receivedData length]);
    
    // release the connection, and the data object
    [connection release];
    
    //added autorelease
    
    
    
    fullString = [[NSMutableString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding];
    [receivedData release];
    
    numbers = [[NSArray alloc] initWithArray:[fullString componentsSeparatedByString:@" , "]];
    [fullString release];
    
    //NSLog entire array for debug
    for (int i = 0; i < ([numbers count]); i++)
        NSLog(@"[numbers objectAtIndex:%d] = %@", i , [numbers objectAtIndex:i]);
    
    if ([numbers count] < 37) {
        [self launchMessage];
    } else {
        debtString = [numbers objectAtIndex:0];
        [self display];
    }
}

-(void)display {
    [self debtCalc];
    //assign values from array
    applePrice.text = [numbers objectAtIndex:1];
    applePercent.text = [numbers objectAtIndex:2];
    appleRange.text = [numbers objectAtIndex:3];
    dowPrice.text = [numbers objectAtIndex:4];
    dowPercent.text = [numbers objectAtIndex:5];
    dowRange.text = [numbers objectAtIndex:6];
    snpPrice.text = [numbers objectAtIndex:7];
    snpPercent.text = [numbers objectAtIndex:8];
    snpRange.text = [numbers objectAtIndex:9];
    nasdaqPrice.text = [numbers objectAtIndex:10];
    nasdaqPercent.text = [numbers objectAtIndex:11];
    nasdaqRange.text = [numbers objectAtIndex:12];
    oilPrice.text = [numbers objectAtIndex:13];
    oilPercent.text = [numbers objectAtIndex:14];
    euro.text = [numbers objectAtIndex:16];
    yen.text = [numbers objectAtIndex:19];
    gbp.text = [numbers objectAtIndex:22];
    franc.text = [numbers objectAtIndex:25];
    oilPump.text = [numbers objectAtIndex:28];
    unemployment.text = [numbers objectAtIndex:29];
    jobsGrowth.text = [numbers objectAtIndex:30];
    gdp.text = [numbers objectAtIndex:31];
    existingHomeSalesCurrent.text = [numbers objectAtIndex:32];
    existingHomeSalesLastYear.text = [numbers objectAtIndex:33];
    existingHomeSalesMonth.text = [numbers objectAtIndex:34];
    homeSalesNewCurrent.text = [numbers objectAtIndex:35];
    homeSalesNewLastYear.text = [numbers objectAtIndex:36];
    homeSalesMonthNew.text = [numbers objectAtIndex:37];
    jobsMonth.text = [numbers objectAtIndex:38];
    
    double a = [[numbers objectAtIndex:2] doubleValue];
    if (a > 0)
        applePercent.textColor = [UIColor greenColor];
    else if (a < 0)
        applePercent.textColor = [UIColor redColor];
    else if (a == 0)
        applePercent.textColor = [UIColor whiteColor];
    applePercent.layer.masksToBounds = NO;
    applePercent.glowColor = applePercent.textColor;
    applePercent.glowOffset = CGSizeMake(0.0, 0.0);
    if (a > 0)
        applePercent.glowAmount = (20);
    else if (a < 0)
        applePercent.glowAmount = (a * -10);
    else
        applePercent.glowAmount = (0);
    appleRange.glowColor = applePercent.glowColor;
    appleRange.glowOffset = applePercent.glowOffset;
    appleRange.glowAmount = applePercent.glowAmount;
    appleRange.textColor = applePercent.textColor;
    applePrice.glowColor = applePercent.glowColor;
    applePrice.glowOffset = applePercent.glowOffset;
    applePrice.glowAmount = applePercent.glowAmount;
    
    double b = [[numbers objectAtIndex:5] doubleValue];
    if (b > 0)
        dowPercent.textColor = [UIColor greenColor];
    else if (b < 0)
        dowPercent.textColor = [UIColor redColor];
    else if (b == 0)
        dowPercent.textColor = [UIColor whiteColor];
    dowPercent.layer.masksToBounds = NO;
    dowPercent.glowColor = dowPercent.textColor;
    dowPercent.glowOffset = CGSizeMake(0.0, 0.0);
    if (b > 0)
        dowPercent.glowAmount = (20);
    else if (b < 0)
        dowPercent.glowAmount = (b * -10);
    else
        dowPercent.glowAmount = (0);
    dowRange.glowColor = dowPercent.glowColor;
    dowRange.glowOffset = dowPercent.glowOffset;
    dowRange.glowAmount = dowPercent.glowAmount;
    dowRange.textColor = dowPercent.textColor;
    dowPrice.glowColor = dowPercent.glowColor;
    dowPrice.glowOffset = dowPercent.glowOffset;
    dowPrice.glowAmount = dowPercent.glowAmount;
    
    double c = [[numbers objectAtIndex:8] doubleValue];
    if (c > 0)
        snpPercent.textColor = [UIColor greenColor];
    else if (c < 0)
        snpPercent.textColor = [UIColor redColor];
    else if (c == 0)
        snpPercent.textColor = [UIColor whiteColor]; 
    snpPercent.layer.masksToBounds = NO;
    snpPercent.glowColor = snpPercent.textColor;
    snpPercent.glowOffset = CGSizeMake(0.0, 0.0);
    if (c > 0)
        snpPercent.glowAmount = (20);
    else if (c < 0)
        snpPercent.glowAmount = (c * -10);
    else
        snpPercent.glowAmount = (0);
    snpRange.glowColor = snpPercent.glowColor;
    snpRange.glowOffset = snpPercent.glowOffset;
    snpRange.glowAmount = snpPercent.glowAmount;
    snpRange.textColor = snpPercent.textColor;
    snpPrice.glowColor = snpPercent.glowColor;
    snpPrice.glowOffset = snpPercent.glowOffset;
    snpPrice.glowAmount = snpPercent.glowAmount;
    
    double d = [[numbers objectAtIndex:11] doubleValue];
    if (d > 0)
        nasdaqPercent.textColor = [UIColor greenColor];
    else if (d < 0)
        nasdaqPercent.textColor = [UIColor redColor];
    else if (d == 0)
        nasdaqPercent.textColor = [UIColor whiteColor];
    nasdaqPercent.layer.masksToBounds = NO;
    nasdaqPercent.glowColor = nasdaqPercent.textColor;
    nasdaqPercent.glowOffset = CGSizeMake(0.0, 0.0);
    if (d > 0)
        nasdaqPercent.glowAmount = (20);
    else if (d < 0)
        nasdaqPercent.glowAmount = (d * -10);
    else 
        nasdaqPercent.glowAmount = (0);
    nasdaqRange.glowColor = nasdaqPercent.glowColor;
    nasdaqRange.glowOffset = nasdaqPercent.glowOffset;
    nasdaqRange.glowAmount = nasdaqPercent.glowAmount;
    nasdaqRange.textColor = nasdaqPercent.textColor;
    nasdaqPrice.glowColor = nasdaqPercent.glowColor;
    nasdaqPrice.glowOffset = nasdaqPercent.glowOffset;
    nasdaqPrice.glowAmount = nasdaqPercent.glowAmount;
    
    double e = [[numbers objectAtIndex:14] doubleValue];
    if (e > 0)
        oilPercent.textColor = [UIColor greenColor];
    else if (e < 0)
        oilPercent.textColor = [UIColor redColor];
    else if (e == 0)
        oilPercent.textColor = [UIColor whiteColor];
    oilPercent.layer.masksToBounds = NO;
    oilPercent.glowColor = oilPercent.textColor;
    oilPercent.glowOffset = CGSizeMake(0.0, 0.0);
    if (e > 0)
        oilPercent.glowAmount = (20);
    else if (e < 0)
        oilPercent.glowAmount = (e * -10);
    else
        oilPercent.glowAmount = (0);
    
    double f = [[numbers objectAtIndex:30] doubleValue];
    if (f > 0)
        jobsGrowth.textColor = [UIColor greenColor];
    else if (f < 0)
        jobsGrowth.textColor = [UIColor redColor];
    else if (f == 0)
        jobsGrowth.textColor = [UIColor colorWithRed:0.99 green:1.00 blue:0.96 alpha:1.00];
    jobsGrowth.layer.masksToBounds = NO;
    jobsGrowth.glowColor = jobsGrowth.textColor;
    jobsGrowth.glowOffset = CGSizeMake(0.0, 0.0);
    if (f > 0)
        jobsGrowth.glowAmount = (20);
    else if (f < 0)
        jobsGrowth.glowAmount = (f * -10);
    else if (f == 0){
        jobsGrowth.glowAmount = 10;
        jobsGrowth.text = [NSString stringWithString:@"0 "];
    }
    [scroller flashScrollIndicators];
}

-(void) debtCalc {
    long long timeAdj = [debtString longLongValue];
    double dateSince = [[NSDate date] timeIntervalSinceReferenceDate];
    do {
        
        double secondsDay = dateSince - 86400;
        dateSince = secondsDay;
    } while (dateSince > 86400);
    double decimalTOD = dateSince / 86400;
    long long toBeAdded = decimalTOD * 3850000000;
    long long adjustedDebt = timeAdj + toBeAdded;
    NSLog(@"Time adj debt: %lli", adjustedDebt);
    debtString = [NSString stringWithFormat:@"%lli", adjustedDebt];
    form = [[NSNumberFormatter alloc] init];
    [form setNumberStyle:NSNumberFormatterDecimalStyle];    
    myNumber = [form numberFromString:debtString];
    
    [form setNumberStyle:NSNumberFormatterCurrencyStyle];
    [form setMaximumFractionDigits:0];
    formattedNumberString = [[NSMutableString alloc]initWithString:[form stringFromNumber:myNumber]];
    
    
    
    [form release];
    
    debtLabel.text = formattedNumberString;
    debtLabel.textColor = [UIColor colorWithRed:0.99 green:1.00 blue:0.96 alpha:1.00];
    debtLabel.glowColor = debtLabel.textColor;
    debtLabel.glowOffset = CGSizeMake(0.0, 0.0);
    debtLabel.glowAmount = 30;
    NSLog(@"%@", formattedNumberString);
    
}

- (void) viewWillAppear:(BOOL)animated {
    
    animated = YES;
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
}

- (void) viewWillDisappear:(BOOL)animated {
    animated = YES;
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

-(IBAction)launchMessage 
{  
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Connection Error"  
                                                      message:@"There was a problem with the connection. This could be anything, but make sure you're connected to the internet and have decent coverage. Otherwise, it might be something with our servers. Hold tight while we figure it out."  
                                                     delegate:self  
                                            cancelButtonTitle:nil  
                                            otherButtonTitles:@"OK", nil];  
    
    [message show];  
    
    [message release];  
}   




/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
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
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
