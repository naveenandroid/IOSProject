//
//  ViewController.h
//  rafaelBarretoAssignmentFinal
//
//  Created by Rafael Barreto on 10/14/13.
//  Copyright (c) 2013 Rafael Barreto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController



@property (nonatomic, retain) AVAudioPlayer *player;


@property (weak, nonatomic) IBOutlet UISlider *statusGameBar;

@property (weak, nonatomic) IBOutlet UITextView *questionField;


@property (weak, nonatomic) IBOutlet UIButton *button1;

@property (weak, nonatomic) IBOutlet UIButton *button2;

@property (weak, nonatomic) IBOutlet UIButton *button3;

@property (weak, nonatomic) IBOutlet UIButton *button4;

@property (weak, nonatomic) IBOutlet UIButton *buttonIntro;

@property (weak, nonatomic) IBOutlet UIButton *topButton;

@property (weak, nonatomic) IBOutlet UIButton *bottonButton;

@property (weak, nonatomic) IBOutlet UIButton *topbutton2;

@property (weak, nonatomic) IBOutlet UIButton *buttonWhite;




- (IBAction)setButtonInOut:(id)sender;


- (IBAction)buttonPressed1:(id)sender;


- (IBAction)buttonPressed2:(id)sender;


- (IBAction)buttonPressed3:(id)sender;


- (IBAction)buttonPressed4:(id)sender;



- (IBAction)buttonPressedReset:(id)sender;


@end