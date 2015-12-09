//
//  DatePickerHelper.h
//  CapacityProject
//
//  Created by 叶凯煜 on 15/7/6.
//  Copyright (c) 2015年 alan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerHelper : NSObject

@property(nonatomic,strong) UIView* datePickerView;

@property(nonatomic,strong) UIDatePicker* datePicker;

-(UIView*)getPickerView:(id)delegate;

@end
