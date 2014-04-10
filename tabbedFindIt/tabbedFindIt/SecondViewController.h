//
//  SecondViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/7/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

//This is the TRACKIT SCREEN VC

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

{
    bool running;
    NSTimeInterval startTime;
    
    
}

//TRACKIT page images
@property (weak, nonatomic) IBOutlet UILabel *timeInfoLabel;

//TRACKIT page buttons
@property(strong, nonatomic)IBOutlet UIButton *doneTracking;
@property (strong, nonatomic) IBOutlet UIButton* groups;



//TRACKIT page labels
@property(strong, nonatomic)IBOutlet UILabel *timeLabel;
@property(strong, nonatomic)IBOutlet UILabel *DistanceLabel;

//TRACKIT page labels that will display info
@property(strong, nonatomic)IBOutlet UILabel *distanceReadoutLabel;
@property(strong, nonatomic)IBOutlet UILabel *readyNotReadyTextLabel;







- (IBAction)startTracking:(UIButton *)sender;
-(IBAction)onClick:(UIStoryboardSegue*)segue;





//TRACKIT page barButtonItem--refresh. Enabled through interface builder
@property(strong, nonatomic)IBOutlet UIBarButtonItem *refresh;

//TRACKIT page options. Track & Groups
@property(strong, nonatomic)IBOutlet UIButton *trackScreenButton;
@property(strong, nonatomic)IBOutlet UIButton *groupScreenButton;

@end
