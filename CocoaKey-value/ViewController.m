//
//  ViewController.m
//  CocoaKey-value
//
//  Created by 张波 on 15/12/29.
//  Copyright © 2015年 zhangbo. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *aStudent = [Student new];
//    NSString *name = aStudent.name;
    NSString *name = [aStudent valueForKey:@"name"];
    
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
