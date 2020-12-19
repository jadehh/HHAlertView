//
//  HHAlertView.h
//  HHAlertView
//
//  Created by LXH on 2017/2/17.
//  Copyright © 2017年 HHLM. All rights reserved.
//

#import <UIKit/UIKit.h>



//普通的
typedef void (^HHAlertViewBlock)(BOOL cancell ,NSInteger buttonIndex);
//带有textfield的
typedef void (^HHAlertViewFliedBlock) (NSString *firstTitle,NSString *secondTitle);
//带有textView的
typedef void (^HHAlertViewTextViewBlock) (NSString *content);

@interface HHAlertView : UIViewController

@property (nonatomic, assign, getter=isVisible) BOOL visible;

+ (HHAlertView*)showAlertViewWithTitle:(NSString *)title
                               message:(NSString *)message
                           cancelTitle:(NSString *)cancelTitle
                            otherTitle:(NSString *)otherTitle
                         complateBlock:(HHAlertViewBlock)alertBlock ;

+ (HHAlertView*)showAlertViewWithTitle:(NSString *)title
                           cancelTitle:(NSString *)cancelTitle
                            otherTitle:(NSString *)otherTitle
                         complateBlock:(HHAlertViewFliedBlock)alertBlock ;

+ (HHAlertView*)showAlertViewWithMessage:(NSString *)message
                             cancelTitle:(NSString *)cancelTitle
                              otherTitle:(NSString *)otherTitle
                           complateBlock:(HHAlertViewTextViewBlock)alertBlock ;

+ (HHAlertView *)showAlertViewWithTitle:(NSString *)title
                                message:(NSString *)message
                            cancelTitle:(NSString *)cancelTitle
                            otherTitles:(NSString *)otherTitles, ... NS_REQUIRES_NIL_TERMINATION;

-  (instancetype)initWithTitle:(NSString *)title
                       message:(NSString *)message
                   cancelTitle:(NSString *)cancelTitle
                   otherTitles:(NSArray *)otherTitles
                   contentView:(UIView *)contentView
                 complateBlock:(HHAlertViewBlock)alertBlock;


- (instancetype )initWithTitle:(NSString *)title
                        message:(NSString *)message
                       delegate:(id)delegate
              cancelButtonTitle:(NSString *)cancelButtonTitle
              otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

- (NSInteger)addButtonWithTitle:(NSString *)title;

- (void)dismiss;

- (void)dismissWithClickButtonIndex:(NSInteger)index animated:(BOOL)animated;

@end
