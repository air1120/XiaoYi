//
//  NextViewController.m
//  XiaoYi
//
//  Created by rason on 16/6/25.
//  Copyright © 2016年 RasonWu. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"下个界面";
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *btn=  [self button];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}
-(void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"NextViewController-click");
}
-(UIButton *)button{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    return btn;
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
