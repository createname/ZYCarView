//
//  ViewController.m
//  ZYCarView
//
//  Created by liqiaona on 2018/3/8.
//  Copyright © 2018年 ZY. All rights reserved.
//

#import "ViewController.h"
#import "ZYCarView.h"
#import "ZYCarModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    NSArray *arrayStr = [NSArray arrayWithObjects:
                         @"1111111111111111111111111111111111111111111111",
                         @"2222222222222222222222222222222222222222222222",
                         @"3333333333333333333333333333333333333333333333",
                         nil];
    for (int i = 0; i<arrayStr.count; i++) {
        ZYCarModel *model = [[ZYCarModel alloc]init];
        model.imageUrl = [NSString stringWithFormat:@"icon%d",i+1];
        model.titleStr = arrayStr[i];
        model.newsId = i;
        [array addObject:model];
    }
    ZYCarView *carView = [[ZYCarView alloc]initWithFrame:CGRectMake(0,80 , self.view.frame.size.width, 120)];
    [carView setArrayData:array superScrollView:nil];
    [self.view addSubview:carView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
