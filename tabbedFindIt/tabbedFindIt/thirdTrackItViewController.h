//
//  thirdTrackItViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/10/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdTrackItViewController : UIViewController
@property(strong, nonatomic) IBOutlet UIButton *back;

-(IBAction)onClick:(UIStoryboardSegue*)segue;

@end
