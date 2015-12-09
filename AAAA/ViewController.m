//
//  ViewController.m
//  AAAA
//
//  Created by 张波 on 15/7/28.
//  Copyright (c) 2015年 zhangbo. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerHelper.h"
#import "scrollview.h"
@interface ViewController ()
{
    DatePickerHelper *datePicker;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(creatTimepicker)];
    _targetTime.userInteractionEnabled = YES;
    [_targetTime addGestureRecognizer:tap];
    NSData
    /***** 第一个button *****/
    //给按钮加一个蓝色的板框
    _btn_one.layer.borderColor = [[UIColor blueColor] CGColor];
    //设置边界的宽度
    _btn_one.layer.borderWidth = 2.0f;
    //给按钮设置弧度,这里将按钮变成了圆形
    
    _btn_one.layer.cornerRadius = 5.0f;
    // 设置按钮的圆角半径不会被遮挡
    _btn_one.layer.masksToBounds = YES;
    //设置按钮的边界颜色
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGColorRef color = CGColorCreate(colorSpaceRef, (CGFloat[]){1,0,0,1});
    [_btn_one.layer setBorderColor:color];
    
    
    /***** 第二个button *****/
    _btn_two.tag = 10000;
    CALayer *buttonLayer = [_btn_two layer];
    [buttonLayer setMasksToBounds:YES];
    [buttonLayer setCornerRadius:10.0];
    [buttonLayer setBorderWidth:1.0];
    [buttonLayer setBorderColor:[[UIColor grayColor] CGColor]];
    [self.view insertSubview:_btn_two atIndex:_btn_two.tag];

    /***** 第三个button *****/

    
    
}
- (IBAction)ClickBtnOneAction:(id)sender {

    NSLog(@"hfuhuhshgg");
    scrollview *scview = [[scrollview alloc] init];
    [self.navigationController pushViewController:scview animated:YES ];
    
    
}
- (void)creatTimepicker
{
    [self.view endEditing:YES];
    if (datePicker == nil) {
        datePicker = [[DatePickerHelper alloc] init];
    }
    [datePicker getPickerView:self];
    [self.view addSubview:[datePicker getPickerView:self]];
    [UIView animateWithDuration:1 animations:^{
        [datePicker getPickerView:self].frame = CGRectMake(0,ScreenHeight -230, ScreenWidth, 230);
    }];

    
}

-(void)datePickerValueChanged:(id)sender
{
    
    UIDatePicker* picker = (UIDatePicker*)sender;
    
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc]init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    _targetTime.text = [dateFormat stringFromDate:picker.date];
}

-(void)datePickerCancel
{
    UIDatePicker* picker = datePicker.datePicker;
    
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc]init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    _targetTime.text = [dateFormat stringFromDate:picker.date];
    
    [UIView animateWithDuration:1 animations:^{
        [datePicker getPickerView:self].frame = CGRectMake(0, ScreenHeight, ScreenWidth, 230);
    } completion:^(BOOL finished) {
        [[datePicker getPickerView:self] removeFromSuperview];
    }];
    
}

-(void)datePickerSubmit
{
    UIDatePicker* picker = datePicker.datePicker;
    
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc]init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    _targetTime.text = [dateFormat stringFromDate:picker.date];
    
    [UIView animateWithDuration:1 animations:^{
        [datePicker getPickerView:self].frame = CGRectMake(0, ScreenHeight, ScreenWidth, 230);
    } completion:^(BOOL finished) {
        [[datePicker getPickerView:self] removeFromSuperview];
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
