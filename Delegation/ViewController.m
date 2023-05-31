//
//  ViewController.m
//  Delegation
//
//  Created by Rajan Panchal on 22/12/22.
//

#import "ViewController.h"
#import "BackgroundSelectorVC.h"

@interface ViewController () <BackgroundSelectorVCDelegate>

@property (weak, nonatomic) IBOutlet UIButton *changeBackgroundButton;
@property (nonatomic, strong) BackgroundSelectorVC *bgColorSelector;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _changeBackgroundButton.layer.cornerRadius = 10;
}
- (IBAction)changeBackgrround:(UIButton *)sender {
    _bgColorSelector = [[BackgroundSelectorVC alloc] init];
    _bgColorSelector.modalPresentationStyle = UIModalPresentationPopover;
    [self presentViewController:_bgColorSelector animated:YES completion:nil];
    _bgColorSelector.delegate = self;
}

- (void)changeBGColor:(nonnull UIColor *)bgColor {
    self.view.backgroundColor = bgColor;
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
