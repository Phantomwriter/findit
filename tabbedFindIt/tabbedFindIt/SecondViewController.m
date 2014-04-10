//
//  SecondViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

//This is the TRACKIT SCREEN VC

#import "SecondViewController.h"
#import "thirdTrackItViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _timeInfoLabel.text =@"0:00.0";
    running = false;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startTracking:(UIButton *)sender

{
    
    if (running == false)
    {
    
        running = true;
        startTime = [NSDate timeIntervalSinceReferenceDate];
        [sender setTitle:@"STOP" forState:UIControlStateNormal];
        [self updateTime];
    }
    else
    
    {
        
        [sender setTitle:@"START" forState:UIControlStateNormal];
        running = false;

    
        
        
        }
    
    
    }

-(void)updateTime
{
    if (running == false) return;
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsed = currentTime - startTime;
    
    int mins = (int) (elapsed / 60.0);
    elapsed -= mins * 60;
    int secs = (int) (elapsed);
    elapsed -= secs;
    int fraction = elapsed * 10.0;
    
    
    _timeInfoLabel.text = [NSString stringWithFormat:@"%u:%02u.%u", mins,secs, fraction];
    
    [self performSelector:@selector(updateTime) withObject:self afterDelay:0.1];
    
    
    
    
}
    

-(IBAction)onClick:(UIStoryboardSegue*)segue
{


}

    
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    //
    thirdTrackItViewController *ThirdTrackItViewController= segue.destinationViewController;
    
    if (ThirdTrackItViewController != nil)
        //need to set up properties in .h now that we have the secondView established and identified
    {
        
        
    }
    
        
    
}


    
    

@end
