//
//  FirstViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

//This is the HOME SCREEN VC

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController


@property(strong, nonatomic)IBOutlet UIImage *home;
@property(strong, nonatomic)IBOutlet UIButton *settings;
@property(strong, nonatomic)IBOutlet UIButton *refresh;
@property(strong, nonatomic)IBOutlet UIButton *findItActionButton;
@property(strong, nonatomic) IBOutlet UIButton *share;
@property (strong, nonatomic) IBOutlet UIImageView *homeMainViewImages;

-(IBAction)homeSwipe:(UIGestureRecognizer*)sender;
-(IBAction)settings:(UIButton*)sender;
-(IBAction)refresh:(UIButton*)sender;
-(IBAction)share:(UIButton*)sender;



@end
