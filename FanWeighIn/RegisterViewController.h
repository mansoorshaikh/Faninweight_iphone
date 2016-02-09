//
//  RegisterViewController.h
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
@interface RegisterViewController : UIViewController<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
{
    UILabel *registerLabel,*nameLabel,*dateLabel,*genderLabel,*emailLabel,*currentLabel,*goalLabel;
    UITextField *nameTextField,*dateTextField,*genderTextField,*emailTextField,*currentTextField,*goalTextField;
    UIButton *registerButton;
    UIImageView *fanImageView;
    UIPickerView *weighPickerView,*genderPicker;;
    NSArray *weighArray,*genderArray;
    HomeViewController *homeViewController;
    UIDatePicker *datePicker;
}
@property(nonatomic,retain)UILabel *registerLabel,*nameLabel,*dateLabel,*genderLabel,*emailLabel,*currentLabel,*goalLabel;
@property(nonatomic,retain)UITextField *nameTextField,*dateTextField,*genderTextField,*emailTextField,*currentTextField,*goalTextField;
@property(nonatomic,retain) UIButton *registerButton;
@property(nonatomic,retain)UIImageView *fanImageView;
@property(nonatomic,retain) UIPickerView *weighPickerView,*genderPicker;
@property(nonatomic,retain)NSArray *weighArray,*genderArray;
@property(nonatomic,retain)HomeViewController *homeViewController;
@property(nonatomic,retain)UIDatePicker *datePicker;
-(void)showPicker;
-(void)showGender;
-(void)goToHome;
-(void)showDate;
-(void)onDateValueChanged:(UIDatePicker*)datePickers;
@end
