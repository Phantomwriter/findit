//
//  cameraVC2ViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/9/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cameraVC2ViewController : UIViewController


//Top
@property(strong, nonatomic) IBOutlet UIButton *saveSnapItEntry;
@property(strong, nonatomic) IBOutlet UIButton *trash;

//bottom
@property(strong, nonatomic)IBOutlet UIButton *findItActionButton;
@property(strong, nonatomic) IBOutlet UIButton *share;



//Image on snap it event review screen
@property (strong, nonatomic) IBOutlet UIImageView *snapItMainEventViewImages;


-(IBAction)snapItReviewScreenSwipe:(UIGestureRecognizer*)sender;
-(IBAction)onClick:(UIStoryboardSegue*)segue;



- (IBAction)shareSnapItEntry:(UIButton *)sender;
- (IBAction)snapItFindItIcon:(UIButton *)sender;
- (IBAction)deleteSnapItEntry:(UIButton *)sender;
- (IBAction)addSnapItEntry:(UIButton *)sender;


@end
