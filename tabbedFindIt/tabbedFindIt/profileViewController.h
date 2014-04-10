//
//  profileViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/8/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

//This is the PROFILE SCREEN VC

#import <UIKit/UIKit.h>

@interface profileViewController : UIViewController

{
    
}

//Find it and share
@property(nonatomic, strong) IBOutlet UIButton *profileFindItActionButton;
@property(nonatomic, strong) IBOutlet UIButton *profileShareButton;


//labels are buttins for prototype
@property(nonatomic, strong) IBOutlet UIButton *profileTrackLabelButton;
@property(nonatomic, strong) IBOutlet UIButton *profileSnapitLabelButton;
@property(nonatomic, strong) IBOutlet UIButton *profileGroupLabelButton;


//Simulated segmented control buttons
@property(nonatomic, strong) IBOutlet UIButton *all;
@property(nonatomic, strong) IBOutlet UIButton *snaps;
@property(nonatomic, strong) IBOutlet UIButton *tracks;
@property(nonatomic, strong) IBOutlet UIButton *shares;


@end
