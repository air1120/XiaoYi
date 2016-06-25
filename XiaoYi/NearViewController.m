//
//  NearViewController.m
//  XiaoYi
//
//  Created by rason on 16/6/25.
//  Copyright © 2016年 RasonWu. All rights reserved.
//

#import "NearViewController.h"
#import "NextViewController.h"
@interface NearViewController ()

@end

@implementation NearViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    [self setTabBarItem];
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.8392 green:0.1255 blue:0.1843 alpha:1.0];
    [self.view addSubview:[self getLabel]];
    // Do any additional setup after loading the view.
}
-(UILabel *)getLabel{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    label.backgroundColor = [UIColor redColor];
    return label;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setTabBarItem{
    UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"附近" image:[self getImageWithImageName:@"yi_nearby_near"] selectedImage:[self getImageWithImageName:@"yi_nearby_near_highted"]];
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
- (IBAction)goToNextView:(id)sender {
    NextViewController *vc = [[NextViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)goToNextViewByNavigation:(id)sender {
    NextViewController *vc = [[NextViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
