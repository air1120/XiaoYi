//
//  MyViewController.m
//  XiaoYi
//
//  Created by rason on 16/6/25.
//  Copyright © 2016年 RasonWu. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarItem];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setTabBarItem{
    UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"我的" image:[self getImageWithImageName:@"yi_nearby_mine"] selectedImage:[self getImageWithImageName:@"yi_nearby_mine_highted"]];
    self.tabBarItem = item;
}
-(UIImage *)getImageWithImageName:(NSString *)imageName{
    UIImage *image=[[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
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
