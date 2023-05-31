//
//  BackgroundSelectorVC.m
//  Delegation
//
//  Created by Rajan Panchal on 22/12/22.
//

#import "BackgroundSelectorVC.h"

@interface BackgroundSelectorVC ()

@property (weak, nonatomic) IBOutlet UIButton *yellowColorButton;
@property (weak, nonatomic) IBOutlet UIButton *purpleColorButton;
@property (weak, nonatomic) IBOutlet UIButton *greenColorButton;

@end

@implementation BackgroundSelectorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Adding Radius to Button Egdes
    _yellowColorButton.layer.cornerRadius = 20;
    _purpleColorButton.layer.cornerRadius = 20;
    _greenColorButton.layer.cornerRadius = 20;
}


- (IBAction)yellowColorSelected:(UIButton *)sender {
    [self.delegate changeBGColor:[UIColor systemYellowColor]];
}

- (IBAction)purpleColorSelected:(UIButton *)sender {
    [self.delegate changeBGColor:[UIColor systemPurpleColor]];
}

- (IBAction)greenButtonSelected:(UIButton *)sender {
    [self.delegate changeBGColor:[UIColor systemGreenColor]];
}
@end
