//
//  NearViewController.m
//  XiaoYi
//
//  Created by rason on 16/6/25.
//  Copyright © 2016年 RasonWu. All rights reserved.
//

#import "NearViewController.h"
#import "NextViewController.h"
#import "GoodTableViewCell.h"
@interface NearViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *tableView;
}

@end

@implementation NearViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-49-64)];
    tableView.backgroundColor = [UIColor redColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    self.title = @"附近";
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"yi_nearby_search"] style:UIBarButtonItemStyleDone target:self action:@selector(search)];
    self.navigationItem.rightBarButtonItem = item;
    NSLog(@"viewDidLoad");
    [self setTabBarItem];
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.8392 green:0.1255 blue:0.1843 alpha:1.0];
    // Do any additional setup after loading the view.
}
-(void)search{
    NSLog(@"search");
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
#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;//10行
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GoodTableViewCell *cell  = [[[NSBundle mainBundle] loadNibNamed:@"GoodTableViewCell"
                                          owner:self
                                        options:nil] objectAtIndex:0];
    
//    cell.textLabel.text = @"cell";
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@",indexPath);
    return 100;
}
#pragma mark - UITableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@",indexPath);
}
@end
