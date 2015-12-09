//
//  scrollview.m
//  AAAA
//
//  Created by 张波 on 15/11/26.
//  Copyright © 2015年 zhangbo. All rights reserved.
//

#import "scrollview.h"

@interface scrollview ()

@end

@implementation scrollview

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myScroll.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height -44);
    self.myScroll.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height * 2 );
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
