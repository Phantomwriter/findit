//
//  secondVC2ViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/9/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondVC2ViewController : UIViewController <UITextFieldDelegate>
{
 //IBOutlet UITextField *newTrackName;
 //IBOutlet UITextView *newTrackDescription;

}
//@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *newTrackEventTitle;
//@property (strong, nonatomic) IBOutletCollection(UITextView) NSArray *newTrackEventDescription;
- (IBAction)deleteTrackEvent:(id)sender;

- (IBAction)enterNewTrackEventButton:(id)sender;
-(IBAction)onClick:(UIStoryboardSegue*)segue;




@end
