//
//  ZYCarView.h
//  ZYCarView
//
//  Created by liqiaona on 2018/3/8.
//  Copyright © 2018年 ZY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYCarView : UIView
@property(nonatomic,strong)NSMutableArray *array;
-(void)setArrayData:(NSArray *)array superScrollView:(UIScrollView *)superScrollView;
@end
