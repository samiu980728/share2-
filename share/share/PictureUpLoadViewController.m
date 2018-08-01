//
//  PictureUpLoadViewController.m
//  share
//
//  Created by 萨缪 on 2018/8/1.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "PictureUpLoadViewController.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFiveth.h"
#import "LMJDropdownMenu.h"
@interface PictureUpLoadViewController ()<LMJDropdownMenuDelegate>

@end

@implementation PictureUpLoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
    
//    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
//
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    
//    [self.view addSubview:_tableView];
    
    
    LMJDropdownMenu * dropdownMenu = [[LMJDropdownMenu alloc] init];
    [dropdownMenu setFrame:CGRectMake(270, 80, 100, 40)];
    [dropdownMenu setMenuTitles:@[@"原创作品",@"设计资料",@"设计师观点",@"设计教程"] rowHeight:30];
    dropdownMenu.delegate = self;
    [self.view addSubview:dropdownMenu];
    
    UIImageView * image = [[UIImageView alloc] init];
    image.frame = CGRectMake(10, 20, 240, 140);
    image.image = [UIImage imageNamed:@"20,.png"];
    [self.view addSubview:image];
    btnArray1 = [NSArray arrayWithObjects:@" ",@"平面设计",@"虚拟设计",@" ",@" ",@" ", nil];
    
    btnArray2 = [NSArray arrayWithObjects:@" ",@"网页设计",@"影视",@" ",@" ",@" ", nil];
    
    btnArray3 = [NSArray arrayWithObjects:@" ",@"UI/icon",@"摄影",@" ",@" ",@" ", nil];
    
    btnArray4 = [NSArray arrayWithObjects:@" ",@"插画/手绘",@"其他",@" ",@" ",@" ", nil];
    
    UIButton * btn1 = [[UIButton alloc] init];
    [btn1 setTitle:@"陕西省，西安市" forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"51,.png"] forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:13];
    btn1.frame = CGRectMake(270, 50, 120, 30);
    //btn1.layer.cornerRadius = 0.5;
    [btn1 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    
    
    UIButton * btn2 = [[UIButton alloc] init];
    UIButton * btn3 = [[UIButton alloc] init];
    UIButton * btn4 = [[UIButton alloc] init];
    UIButton * btn5 = [[UIButton alloc] init];
    
    btn2.frame = CGRectMake(0, 170, 100, 20);
    btn3.frame = CGRectMake(105, 170, 100, 20);
    btn4.frame = CGRectMake(210, 170, 90, 20);
    btn5.frame = CGRectMake(305, 170, 100, 20);
    
    [btn2 setTitle:@"平面设计" forState:UIControlStateNormal];
    [btn3 setTitle:@"网页设计" forState:UIControlStateNormal];
    [btn4 setTitle:@"UI/icon" forState:UIControlStateNormal];
    [btn5 setTitle:@"插画/手绘" forState:UIControlStateNormal];
    
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [btn2 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [btn3 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [btn4 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn4 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [btn5 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn5 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
    [self.view addSubview:btn4];
    [self.view addSubview:btn5];
    
    
    UIButton * btn12 = [[UIButton alloc] init];
    UIButton * btn13 = [[UIButton alloc] init];
    UIButton * btn14 = [[UIButton alloc] init];
    UIButton * btn15 = [[UIButton alloc] init];
    
    btn12.frame = CGRectMake(0, 200, 100, 20);
    btn13.frame = CGRectMake(105, 200, 100, 20);
    btn14.frame = CGRectMake(210, 200, 90, 20);
    btn15.frame = CGRectMake(305, 200, 100, 20);
    
    [btn12 setTitle:@"虚拟设计" forState:UIControlStateNormal];
    [btn13 setTitle:@"影视设计" forState:UIControlStateNormal];
    [btn14 setTitle:@"摄影" forState:UIControlStateNormal];
    [btn15 setTitle:@"其他" forState:UIControlStateNormal];
    
    [btn12 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn13 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn14 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn15 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [btn12 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn12 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [btn13 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn13 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [btn14 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn14 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [btn15 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
    [btn15 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    
    [self.view addSubview:btn12];
    [self.view addSubview:btn13];
    [self.view addSubview:btn14];
    [self.view addSubview:btn15];
    
    
    UITextField * text = [[UITextField alloc] initWithFrame:CGRectMake(0, 230, [UIScreen mainScreen].bounds.size.width-5, 30)];
    text.borderStyle  = UITextBorderStyleRoundedRect;
    text.backgroundColor = [UIColor whiteColor];
    text.placeholder = @"请说出心中所想";
    text.font = [UIFont systemFontOfSize:15];
    text.textColor = [UIColor blackColor];
    text.clearButtonMode = UITextFieldViewModeAlways;
    
    text.clearsOnBeginEditing = YES;
    text.textAlignment = NSTextAlignmentLeft;
    text.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    text.adjustsFontSizeToFitWidth = YES;
    text.minimumFontSize = 14;
    text.keyboardType = UIKeyboardTypeDefault;
    text.autocapitalizationType = UITextAutocapitalizationTypeNone;
    text.returnKeyType = UIReturnKeyYahoo;
    //text.delegate = self;
    [self.view addSubview:text];
    
    UITextView * textView001 = [[UITextView alloc] initWithFrame:CGRectMake(0, 270, [UIScreen mainScreen].bounds.size.width-5, 70)];
    textView001.text = @"有感而发。。。";
    textView001.textColor = [UIColor lightGrayColor];
    textView001.backgroundColor = [UIColor whiteColor];
    textView001.textColor = [UIColor blackColor];
    textView001.font = [UIFont systemFontOfSize:15];
    textView001.textAlignment = NSTextAlignmentLeft;
    textView001.keyboardType = UIKeyboardTypeDefault;
    
    // 回车键类型
    textView001.returnKeyType = UIReturnKeyNext;
    // 回车键响应条件，有输入时才能响应，默认为NO，即没有限制
    textView001.enablesReturnKeyAutomatically = NO;
    
    [self.view addSubview:textView001];
    
    UIButton * btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(0, 350, [UIScreen mainScreen].bounds.size.width-5, 40);
    [btn setTitle:@"发布" forState:UIControlStateNormal];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [btn setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
}




//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell * cell1 = nil;
//    UITableViewCell * cell2 = nil;
//    UITableViewCell * cell3 = nil;
//    UITableViewCell * cell4 = nil;
//    UITableViewCell * cell5 = nil;
//    cell5 = [_tableView dequeueReusableCellWithIdentifier:@"cell5"];
//    if ( indexPath.row == 1 ){
//        cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
//        if ( !cell1 ){
//            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
//            LMJDropdownMenu * dropdownMenu = [[LMJDropdownMenu alloc] init];
//            [dropdownMenu setFrame:CGRectMake(270, 80, 100, 40)];
//            [dropdownMenu setMenuTitles:@[@"原创作品",@"设计资料",@"设计师观点",@"设计教程"] rowHeight:30];
//            dropdownMenu.delegate = self;
//            [cell1.contentView addSubview:dropdownMenu];
//        }
//        UIImageView * image = [[UIImageView alloc] init];
//        image.frame = CGRectMake(10, 10, 240, 140);
//        image.image = [UIImage imageNamed:@"20,.png"];
//        [cell1.contentView addSubview:image];
//
//        UIButton * btn1 = [[UIButton alloc] init];
//        [btn1 setTitle:@"陕西省，西安市" forState:UIControlStateNormal];
//        btn1.frame = CGRectMake(300, 50, 100, 20);
//        //btn1.layer.cornerRadius = 0.5;
//        [btn1 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
//        [cell1.contentView addSubview:btn1];
//
//        cell1.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
//        return cell1;
//    }
//    else if ( indexPath.row == 1 || indexPath.row == 2 ){
//        cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2"];
//        if ( !cell2 ){
//            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
//            UIButton * btn2 = [[UIButton alloc] init];
//            UIButton * btn3 = [[UIButton alloc] init];
//            UIButton * btn4 = [[UIButton alloc] init];
//            UIButton * btn5 = [[UIButton alloc] init];
//
//            btn2.frame = CGRectMake(0, 10, 100, 20);
//            btn3.frame = CGRectMake(105, 10, 100, 20);
//            btn4.frame = CGRectMake(210, 10, 90, 20);
//            btn5.frame = CGRectMake(305, 10, 100, 20);
//
//            [btn2 setTitle:[btnArray1 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//            [btn3 setTitle:[btnArray2 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//            [btn4 setTitle:[btnArray3 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//            [btn5 setTitle:[btnArray4 objectAtIndex:indexPath.row] forState:UIControlStateNormal];
//
//            [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            [btn5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//
//            [btn2 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
//            [btn2 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
//
//            [btn3 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
//            [btn3 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
//
//            [btn4 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
//            [btn4 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
//
//            [btn5 addTarget:self action:@selector(pressButton1:) forControlEvents:UIControlEventTouchUpInside];
//            [btn5 setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
//
//            [cell2.contentView addSubview:btn2];
//            [cell2.contentView addSubview:btn3];
//            [cell2.contentView addSubview:btn4];
//            [cell2.contentView addSubview:btn5];
//
//        }
//        cell2.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
//        return cell2;
//    }
//    else if (indexPath.row == 3 ){
//        cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3"];
//        if ( !cell3 ){
//            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
//            UITextField * text = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-5, 30)];
//            text.borderStyle  = UITextBorderStyleRoundedRect;
//            text.backgroundColor = [UIColor whiteColor];
//            text.placeholder = @"请说出心中所想";
//            text.font = [UIFont systemFontOfSize:15];
//            text.textColor = [UIColor blackColor];
//            text.clearButtonMode = UITextFieldViewModeAlways;
//
//            text.clearsOnBeginEditing = YES;
//            text.textAlignment = NSTextAlignmentLeft;
//            text.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
//            text.adjustsFontSizeToFitWidth = YES;
//            text.minimumFontSize = 14;
//            text.keyboardType = UIKeyboardTypeNumberPad;
//            text.autocapitalizationType = UITextAutocapitalizationTypeNone;
//            text.returnKeyType = UIReturnKeyYahoo;
//            //text.delegate = self;
//            [cell3.contentView addSubview:text];
//
//        }
//
//        cell3.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
//        return cell3;
//    }
//    else if (indexPath.row == 4 ){
//        cell4 = [_tableView dequeueReusableCellWithIdentifier:@"cell4"];
//        if ( !cell4 ){
//            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell4"];
//            UITextView * textView001 = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-5, 90)];
//            textView001.backgroundColor = [UIColor whiteColor];
//            textView001.textColor = [UIColor blackColor];
//            textView001.font = [UIFont systemFontOfSize:15];
//            textView001.textAlignment = NSTextAlignmentLeft;
//            textView001.keyboardType = UIKeyboardTypeNumberPad;
//            // 回车键类型
//            textView001.returnKeyType = UIReturnKeyNext;
//            // 回车键响应条件，有输入时才能响应，默认为NO，即没有限制
//            textView001.enablesReturnKeyAutomatically = NO;
//
//            [cell4.contentView addSubview:textView001];
//        }
//        cell4.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
//        return cell4;
//    }
//
////        cell5 = [_tableView dequeueReusableCellWithIdentifier:@"cell5"];
//        if ( !cell5 ){
//            cell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell5"];
//            UIButton * btn = [[UIButton alloc] init];
//            btn.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-5, 40);
//            [btn setTitle:@"发布" forState:UIControlStateNormal];
//            btn.titleLabel.font = [UIFont systemFontOfSize:20];
//            [btn setBackgroundImage:[UIImage imageNamed:@"2.png"] forState:UIControlStateNormal];
//            [cell5.contentView addSubview:btn];
//        }
//
//        cell5.backgroundColor = [UIColor colorWithRed:0.93f green:0.93f blue:0.94f alpha:1.00f];
//
//        return cell5;
//
//    //return cell5;
//
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if ( indexPath.row == 0 ){
//        return 150;
//    }
//    else if ( indexPath.row == 1 || indexPath.row == 2 ){
//        return 40;
//    }
//    else if (indexPath.row == 3 ){
//        return 40;
//    }
//    else{
//        return 100;
//    }
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 6;
//}
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}

- (void)pressButton1:(UIButton *)button
{
    button.selected = !button.selected;
}

#pragma mark - LMJDropdownMenu Delegate

- (void)dropdownMenu:(LMJDropdownMenu *)menu selectedCellNumber:(NSInteger)number{
    NSLog(@"你选择了：%ld",number);
}

- (void)dropdownMenuWillShow:(LMJDropdownMenu *)menu{
    NSLog(@"--将要显示--");
}
- (void)dropdownMenuDidShow:(LMJDropdownMenu *)menu{
    NSLog(@"--已经显示--");
}

- (void)dropdownMenuWillHidden:(LMJDropdownMenu *)menu{
    NSLog(@"--将要隐藏--");
}
- (void)dropdownMenuDidHidden:(LMJDropdownMenu *)menu{
    NSLog(@"--已经隐藏--");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"上传";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
    
    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
    
    //暂时把action设置为nil 等会还要上传照片
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
    
    self.navigationItem.leftBarButtonItem = item1;
    
    
    
}


- (void)clickMe:(id)sender{
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
    
    NSArray * arrayVC = [NSArray arrayWithObjects:nav1,nav,nav2,nav3,nav4, nil];
    
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
