//
//  profileViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/8/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

//This is the PROFILE SCREEN V//This is the PROFILE SCREEN VC

#import "profileViewController.h"
#import "profileVC2ViewController.h"

@interface profileViewController ()

@end

@implementation profileViewController

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



-(IBAction)profileShareButton:(UIButton*)sender
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
