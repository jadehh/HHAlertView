//
//  HHAlertView.m
//  HHAlertView
//
//  Created by LXH on 2017/2/17.
//  Copyright © 2017年 HHLM. All rights reserved.
//

#import "HHAlertView.h"


@interface HHAlertViewStack : NSObject

@property (nonatomic, strong) NSMutableArray *alertViews;

+ (HHAlertViewStack *)shareInstance;

- (void)push:(HHAlertView *)alertView;

- (void)pop:(HHAlertView *)alertView;

@end


static const CGFloat AlertViewWith = 270.f;
static const CGFloat AlertViewContentMargin = 10.f;
static const CGFloat AlertViewButtonHeight = 44.f;
static const CGFloat AlertViewLineLayerWidth = 0.5f;
static const CGFloat AlertViewVerticalEdgeMinMargin = 25.f;


@interface HHAlertView ()

@property (nonatomic, strong) UIView *alertView;

@end

@implementation HHAlertView

+ (HHAlertView *)showAlertWithTitle:(NSString *)title
{
    HHAlertView *alert = nil;
    alert = [[self alloc] initWithTitle:title
                                message:nil
                            cancelTitle:nil
                            otherTitles:nil
                            contentView:nil
                          complateBlock:nil];
    [alert show];
    return alert;
}

+ (HHAlertView*)showAlertViewWithTitle:(NSString *)title
                               message:(NSString *)message
                           cancelTitle:(NSString *)cancelTitle
                            otherTitle:(NSString *)otherTitle
                         complateBlock:(HHAlertViewBlock)alertBlock
{
    HHAlertView *alert = nil;
    alert = [[self alloc] initWithTitle:title
                                message:message
                            cancelTitle:cancelTitle
                            otherTitles:(otherTitle)?@[otherTitle]:nil
                            contentView:nil
                          complateBlock:alertBlock];
    [alert show];
    return alert;
}

+ (HHAlertView*)showAlertViewWithTitle:(NSString *)title
                           cancelTitle:(NSString *)cancelTitle
                            otherTitle:(NSString *)otherTitle
                         complateBlock:(HHAlertViewFliedBlock)alertBlock
{
     return nil;
}

+ (HHAlertView*)showAlertViewWithMessage:(NSString *)message
                             cancelTitle:(NSString *)cancelTitle
                              otherTitle:(NSString *)otherTitle
                           complateBlock:(HHAlertViewTextViewBlock)alertBlock
{
     return nil;
}

+ (HHAlertView *)showAlertViewWithTitle:(NSString *)title
                                message:(NSString *)message
                            cancelTitle:(NSString *)cancelTitle
                            otherTitles:(NSString *)otherTitles, ... NS_REQUIRES_NIL_TERMINATION;
{
     return nil;
}


-  (instancetype)initWithTitle:(NSString *)title
                       message:(NSString *)message
                   cancelTitle:(NSString *)cancelTitle
                   otherTitles:(NSArray *)otherTitles
                   contentView:(UIView *)contentView
                 complateBlock:(HHAlertViewBlock)alertBlock
{
    self = [super init];
    if (self) {
    
    }
    return self;
}

- (void)show
{
    
}
@end
