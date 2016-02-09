//
//  HomeViewController.h
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UpdateViewController.h"
#import "WorkoutViewController.h"
@interface HomeViewController : UIViewController
{
    UIImageView *fanImageView,*currentWeighImageView,*goalWeighImageView,*coundownImageView1,*countdownImageView2,*countdownImageView3;
    UILabel *nameLabel,*currentLabel,*goalLabel,*diffLabel,*nextLabel,*dateLabel,*dayLabel,*hourLabel,*minLabel,*timeLabel;
    UIButton *updateButton,*workoutButton;
    UpdateViewController *updateViewController;
    WorkoutViewController *workViewController;

}
@property(nonatomic,retain) UIImageView *fanImageView,*currentWeighImageView,*goalWeighImageView,*coundownImageView1,*countdownImageView2,*countdownImageView3;
@property(nonatomic,retain)UILabel *nameLabel,*currentLabel,*goalLabel,*diffLabel,*nextLabel,*dateLabel,*dayLabel,*hourLabel,*minLabel,*timeLabel;
@property(nonatomic,retain)UIButton *updateButton,*workoutButton;
@property(nonatomic,retain)    UpdateViewController *updateViewController;

@property(nonatomic,retain)    WorkoutViewController *workViewController;

-(void)goToUpdate;
-(void)goToWorkout;
@end
