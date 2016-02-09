//
//  RegisterViewController.m
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import "RegisterViewController.h"
#import "HomeViewController.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize registerLabel,nameLabel,dateLabel,genderLabel,emailLabel,currentLabel,goalLabel;
@synthesize nameTextField,dateTextField,genderTextField,emailTextField,currentTextField,goalTextField;
@synthesize registerButton;
@synthesize fanImageView;
@synthesize weighPickerView,genderPicker;
@synthesize weighArray,genderArray;
@synthesize homeViewController;
@synthesize datePicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    weighArray=[[NSArray alloc] initWithObjects:@"Strawweight 0-115",@"Flyweight 116-125",@"Bantamweight 126-135",@"Featherweight 136-145",@" Lightweight 146-155",@"Welterweight 156-170",@"Middleweight 156-170",@"LightHeavyweight 186-205",@"Heavyweight 206-265",@"Super Heavyweight 265-600",nil];
    genderArray=[[NSArray alloc]initWithObjects:@"Male",@"Female",nil];
    UIGraphicsBeginImageContext(self.view.frame.size);

    [[UIImage imageNamed:@"bg1.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    fanImageView=[[UIImageView alloc] initWithFrame:CGRectMake(45, 10, 255,40)];
    
    UIImage *imageFan = [UIImage imageNamed: @"fanweighinlogo.png"];
    
    [fanImageView setImage:imageFan];
    [self.view addSubview:fanImageView];

        registerLabel = [[UILabel alloc] initWithFrame:CGRectMake(120,55,125,25)];
    registerLabel.backgroundColor = [UIColor clearColor];
    registerLabel.text=@"Register";
    registerLabel.textColor=[UIColor whiteColor];
    [registerLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:22]];
    
    [self.view addSubview:registerLabel];
    
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(37,85,68,21)];
    nameLabel.backgroundColor = [UIColor clearColor];
    nameLabel.text=@"Name";
    [nameLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:18]];
    nameLabel.textColor=[UIColor whiteColor];

    [self.view addSubview:nameLabel];

    
    nameTextField=[[UITextField alloc] initWithFrame:CGRectMake(33,111,290,25)];
    nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    nameTextField.backgroundColor=[UIColor whiteColor];
    nameTextField.tag=1;
    nameTextField.delegate=self;

    [self.view addSubview:nameTextField];

    dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(37,141,144,21)];
    dateLabel.backgroundColor = [UIColor clearColor];
    dateLabel.text=@"Date Of Birth";
    [dateLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:18]];
    dateLabel.textColor=[UIColor whiteColor];

    [self.view addSubview:dateLabel];
    
    dateTextField=[[UITextField alloc] initWithFrame:CGRectMake(33,167,290,25)];
    dateTextField.borderStyle = UITextBorderStyleRoundedRect;
    dateTextField.backgroundColor=[UIColor whiteColor];
    dateTextField.tag=2;
    dateTextField.delegate=self;

    [self.view addSubview:dateTextField];
    
    genderLabel = [[UILabel alloc] initWithFrame:CGRectMake(37,197,93,21)];
    genderLabel.backgroundColor = [UIColor clearColor];
    genderLabel.text=@"Gender";
    [genderLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:18]];
    genderLabel.textColor=[UIColor whiteColor];

    [self.view addSubview:genderLabel];

    genderTextField=[[UITextField alloc] initWithFrame:CGRectMake(33,223,290,25)];
    genderTextField.borderStyle = UITextBorderStyleRoundedRect;
    genderTextField.backgroundColor=[UIColor whiteColor];
    genderTextField.tag=3;
    genderTextField.delegate=self;

    [self.view addSubview:genderTextField];
    
    emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(37,253,156,21)];
    emailLabel.backgroundColor = [UIColor clearColor];
    emailLabel.text=@"Email Address";
    [emailLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:18]];
    emailLabel.textColor=[UIColor whiteColor];
    
    [self.view addSubview:emailLabel];

    emailTextField=[[UITextField alloc] initWithFrame:CGRectMake(33,279,290,25)];
    emailTextField.borderStyle = UITextBorderStyleRoundedRect;
    emailTextField.backgroundColor=[UIColor whiteColor];
    emailTextField.tag=4;
    emailTextField.delegate=self;

    [self.view addSubview:emailTextField];
    
    currentLabel = [[UILabel alloc] initWithFrame:CGRectMake(37,309,156,21)];
    currentLabel.backgroundColor = [UIColor clearColor];
    currentLabel.text=@"Current Weigh";
    [currentLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:18]];
    currentLabel.textColor=[UIColor whiteColor];
    
    [self.view addSubview:currentLabel];
    
    currentTextField=[[UITextField alloc] initWithFrame:CGRectMake(33,335,290,25)];
    currentTextField.borderStyle = UITextBorderStyleRoundedRect;
    currentTextField.backgroundColor=[UIColor whiteColor];
    currentTextField.tag=5;
    currentTextField.delegate=self;

    [self.view addSubview:currentTextField];

    goalLabel = [[UILabel alloc] initWithFrame:CGRectMake(37,365,156,21)];
    goalLabel.backgroundColor = [UIColor clearColor];
    goalLabel.text=@"Goal Weigh";
    [goalLabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:18]];
    goalLabel.textColor=[UIColor whiteColor];
    
    [self.view addSubview:goalLabel];
    
    goalTextField=[[UITextField alloc] initWithFrame:CGRectMake(33,391,290,25)];
    goalTextField.borderStyle = UITextBorderStyleRoundedRect;
    goalTextField.backgroundColor=[UIColor whiteColor];
    goalTextField.tag=6;
    goalTextField.delegate=self;
    [self.view addSubview:goalTextField];
    
    registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [registerButton addTarget:self action:@selector(goToHome)forControlEvents:UIControlEventTouchUpInside];
    registerButton.frame = CGRectMake(120,431,155,30);
    
    [registerButton setBackgroundImage: [UIImage imageNamed:@"btnbg.png"] forState:UIControlStateNormal];
    [registerButton setTitle:@"Register" forState:UIControlStateNormal];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];

    [self.view addSubview:registerButton];


}
-(void)goToHome{
   homeViewController =[[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    [self.navigationController pushViewController:homeViewController animated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    if (textField.tag == 6) {
        [self showPicker];
        
    }
    else if (textField.tag==3){
        [self showGender];
        
    }
    else if(textField.tag==2){
        [self showDate];
    }
    else{
        NSLog(@"Other Textfield");
    }
}
- (BOOL)textFieldShouldReturn:(UITextField*)aTextField
{
    [aTextField resignFirstResponder];
    return YES;
}
-(void)showPicker{
    
    
    weighPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(30, 200, 250, 200)];
    weighPickerView.showsSelectionIndicator = YES;
    weighPickerView.hidden = NO;
    [weighPickerView setBackgroundColor:[UIColor blueColor]];

    weighPickerView.delegate = self;
    [self.view addSubview:weighPickerView];
    
}
-(void)showGender{
    genderPicker = [[UIPickerView alloc] initWithFrame:CGRectMake(30, 230,250, 150)];
    genderPicker.showsSelectionIndicator = YES;
    genderPicker.hidden = NO;
    [genderPicker setBackgroundColor:[UIColor blueColor]];
    
    genderPicker.delegate = self;
    [self.view addSubview:genderPicker];
    
}

-(void)showDate{
    
    datePicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(30, 150, 250,250)];
    [self.datePicker setDatePickerMode:UIDatePickerModeDate];
    [datePicker setBackgroundColor:[UIColor blueColor]];
    [self.datePicker addTarget:self action:@selector(onDateValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    
}
-(void)onDateValueChanged:(UIDatePicker*)datePickers{

    NSString *datestr=[NSString stringWithFormat:@"%@",datePickers.date];
    dateTextField.text=datestr;
    NSLog(@"date%@",datePickers.date);

    [datePickers removeFromSuperview];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    return 1;
}
//Rows in each Column

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component; {
    if(pickerView==weighPickerView){
    return [weighArray count];
    }
    else{
        return [genderArray count];

    }
}


-(NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView==weighPickerView){

    return [weighArray objectAtIndex:row];
    }

else{
    return [genderArray objectAtIndex:row];
    
}
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
{
    if(pickerView==weighPickerView){

   goalTextField.text=[NSString stringWithFormat:@"%@",[weighArray objectAtIndex:row]];
    [pickerView removeFromSuperview];
    }
    else{
        genderTextField.text=[NSString stringWithFormat:@"%@",[genderArray objectAtIndex:row]];
        [pickerView removeFromSuperview];

    }
    
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
