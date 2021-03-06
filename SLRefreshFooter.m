//
//  SLRefreshFooter.m
//  ShouTaoPayClient
//
//  Created by songlin on 01/08/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshFooter.h"

@implementation SLRefreshFooter

+ (instancetype)footerWithRefreshingTarget:(id)target refreshingAction:(SEL)action
{
    SLRefreshFooter *cmp = [[self alloc] init];
    [cmp setRefreshingTarget:target refreshingAction:action];
    return cmp;
}

#pragma mark - 重写父类的方法
- (void)prepare
{
    [super prepare];
    
    // 设置自己的高度
    self.mj_h = MJRefreshFooterHeight;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [super willMoveToSuperview:newSuperview];
    
    if (newSuperview) {
        // 监听scrollView数据的变化
        if ([self.scrollView isKindOfClass:[UITableView class]] || [self.scrollView isKindOfClass:[UICollectionView class]]) {
            [self.scrollView setMj_reloadDataBlock:^(NSInteger totalDataCount) {
                if (self.isAutomaticallyHidden) {
                    self.hidden = (totalDataCount == 0);
                }
            }];
        }
    }
}

#pragma mark - 公共方法
- (void)endRefreshingWithNoMoreData
{
    self.state = MJRefreshStateNoMoreData;
}

- (void)noticeNoMoreData
{
    [self endRefreshingWithNoMoreData];
}

- (void)resetNoMoreData
{
    self.state = MJRefreshStateIdle;
}


@end
