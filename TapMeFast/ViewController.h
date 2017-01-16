//
//  ViewController.h
//  TapMeFast
//
//  Created by John Daratzikis on 16/01/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

    NSTimer *timer;
    
    int timeInt;
    int tapInt;

}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapMeButton;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)tapButton:(id)sender;
- (IBAction)startGame:(id)sender;

@end

