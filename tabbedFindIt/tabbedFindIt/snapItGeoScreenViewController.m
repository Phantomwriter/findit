//
//  snapItGeoScreenViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/10/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "snapItGeoScreenViewController.h"
#import "camera2ViewController.h"
@interface snapItGeoScreenViewController ()

@end

@implementation snapItGeoScreenViewController

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




-(IBAction)onClick:(UIStoryboardSegue*)segue
{

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    //
    snapItGeoScreenViewController *SnapItGeoScreenViewController= segue.destinationViewController;
    
    if (SnapItGeoScreenViewController != nil)
        //need to set up properties in .h now that we have the secondView established and identified
    {
        
        
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
