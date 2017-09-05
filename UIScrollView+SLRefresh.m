//
//  UIScrollView+SLRefresh.m
//  ShouTaoPayClient
//
//  Created by songlin on 20/07/2017.
//  Copyright © 2017 changRong. All rights reserved.
//

#import "UIScrollView+SLRefresh.h"

@implementation UIScrollView (SLRefresh)

static const char SLRefreshHeaderKey = '\0';

-(void)setSl_header:(SLRefreshHeader *)sl_header{
    if (sl_header != self.sl_header) {
        // 删除旧的，添加新的
        [self.sl_header removeFromSuperview];
        [self addSubview:sl_header];
        
        // 存储新的
        [self willChangeValueForKey:@"sl_header"]; // KVO
        objc_setAssociatedObject(self, &SLRefreshHeaderKey,
                                 sl_header, OBJC_ASSOCIATION_ASSIGN);
        [self didChangeValueForKey:@"sl_header"]; // KVO
    }

}

//-(void)setheader:(SLRefreshHeader *)header{
//    if (header != self.header) {
//        // 删除旧的，添加新的
//        [self.header removeFromSuperview];
//        [self addSubview:header];
//        
//        // 存储新的
//        [self willChangeValueForKey:@"header"]; // KVO
//        objc_setAssociatedObject(self, &SLRefreshHeaderKey,
//                                 header, OBJC_ASSOCIATION_ASSIGN);
//        [self didChangeValueForKey:@"header"]; // KVO
//    }
//}




//- (MJRefreshHeader *)header
//{
//    return objc_getAssociatedObject(self, &SLRefreshHeaderKey);
//}

-(SLRefreshHeader *)sl_header{
    return objc_getAssociatedObject(self, &SLRefreshHeaderKey);
}

#pragma mark - footer
static const char SLRefreshFooterKey = '\0';


-(void)setSl_footer:(SLRefreshFooter *)sl_footer{
    if (sl_footer != self.sl_footer) {
        // 删除旧的，添加新的
        [self.sl_footer removeFromSuperview];
        [self addSubview:sl_footer];
        
        // 存储新的
        [self willChangeValueForKey:@"sl_footer"]; // KVO
        objc_setAssociatedObject(self, &SLRefreshFooterKey,
                                 sl_footer, OBJC_ASSOCIATION_ASSIGN);
        [self didChangeValueForKey:@"sl_footer"]; // KVO
    }

}

-(SLRefreshFooter *)sl_footer{
    return objc_getAssociatedObject(self, &SLRefreshFooterKey);
}
//- (void)setFooter:(SLRefreshFooter *)footer
//{
//    if (sl_footer != self.footer) {
//        // 删除旧的，添加新的
//        [self.footer removeFromSuperview];
//        [self addSubview:footer];
//        
//        // 存储新的
//        [self willChangeValueForKey:@"footer"]; // KVO
//        objc_setAssociatedObject(self, &SLRefreshFooterKey,
//                                 footer, OBJC_ASSOCIATION_ASSIGN);
//        [self didChangeValueForKey:@"footer"]; // KVO
//    }
//}
//
//- (MJRefreshFooter *)footer
//{
//    return objc_getAssociatedObject(self, &SLRefreshFooterKey);
//}
//
@end
