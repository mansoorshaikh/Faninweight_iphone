//
//  WorkoutViewController.h
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkoutViewController : UIViewController
{
    UIImageView *fanImageView;
    UILabel *workoutLabel;
    UITextView *descriptionView;

}
@property(nonatomic,retain)UIImageView *fanImageView;
@property(nonatomic,retain)UILabel *workoutLabel;
@property(nonatomic,retain)UITextView *descriptionView;

@end
