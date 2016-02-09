//
//  HomeViewController.m
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import "HomeViewController.h"
#import "UpdateViewController.h"
#import "WorkoutViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize fanImageView,currentWeighImageView,goalWeighImageView,coundownImageView1,countdownImageView2,countdownImageView3;
@synthesize nameLabel,currentLabel,goalLabel,nextLabel,diffLabel,timeLabel,hourLabel,dateLabel,dayLabel,minLabel;
@synthesize updateButton,workoutButton;
@synthesize updateViewController,workViewController;
- (void)viewDidLoad {
    [super viewDidLoad];
    UIGraphicsBeginImageContext(self.view.frame.size);
    
    [[UIImage imageNamed:@"bg1.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    fanImageView=[[UIImageView alloc] initWithFrame:CGRectMake(45, 10, 255,40)];
    
    UIImage *imageFan = [UIImage imageNamed: @"fanweighinlogo.png"];
    
    [fanImageView setImage:imageFan];
    [self.view addSubview:fanImageView];
    
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(8,60,152,21)];
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.text=@"What's Up Ben!";
    nameLabel.textColor=[UIColor whiteColor];
    [nameLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:20]];
    
    [self.view addSubview:nameLabel];
    
    UIImage *imageCount1 = [UIImage imageNamed: @"weightclassbg.png"];
    currentWeighImageView=[[UIImageView alloc] initWithFrame:CGRectMake(8,86,180,135)];

    [currentWeighImageView setImage:imageCount1];
    [self.view addSubview:currentWeighImageView];

    
    goalWeighImageView=[[UIImageView alloc] initWithFrame:CGRectMake(190, 86, 180, 135)];
    [goalWeighImageView setImage:imageCount1];

    [self.view addSubview:goalWeighImageView];
    
    currentLabel = [[UILabel alloc] initWithFrame:CGRectMake(28,95,150,85)];
    currentLabel.backgroundColor = [UIColor clearColor];
    
    currentLabel.text =@"Current Weigh Class 169lbs WelterWeigh Class";
    currentLabel.lineBreakMode = NSLineBreakByWordWrapping;

    [currentLabel setNumberOfLines:4];
    currentLabel.textColor=[UIColor whiteColor];
    [currentLabel setFont:[UIFont fontWithName:@"Arial" size:16]];
    
    [self.view addSubview:currentLabel];
    
    goalLabel = [[UILabel alloc] initWithFrame:CGRectMake(208,95,150,85)];
    goalLabel.backgroundColor = [UIColor clearColor];
   goalLabel.text=@"Goal Weigh Class 155lbs LightWeigh Class";
    goalLabel.textColor=[UIColor whiteColor];
    [goalLabel setFont:[UIFont fontWithName:@"Arial" size:16]];
    goalLabel.lineBreakMode = NSLineBreakByWordWrapping;

    [goalLabel setNumberOfLines:4];

    [self.view addSubview:goalLabel];
    
    diffLabel = [[UILabel alloc] initWithFrame:CGRectMake(33,226,287,25)];
    diffLabel.backgroundColor = [UIColor clearColor];
    diffLabel.text=@"To Make Weigh -:14lbs";
    diffLabel.textColor=[UIColor whiteColor];
    [diffLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:20]];
    
    [self.view addSubview:diffLabel];
    
    nextLabel = [[UILabel alloc] initWithFrame:CGRectMake(33,256,236,28)];
    nextLabel.backgroundColor = [UIColor clearColor];
    nextLabel.text=@"Next Weigh In";
    nextLabel.textColor=[UIColor whiteColor];
    [nextLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
    
    [self.view addSubview:nextLabel];
    
    dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(33,289,250,21)];
    dateLabel.backgroundColor = [UIColor clearColor];
    dateLabel.text=@"UFC 191- September 5th 2015";
    dateLabel.textColor=[UIColor whiteColor];
    [dateLabel setFont:[UIFont fontWithName:@"Arial" size:18]];
    
    [self.view addSubview:dateLabel];



    UIImage *imagecount2 = [UIImage imageNamed: @"countdownbg.png"];
    coundownImageView1=[[UIImageView alloc] initWithFrame:CGRectMake(8,315,95,60)];

    [coundownImageView1 setImage:imagecount2];
    [self.view addSubview:coundownImageView1];
    
    countdownImageView2=[[UIImageView alloc] initWithFrame:CGRectMake(114,315,95,60)];

    [countdownImageView2 setImage:imagecount2];
    [self.view addSubview:countdownImageView2];
    
    
    countdownImageView3=[[UIImageView alloc] initWithFrame:CGRectMake(219,315,95,60)];
    
    [countdownImageView3 setImage:imagecount2];
    [self.view addSubview:countdownImageView3];
    

    dayLabel = [[UILabel alloc] initWithFrame:CGRectMake(48,328,40,25)];
    dayLabel.backgroundColor = [UIColor clearColor];
    dayLabel.text=@"20";
    dayLabel.textColor=[UIColor whiteColor];
    [dayLabel setFont:[UIFont fontWithName:@"Arial" size:18]];
    
    [self.view addSubview:dayLabel];
    
    hourLabel = [[UILabel alloc] initWithFrame:CGRectMake(154,328,40,25)];
    hourLabel.backgroundColor = [UIColor clearColor];
    hourLabel.text=@"13";
    hourLabel.textColor=[UIColor whiteColor];
    [hourLabel setFont:[UIFont fontWithName:@"Arial" size:18]];
    [self.view addSubview:hourLabel];
    
    minLabel = [[UILabel alloc] initWithFrame:CGRectMake(259,328,40,25)];
    minLabel.backgroundColor = [UIColor clearColor];
    minLabel.text=@"30";
    minLabel.textColor=[UIColor whiteColor];
    [minLabel setFont:[UIFont fontWithName:@"Arial" size:18]];
    
    [self.view addSubview:minLabel];
    
    
    timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(25,380,281,25)];
    timeLabel.backgroundColor = [UIColor clearColor];
    timeLabel.text=@"Days     Hours     Mintues";
    timeLabel.textColor=[UIColor whiteColor];
    [timeLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:20]];
    
    [self.view addSubview:timeLabel];
    
    updateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [updateButton addTarget:self action:@selector(goToUpdate)forControlEvents:UIControlEventTouchUpInside];
    updateButton.frame = CGRectMake(33,410,120,30);
    
    [updateButton setBackgroundImage: [UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [updateButton setTitle:@"Update" forState:UIControlStateNormal];
    [updateButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    updateButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:22];
    
    [self.view addSubview:updateButton];

    
    workoutButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [workoutButton addTarget:self action:@selector(goToWorkout)forControlEvents:UIControlEventTouchUpInside];
    workoutButton.frame = CGRectMake(185,410,120,30);
    
    [workoutButton setBackgroundImage: [UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [workoutButton setTitle:@"Workout" forState:UIControlStateNormal];
    [workoutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    workoutButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:22];
    
    [self.view addSubview:workoutButton];

    
    
}

-(void)goToUpdate{
    updateViewController =[[UpdateViewController alloc]initWithNibName:@"UpdateViewController" bundle:nil];
    [self.navigationController pushViewController:updateViewController animated:YES];

}
-(void)goToWorkout{
    workViewController =[[WorkoutViewController alloc]initWithNibName:@"WorkoutViewController" bundle:nil];
    [self.navigationController pushViewController:workViewController animated:YES];
    
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
