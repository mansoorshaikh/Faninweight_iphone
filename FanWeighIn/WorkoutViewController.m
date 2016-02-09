//
//  WorkoutViewController.m
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import "WorkoutViewController.h"

@interface WorkoutViewController ()

@end

@implementation WorkoutViewController
@synthesize fanImageView;
@synthesize workoutLabel;
@synthesize descriptionView;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    
    [[UIImage imageNamed:@"bg1.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    fanImageView=[[UIImageView alloc] initWithFrame:CGRectMake(45, 60, 255, 55)];
    
    UIImage *imageFan = [UIImage imageNamed: @"fanweighinlogo.png"];
    
    [fanImageView setImage:imageFan];
    [self.view addSubview:fanImageView];
    
    workoutLabel = [[UILabel alloc] initWithFrame:CGRectMake(33,135,220,36)];
    workoutLabel.backgroundColor = [UIColor clearColor];
    workoutLabel.text=@"Today's Workout";
    workoutLabel.textColor=[UIColor whiteColor];
    [workoutLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:24]];
    
    [self.view addSubview:workoutLabel];
    
   descriptionView = [[UITextView alloc] initWithFrame:CGRectMake(35, 185, 300, 350)];
    descriptionView.text = @"Today's workout description will be here in the textbox and will be updated daily with a schedule release time daily for 4am.";
    descriptionView.userInteractionEnabled=NO;
    descriptionView.layer.borderColor=[[UIColor grayColor]CGColor];
    descriptionView.layer.borderWidth=2.0;
    descriptionView.layer.cornerRadius=8;

    [descriptionView setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
    descriptionView.backgroundColor=[UIColor grayColor];
    [self.view addSubview:descriptionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
