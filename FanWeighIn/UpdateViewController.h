//
//  UpdateViewController.h
//  FanWeighIn
//
//  Created by arvind on 8/6/15.
//  Copyright (c) 2015 arvind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UpdateViewController : UIViewController<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>

{
    UIImageView *fanImageView;
    UIPickerView *weighPickerView;
    NSArray *weighArray;
    UILabel *currentLabel,*goalLabel;
    UITextField *currentTextField,*goalTextField;
    UIButton *currentButton,*goalButton;


}
@property(nonatomic,retain)UIImageView *fanImageView;
@property(nonatomic,retain) UIPickerView *weighPickerView;
@property(nonatomic,retain)NSArray *weighArray;
@property(nonatomic,retain) UITextField *currentTextField,*goalTextField;
@property(nonatomic,retain)UIButton *currentButton,*goalButton;
@property(nonatomic,retain)    UILabel *currentLabel,*goalLabel;

@end
