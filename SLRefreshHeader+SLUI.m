//
//  SLRefreshHeader+SLUI.m
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "SLRefreshHeader+SLUI.h"
#import "SLRefreshGifHeader.h"

@implementation SLRefreshHeader (SLUI)

+(instancetype)sl_headerWithRefreshingTarget:(id)target refreshingAction:(SEL)action{
    SLRefreshGifHeader *header = [SLRefreshGifHeader headerWithRefreshingTarget:target refreshingAction:action];
    [header setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
    [header setTitle:@"松开马上刷新" forState:MJRefreshStatePulling];
    [header setTitle:@"正在帮你刷新" forState:MJRefreshStateRefreshing];
//    [header setRefreshLabelTitle:@"买正品药上健客"];
//    
//    
//    [header setImages:@[[UIImage imageNamed:@"homeheader_0"]] forState:MJRefreshStateIdle];
//    [header setImages:@[[UIImage imageNamed:@"homeheader_0"]] forState:MJRefreshStatePulling];
//    [header setImages:[self animateImages] forState:MJRefreshStateRefreshing];
//    
    
    return header;
}


+ (NSArray *)animateImages {
    NSMutableArray *images = [[NSMutableArray alloc] initWithCapacity:9];
    for (int i = 0; i < 9; i++){
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"homeheader_%d",i]]];
    }
    return images;
}

//防止下拉刷新，tabview上移
- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState
    
    // 根据状态做事情
    if (state == MJRefreshStateIdle) {
        if (oldState != MJRefreshStateRefreshing) return;
        
        // 恢复inset和offset
        [UIView animateWithDuration:MJRefreshSlowAnimationDuration animations:^{
            
            // 恢复到记录的初始位置
            self.scrollView.mj_insetT = self.scrollViewOriginalInset.top;
            
            // 自动调整透明度
            if (self.isAutoChangeAlpha) self.alpha = 0.0;
        } completion:^(BOOL finished) {
            self.pullingPercent = 0.0;
        }];
    } else if (state == MJRefreshStateRefreshing) {
        [UIView animateWithDuration:MJRefreshFastAnimationDuration animations:^{
            // 增加滚动区域
            CGFloat top = self.scrollViewOriginalInset.top + self.mj_h;
            self.scrollView.mj_insetT = top;
            
            // 设置滚动位置
            self.scrollView.mj_offsetY = - top;
        } completion:^(BOOL finished) {
            [self executeRefreshingCallback];
        }];
    }
    
}

@end
