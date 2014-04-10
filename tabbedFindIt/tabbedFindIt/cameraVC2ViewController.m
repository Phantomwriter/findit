//
//  cameraVC2ViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/9/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "cameraVC2ViewController.h"


@interface cameraVC2ViewController ()

@end

@implementation cameraVC2ViewController
@synthesize snapItMainEventViewImages;



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


int snapItEntryImageIndex = 3;

-(IBAction)snapItReviewScreenSwipe:(UIGestureRecognizer*)sender

{

    
    NSArray *snapEventImages =[[NSArray alloc] initWithObjects:
                          
                          @"mistyTrail.png",
                          @"moonView.png",
                          @"rainbowSky.png",
                          @"riverView.png", nil];
    UISwipeGestureRecognizerDirection direction =
    [(UISwipeGestureRecognizer *) sender direction];
    
    switch (direction)
    {
        case UISwipeGestureRecognizerDirectionLeft:
            snapItEntryImageIndex ++;
            break;
        case UISwipeGestureRecognizerDirectionRight:
            snapItEntryImageIndex --;
            break;
            
        default:
            break;
    }
    snapItEntryImageIndex = (snapItEntryImageIndex < 0) ? ([snapEventImages count] -1):
    snapItEntryImageIndex % [snapEventImages count];
    snapItMainEventViewImages.image = [UIImage imageNamed:[snapEventImages objectAtIndex:snapItEntryImageIndex]];

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


- (IBAction)shareSnapItEntry:(UIButton *)sender
{
    
}

- (IBAction)snapItFindItIcon:(UIButton *)sender
{
    
}

- (IBAction)deleteSnapItEntry:(UIButton *)sender
{
    
}


- (IBAction)addSnapItEntry:(UIButton *)sender
{
    
}

//Transitioning segues for the table cell view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    //
    cameraVC2ViewController *CameraVC2ViewController= segue.destinationViewController;
    
    if (CameraVC2ViewController != nil)
        //need to set up properties in .h now that we have the secondView established and identified
    {
        
        
    }
    
    
    
    
}









//UIAlertViewStyleLoginAndPasswordInput







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
