//
//  UpdateViewController.m
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import "UpdateViewController.h"

@interface UpdateViewController ()

@end

@implementation UpdateViewController
@synthesize fanImageView;
@synthesize weighPickerView;
@synthesize weighArray;
@synthesize currentButton,goalButton;
@synthesize currentTextField,goalTextField;
@synthesize currentLabel,goalLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    weighArray=[[NSArray alloc] initWithObjects:@"Strawweight 0-115",@"Flyweight 116-125",@"Bantamweight 126-135",@"Featherweight 136-145",@" Lightweight 146-155",@"Welterweight 156-170",@"Middleweight 156-170",@"LightHeavyweight 186-205",@"Heavyweight 206-265",@"Super Heavyweight 265-600",nil];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    
    [[UIImage imageNamed:@"bg1.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    fanImageView=[[UIImageView alloc] initWithFrame:CGRectMake(45, 65, 255, 55)];
    
    UIImage *imageFan = [UIImage imageNamed: @"fanweighinlogo.png"];
    
    [fanImageView setImage:imageFan];
    [self.view addSubview:fanImageView];
    
    currentLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,135,300,32)];
    currentLabel.backgroundColor = [UIColor clearColor];
    currentLabel.text=@"Update Current Weight";
    currentLabel.textColor=[UIColor whiteColor];
    [currentLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:26]];
    
    [self.view addSubview:currentLabel];
    
    currentTextField=[[UITextField alloc] initWithFrame:CGRectMake(50,197,270,30)];
    currentTextField.borderStyle = UITextBorderStyleRoundedRect;
    currentTextField.backgroundColor=[UIColor whiteColor];
    
    [self.view addSubview:currentTextField];
    
    currentButton = [UIButton buttonWithType:UIButtonTypeCustom];
  //  [currentButton addTarget:self action:@selector(goToHome)forControlEvents:UIControlEventTouchUpInside];
    currentButton.frame = CGRectMake(100,247,155,40);
    
    [currentButton setBackgroundImage: [UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [currentButton setTitle:@"Update" forState:UIControlStateNormal];
    [currentButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    currentButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:22];
    
    [self.view addSubview:currentButton];
    
    goalLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,337,270,32)];
    goalLabel.backgroundColor = [UIColor clearColor];
    goalLabel.text=@"Update Goal Weight";
    goalLabel.textColor=[UIColor whiteColor];
    [goalLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:26]];
    
    [self.view addSubview:goalLabel];
    
    goalTextField=[[UITextField alloc] initWithFrame:CGRectMake(50,389,270,30)];
    goalTextField.borderStyle = UITextBorderStyleRoundedRect;
    goalTextField.backgroundColor=[UIColor whiteColor];
    goalTextField.tag=1;
    goalTextField.placeholder=@"Select Weigh Class";
    goalTextField.delegate=self;
    [self.view addSubview:goalTextField];
    
    goalButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //  [goalButton addTarget:self action:@selector(goToHome)forControlEvents:UIControlEventTouchUpInside];
    goalButton.frame = CGRectMake(100,439,155,40);
    
    [goalButton setBackgroundImage: [UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [goalButton setTitle:@"Update" forState:UIControlStateNormal];
    [goalButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    goalButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:22];
    
    [self.view addSubview:goalButton];

    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField.tag == 1) {
        [self showPicker];
        
    }
}

-(void)showPicker{
    
    
    weighPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(30, 300, 300, 300)];
    weighPickerView.showsSelectionIndicator = YES;
    weighPickerView.hidden = NO;
    [weighPickerView setBackgroundColor:[UIColor blueColor]];
    
    weighPickerView.delegate = self;
    [self.view addSubview:weighPickerView];
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    return 1;
}
//Rows in each Column

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component; {
    return [weighArray count];
}


-(NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [weighArray objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
{
    goalTextField.text=[NSString stringWithFormat:@"%@",[weighArray objectAtIndex:row]];
    [pickerView removeFromSuperview];
    
    
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
