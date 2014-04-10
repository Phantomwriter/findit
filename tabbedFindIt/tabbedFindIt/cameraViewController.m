//
//  cameraViewController.m
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/8/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//


//This is the CAMERA SCREEN VC

#import "cameraViewController.h"
#import "camera2ViewController.h"
@interface cameraViewController ()

@end

@implementation cameraViewController
@synthesize cameraMainView;




 int imageIndex = 3;
- (IBAction)cameraSwipe:(UIGestureRecognizer*)sender
{

   
    NSArray *cameraImages =[[NSArray alloc] initWithObjects:
                            
                            @"mistyTrail.png",
                            @"moonView.png",
                            @"rainbowSky.png",
                            @"riverView.png", nil];
    UISwipeGestureRecognizerDirection direction =
    [(UISwipeGestureRecognizer *) sender direction];
    
    switch (direction)
    {
        case UISwipeGestureRecognizerDirectionLeft:
            imageIndex ++;
            break;
        case UISwipeGestureRecognizerDirectionRight:
            imageIndex --;
            break;
            
        default:
            break;
    }
    imageIndex = (imageIndex < 0) ? ([cameraImages count] -1):
    imageIndex % [cameraImages count];
    cameraMainView.image = [UIImage imageNamed:[cameraImages objectAtIndex:imageIndex]];



}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    cameraViewController *CameraViewController = segue.destinationViewController;
     if (CameraViewController != nil)
     {
     
     }
    
}



@end
