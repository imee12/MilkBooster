//
//  ViewController.m
//  BreastMilkBooster
//
//  Created by Imee Cuison on 3/9/16.
//  Copyright © 2016 Imee Cuison. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *vibrateBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//
////  The function:
//- (void)vibrate {
//    AudioServicesPlaySystemSound (kSystemSoundID_Vibrate);
//}
//
- (IBAction)vibateBtn_click:(id)sender {
   // [self vibrate];
    
    for (int i = 1; i < 60; i++)
        
    {
        [self performSelector:@selector(vibe:) withObject:self afterDelay:i *.9f];
    }


}

-(void)vibe:(id)sender
{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

//  The call from within another method in the same class:
//- (void)myMethod {
//    [self vibrate];
//}

@end
