//
//  ViewController.m
//  TapMeFast
//
//  Created by John Daratzikis on 16/01/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeInt = 10;
    tapInt = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    
    self.tapMeButton.enabled = NO;
    self.tapMeButton.alpha = 0.5;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)startGame:(id)sender {
    
    if (timeInt == 10) {
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        self.tapMeButton.enabled = YES;
        self.tapMeButton.alpha = 1.0;
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.5;
        
        
        
    }
    
    if (timeInt == 0) {
        
        timeInt = 10;
        tapInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
        
        [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    }
    
    
}



- (IBAction)tapButton:(id)sender {
    
    tapInt += 1;
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", tapInt];
    
}


-(void)startCounter {
    
    timeInt -= 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    
    
    if (timeInt == 0) {
        
        [timer invalidate];
        
        self.tapMeButton.enabled = NO;
        self.tapMeButton.alpha = 0.5;
        
        self.startButton.enabled = YES;
        self.startButton.alpha = 1.0;
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    
}


@end
