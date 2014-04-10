//
//  FirstViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//



//This is the HOME SCREEN VC

#import "FirstViewController.h"
#import "firstVC2ViewController.h"
#import "homeShareViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize homeMainViewImages;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



int homeImageIndex = 3;
- (IBAction)homeSwipe:(UIGestureRecognizer*)sender
{
    
    
    NSArray *homeImages =[[NSArray alloc] initWithObjects:
                            
                            @"mistyTrail.png",
                            @"moonView.png",
                            @"rainbowSky.png",
                            @"riverView.png", nil];
    UISwipeGestureRecognizerDirection direction =
    [(UISwipeGestureRecognizer *) sender direction];
    
    switch (direction)
    {
        case UISwipeGestureRecognizerDirectionLeft:
            homeImageIndex ++;
            break;
        case UISwipeGestureRecognizerDirectionRight:
            homeImageIndex --;
            break;
            
        default:
            break;
    }
    homeImageIndex = (homeImageIndex < 0) ? ([homeImages count] -1):
    homeImageIndex % [homeImages count];
    homeMainViewImages.image = [UIImage imageNamed:[homeImages objectAtIndex:homeImageIndex]];
    
    
    
}



-(IBAction)share:(UIButton*)sender
{

     if (sender != nil)
        
            {
    
                if (sender.tag == 0)
                {
        
                    UIAlertView *shareContact = [[UIAlertView alloc] initWithTitle:@"Ready to share!" message:@"Who do you want to share this snap with?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
                    shareContact.alertViewStyle = UIAlertViewStylePlainTextInput;
                    shareContact.alertViewStyle = UIAlertViewStylePlainTextInput;
                    shareContact.tag = 12;
                    
                    [shareContact addButtonWithTitle:@"Go"];
                    [shareContact show];
                    [self dismissViewControllerAnimated:YES completion:nil];

                    
                    
                }
                
                           }



    


}


- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (alertView.tag == 12) {
        if (buttonIndex == 1) {
            UITextField *textfield = [alertView textFieldAtIndex:0];
            NSLog(@"Contact Name: %@", textfield.text);
        }
        
        
    }
}



-(IBAction)onClick:(UIStoryboardSegue*)segue
{
    
    
}


//Transitioning segues for the table cell view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    //
    firstVC2ViewController *FirstVC2ViewController= segue.destinationViewController;
    
    if (FirstVC2ViewController != nil)
        //need to set up properties in .h now that we have the secondView established and identified
    {
        
        
    }
    
    
    
    
}




-(IBAction)settings:(id)sender
{




}



-(IBAction)refresh:(id)sender
{




}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
