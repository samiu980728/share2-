//
//  FuVCFirst.m
//  share
//
//  Created by 萨缪 on 2018/7/28.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "FuVCFirst.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFiveth.h"
#import "JPXFuFirstTableViewCell.h"

@interface FuVCFirst ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation FuVCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //注册
    [_tableView registerClass:[JPXFuFirstTableViewCell class] forCellReuseIdentifier:@"labelCell"];
    
    //代理
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    
    
    
    //防止遮盖
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    imageArray1 = [NSArray arrayWithObjects:@"20,png",@"19,png",@"21,png", nil];
    
    btnArray1 = [NSArray arrayWithObjects:@"13.png",@"13.png",@"13.png", nil];
    
    btnArray2 = [NSArray arrayWithObjects:@"14.png",@"14.png",@"14.png", nil];
    
    btnArray3 = [NSArray arrayWithObjects:@"15.png",@"15.png",@"15.png", nil];
    
    
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JPXFuFirstTableViewCell * cell1 = nil;
    
    cell1 = [_tableView dequeueReusableCellWithIdentifier:@"labelCell" forIndexPath:indexPath];
    
    if ( indexPath.row == 0 ){
    
    cell1.mainString.text = @"假日";
    
    cell1.detailString1.text = @"15分钟前";
    
    cell1.detailString2.text = @"share小白";
    
    cell1.imageCell1.image = [UIImage imageNamed:@"18,.png"];
    
    cell1.btn1.imageView.image = [UIImage imageNamed:@"13.png"];
    
    cell1.btn2.imageView.image = [UIImage imageNamed:@"14.png"];
    
    cell1.btn3.imageView.image = [UIImage imageNamed:@"15.png"];
    }
    else{
        cell1.detailString3.text = [NSString stringWithString:@"多希望列车能把我带到有你的城市"];
        
        cell1.image1.image = [UIImage imageNamed:@"20,.png"];
        cell1.image2.image = [UIImage imageNamed:@"19,.png"];
        cell1.image3.image = [UIImage imageNamed:@"21,.png"];
    }
    return cell1;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ( indexPath.row == 0 ){
        return 100;
    }
    return 600;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"SHARE";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
    
    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
    
    //暂时把action设置为nil 等会还要上传照片
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
    
    self.navigationItem.leftBarButtonItem = item1;
    
    
    
    
}


- (void)clickMe:(id)sender
{
    
    VCFirst * vcFirst = [[VCFirst alloc] init];
    
    
    //vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@"5.png"] tag:101];
    //vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"第一" image:nil tag:101];
    vcFirst.tabBarItem.image = [[UIImage imageNamed:@"5.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    
    VCSecond * vcSecond = [[VCSecond alloc] init];
    
    
    VCThird * vcThird = [[VCThird alloc] init];
    
    vcSecond.tabBarItem.image = [[UIImage imageNamed:@"6.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vcThird.tabBarItem.image = [[UIImage imageNamed:@"7.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VCFourth * vcFourth = [[VCFourth alloc] init];
    
    vcFourth.tabBarItem.image = [[UIImage imageNamed:@"8.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    VCFiveth * vcFiveth = [[VCFiveth alloc] init];
    
    vcFiveth.tabBarItem.image = [[UIImage imageNamed:@"9.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarController * tabController = [[UITabBarController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vcFirst];
    
    UINavigationController * nav1 = [[UINavigationController alloc] initWithRootViewController:vcSecond];
    
    UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:vcThird];
    
    UINavigationController * nav3 = [[UINavigationController alloc] initWithRootViewController:vcFourth];
    
    UINavigationController * nav4 = [[UINavigationController alloc] initWithRootViewController:vcFiveth];
    
    NSArray * arrayVC = [NSArray arrayWithObjects:nav,nav1,nav2,nav3,nav4, nil];
    
    tabController.viewControllers = arrayVC;
    
    //[appDelagete.window.rootViewController presentViewController:[[VCFirst alloc]init] animated:YES completion:nil];
    
    [self presentViewController:tabController animated:YES completion:nil];
    
}


- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize
{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [reSizeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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
