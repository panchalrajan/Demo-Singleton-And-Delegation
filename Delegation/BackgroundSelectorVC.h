//
//  BackgroundSelectorVC.h
//  Delegation
//
//  Created by Rajan Panchal on 22/12/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BackgroundSelectorVCDelegate <NSObject>

- (void) changeBGColor:(UIColor *)bgColor;

@end

@interface BackgroundSelectorVC : UIViewController

@property (weak, nonatomic) id<BackgroundSelectorVCDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
