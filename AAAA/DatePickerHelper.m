//
//  DatePickerHelper.m
//  CapacityProject
//
//  Created by 叶凯煜 on 15/7/6.
//  Copyright (c) 2015年 alan. All rights reserved.
//

#import "DatePickerHelper.h"

@implementation DatePickerHelper

-(UIView*)getPickerView:(id)delegate
{
    
    if(_datePickerView == nil){
    
        _datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0, 30, ScreenHeight, 200)];
        
        [_datePicker setDatePickerMode:UIDatePickerModeDate];
        
        _datePickerView = [[UIView alloc]initWithFrame:CGRectMake(0, ScreenHeight, ScreenWidth, 240)];
        
        _datePickerView.layer.masksToBounds = YES;
        
        _datePickerView.layer.cornerRadius = 10;
        
        _datePickerView.backgroundColor = [UIColor whiteColor];
        
        [_datePickerView addSubview:_datePicker];
        
        UIView* titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, 40)];
        
        titleView.backgroundColor = [UIColor colorWithRed:0.275f green:0.824f blue:0.776f alpha:1.00f];
        
        [_datePickerView addSubview:titleView];
        
        UIButton* cancelBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 40)];
        
        //[cancelBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        
        [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
        
        [cancelBtn addTarget:delegate action:@selector(datePickerCancel) forControlEvents:UIControlEventTouchUpInside];
        
        UIButton* submitBtn = [[UIButton alloc]initWithFrame:CGRectMake(ScreenWidth-70,0, 70, 40)];
        
        [submitBtn setTitle:@"确定" forState:UIControlStateNormal];
        
        [submitBtn addTarget:delegate action:@selector(datePickerSubmit) forControlEvents:UIControlEventTouchUpInside];
        
        //[submitBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        
        [_datePickerView addSubview:cancelBtn];
        
        [_datePickerView addSubview:submitBtn];
        
        [_datePicker addTarget:delegate action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _datePickerView;
}

@end
