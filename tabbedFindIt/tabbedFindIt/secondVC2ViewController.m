//
//  secondVC2ViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/9/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "secondVC2ViewController.h"

@interface secondVC2ViewController ()

@end

@implementation secondVC2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)deleteTrackEvent:(id)sender {
}

- (IBAction)enterNewTrackEventButton:(id)sender {
}

-(IBAction)onClick:(UIStoryboardSegue*)segue
{
    
    
}


//Transitioning segues for the table cell view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    //
    secondVC2ViewController *secondVC2ViewController= segue.destinationViewController;
    
    if (secondVC2ViewController != nil)
        //need to set up properties in .h now that we have the secondView established and identified
    {
        
        
    }
    
    
    
    
    
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
