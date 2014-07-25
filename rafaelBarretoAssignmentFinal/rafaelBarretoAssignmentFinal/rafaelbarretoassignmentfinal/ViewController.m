//
//  ViewController.m
//  rafaelBarretoAssignmentFinal
//
//  Created by Rafael Barreto on 10/14/13.
//  Copyright (c) 2013 Rafael Barreto. All rights reserved.
//


#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>


@interface ViewController ()

@end

int r = 0;
int statusCounter = 0;
NSArray *questions;
NSString *botao1;
NSString *botao2;
NSString *botao3;
NSString *botao4;
NSString *resposta;
int universalCounter = 0;
NSString *respostaFinal;
NSString *respostaFinal2;
AVAudioPlayer *player;


@implementation ViewController


- (void)viewDidLoad
{
    
    _buttonIntro.hidden = NO;
    _topButton.hidden = YES;
    _topbutton2.hidden = YES;
    _bottonButton.hidden = YES;
    _buttonWhite.hidden = YES;
    
    NSArray *questions = [[NSArray alloc] initWithObjects:
                          @"What's the name of the city that has the world's famous figure with open arms: the Cristo Redentor." ,
                          @"São Paulo" ,
                          @"Rio de Janeiro" ,
                          @"Bahia" ,
                          @"Espirito Santo" ,
                          @"Rio de Janeiro" ,
                          
                          @"Brazil is the country that eat more pizza in the world. Which province is responsible for more than 50% of this number?" ,
                          @"Rio de Janeiro" ,
                          @"Sao Paulo" ,
                          @"Brasília" ,
                          @"Manaus" ,
                          @"Sao Paulo" ,
                          
                          @"Whats the name of the Capital of Brazil?" ,
                          @"Brasilia" ,
                          @"Rio de Janeiro" ,
                          @"São Paulo" ,
                          @"Santos" ,
                          @"Brasilia" ,
                          
                          @"Who colonise Brazil?" ,
                          @"Portugal" ,
                          @"North Africa" ,
                          @"South Africa" ,
                          @"Spain" ,
                          @"Portugal" ,
                          
                          @"Whats is the official Language Speak in Brazil?" ,
                          @"French" ,
                          @"Spanish" ,
                          @"Africain" ,
                          @"Portuguese" ,
                          @"Portuguese" ,
                          
                          @"Which month happens the famous Carnaval in Brazil?" ,
                          @"January" ,
                          @"Dezember" ,
                          @"September" ,
                          @"February" ,
                          @"February" ,
                          
                          @"How many World Cup Brazil has been in?" ,
                          @"11" ,
                          @"12" ,
                          @"13" ,
                          @"All of them" ,
                          @"All of them" ,
                          
                          @"Caipirinha is the most famous drink in Brazil and its made from?" ,
                          @"Tequila" ,
                          @"Rum" ,
                          @"Cachaca" ,
                          @"Whiskey" ,
                          @"Cachaca" ,
                          
                          @"How big is the population in São Paulo" ,
                          @"Around 11.000.000" ,
                          @"Around 3.000.000" ,
                          @"Around 5.000.000" ,
                          @"Around 1.000.000" ,
                          @"Around 11.000.000" ,
                          
                          @"Wich ocean you can see at the brazilian Beaches" ,
                          @"Pacific Ocean" ,
                          @"Atlantic Ocean" ,
                          @"Indian Ocean" ,
                          @"Arctic Ocean" ,
                          @"Atlantic Ocean" ,
                          
                          @"Oh ow something s wrong!" ,
                          @"crash" ,
                          @"crash" ,
                          @"crash" ,
                          @"crash" ,
                          @"crash" ,
                          nil];
    
    r = arc4random() % 10;
    
    r = r * 6;
    if (r >=54)
    {
        r = 0;
    }
    
    _statusGameBar.value = statusCounter;
    
    _questionField.text = [NSString stringWithFormat:@"%@", [questions objectAtIndex: r]];
    
    
    r = r + 1; botao1 = [questions objectAtIndex: r];[_button1 setTitle: botao1 forState:UIControlStateNormal];
    r = r + 1; botao2 = [questions objectAtIndex: r];[_button2 setTitle: botao2 forState:UIControlStateNormal];
    r = r + 1; botao3 = [questions objectAtIndex: r];[_button3 setTitle: botao3 forState:UIControlStateNormal];
    r = r + 1; botao4 = [questions objectAtIndex: r];[_button4 setTitle: botao4 forState:UIControlStateNormal];
    r = r + 1;
    
    resposta = [questions objectAtIndex: r];
    
    r = r + 1;
    
    NSString* resourcePath = [[NSBundle mainBundle] resourcePath];
    resourcePath = [resourcePath stringByAppendingString:@"/LOOP-BEAT BOX C SAMBA.mp3"];
    NSLog(@"Path to play: %@", resourcePath);
    NSError* err;
    //Initialize our player pointing to the path to our resource
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:
              [NSURL fileURLWithPath:resourcePath] error:&err];
    
    if( err ){
        //bail!
        NSLog(@"Failed with reason: %@", [err localizedDescription]);
    }
    else{
        //set our delegate and begin playback
        //   player.delegate = self; //i have no idea why this line just came wit the code i copy lol
        [player play];
        player.numberOfLoops = -1;
        player.currentTime = 0;
        player.volume = 1.0;
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressedReset:(id)sender
{
    _buttonIntro.hidden = YES;
    
    _topButton.hidden = YES;
    _topbutton2.hidden = YES;
    _bottonButton.hidden = YES;
    _buttonWhite.hidden = YES;
    
    r = arc4random() % 10;
    
    r = r * 6;
    
    if (r >=55)
    {
        r = 0;
    }
    
    universalCounter = 0;
    
    statusCounter = 1;
    
    _statusGameBar.value = statusCounter;
    
    [player stop];
}



- (IBAction)setButtonInOut:(id)sender
{
    _topButton.hidden = YES;
    _topbutton2.hidden = YES;
    _bottonButton.hidden = YES;
    _buttonWhite.hidden = YES;
    
    
}

- (IBAction)buttonPressed1:(id)sender
{
    ++statusCounter;
    
    if (statusCounter <= 5)
    {
        if ([resposta isEqualToString: botao1])
        {
            universalCounter = universalCounter + 1;
        }
        
        
        NSArray *questions = [[NSArray alloc] initWithObjects:
                              @"What's the name of the city that has the world's famous figure with open arms: the Cristo Redentor." ,
                              @"São Paulo" ,
                              @"Rio de Janeiro" ,
                              @"Bahia" ,
                              @"Espirito Santo" ,
                              @"Rio de Janeiro" ,
                              
                              @"Brazil is the country that eat more pizza in the world. Which province is responsible for more than 50% of this number?" ,
                              @"Rio de Janeiro" ,
                              @"Sao Paulo" ,
                              @"Brasília" ,
                              @"Manaus" ,
                              @"Sao Paulo" ,
                              
                              @"Whats the name of the Capital of Brazil?" ,
                              @"Brasilia" ,
                              @"Rio de Janeiro" ,
                              @"São Paulo" ,
                              @"Santos" ,
                              @"Brasilia" ,
                              
                              @"Who colonise Brazil?" ,
                              @"Portugal" ,
                              @"North Africa" ,
                              @"South Africa" ,
                              @"Spain" ,
                              @"Portugal" ,
                              
                              @"Whats is the official Language Speak in Brazil?" ,
                              @"French" ,
                              @"Spanish" ,
                              @"Africain" ,
                              @"Portuguese" ,
                              @"Portuguese" ,
                              
                              @"Which month happens the famous Carnaval in Brazil?" ,
                              @"January" ,
                              @"Dezember" ,
                              @"September" ,
                              @"February" ,
                              @"February" ,
                              
                              @"How many World Cup Brazil has been in?" ,
                              @"11" ,
                              @"12" ,
                              @"13" ,
                              @"All of them" ,
                              @"All of them" ,
                              
                              @"Caipirinha is the most famous drink in Brazil and its made from?" ,
                              @"Tequila" ,
                              @"Rum" ,
                              @"Cachaca" ,
                              @"Whiskey" ,
                              @"Cachaca" ,
                              
                              @"How big is the population in São Paulo" ,
                              @"Around 11.000.000" ,
                              @"Around 3.000.000" ,
                              @"Around 5.000.000" ,
                              @"Around 1.000.000" ,
                              @"Around 11.000.000" ,
                              
                              @"Wich ocean you can see at the brazilian Beaches" ,
                              @"Pacific Ocean" ,
                              @"Atlantic Ocean" ,
                              @"Indian Ocean" ,
                              @"Arctic Ocean" ,
                              @"Atlantic Ocean" ,
                              
                              @"Oh ow something s wrong!" ,
                              @"Sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              nil];
        
        _statusGameBar.value = statusCounter;
        
        _questionField.text = [NSString stringWithFormat:@"%@", [questions objectAtIndex: r]];
        
        r = r + 1; botao1 = [questions objectAtIndex: r];[_button1 setTitle: botao1 forState:UIControlStateNormal];
        r = r + 1; botao2 = [questions objectAtIndex: r];[_button2 setTitle: botao2 forState:UIControlStateNormal];
        r = r + 1; botao3 = [questions objectAtIndex: r];[_button3 setTitle: botao3 forState:UIControlStateNormal];
        r = r + 1; botao4 = [questions objectAtIndex: r];[_button4 setTitle: botao4 forState:UIControlStateNormal];
        r = r + 1;
        
        resposta = [questions objectAtIndex: r];
        
        if (r >= 55)
        {
            r = -1;
        }
        
        r = r + 1;
        
    }
    else
    {
        if ([resposta isEqualToString: botao1])
        {
            universalCounter = universalCounter + 1;
        }
        switch (universalCounter)
        {
                
            case 0:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 0 correct answers"];
            case 1:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 1 correct answers"];
            case 2:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 2 correct answers"];
                break;
            case 3:
                respostaFinal = [NSString stringWithFormat:@"Good job!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 3 correct answers"];
                break;
            case 4:
                respostaFinal = [NSString stringWithFormat:@"Excellent work!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 4 correct answers"];
                break;
            case 5:
                respostaFinal = [NSString stringWithFormat:@"You are a genius!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 5 correct answers"];
                break;
                
            case 6:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
            default:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
        }
        
        [player play];
        
        _buttonIntro.hidden = NO;
        
        _topButton.hidden = NO;
        _topbutton2.hidden = NO;
        _bottonButton.hidden = NO;
        _buttonWhite.hidden = NO;
        
        [_topbutton2 setTitle: respostaFinal forState:UIControlStateNormal];
        [_topButton setTitle: respostaFinal2 forState:UIControlStateNormal];
        
        
        //       UIAlertView *message = [[UIAlertView alloc] initWithTitle:respostaFinal message:respostaFinal2 delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil];
        
        //
        //       [message show];
        //
    }
    
}



- (IBAction)buttonPressed2:(id)sender
{
    ++statusCounter;
    
    if (statusCounter <= 5)
    {
        if ([resposta isEqualToString: botao2])
        {
            universalCounter = universalCounter + 1;
        }
        
        
        NSArray *questions = [[NSArray alloc] initWithObjects:
                              @"What's the name of the city that has the world's famous figure with open arms: the Cristo Redentor." ,
                              @"São Paulo" ,
                              @"Rio de Janeiro" ,
                              @"Bahia" ,
                              @"Espirito Santo" ,
                              @"Rio de Janeiro" ,
                              
                              @"Brazil is the country that eat more pizza in the world. Which province is responsible for more than 50% of this number?" ,
                              @"Rio de Janeiro" ,
                              @"Sao Paulo" ,
                              @"Brasília" ,
                              @"Manaus" ,
                              @"Sao Paulo" ,
                              
                              @"Whats the name of the Capital of Brazil?" ,
                              @"Brasilia" ,
                              @"Rio de Janeiro" ,
                              @"São Paulo" ,
                              @"Santos" ,
                              @"Brasilia" ,
                              
                              @"Who colonise Brazil?" ,
                              @"Portugal" ,
                              @"North Africa" ,
                              @"South Africa" ,
                              @"Spain" ,
                              @"Portugal" ,
                              
                              @"Whats is the official Language Speak in Brazil?" ,
                              @"French" ,
                              @"Spanish" ,
                              @"Africain" ,
                              @"Portuguese" ,
                              @"Portuguese" ,
                              
                              @"Which month happens the famous Carnaval in Brazil?" ,
                              @"January" ,
                              @"Dezember" ,
                              @"September" ,
                              @"February" ,
                              @"February" ,
                              
                              @"How many World Cup Brazil has been in?" ,
                              @"11" ,
                              @"12" ,
                              @"13" ,
                              @"All of them" ,
                              @"All of them" ,
                              
                              @"Caipirinha is the most famous drink in Brazil and its made from?" ,
                              @"Tequila" ,
                              @"Rum" ,
                              @"Cachaca" ,
                              @"Whiskey" ,
                              @"Cachaca" ,
                              
                              @"How big is the population in São Paulo" ,
                              @"Around 11.000.000" ,
                              @"Around 3.000.000" ,
                              @"Around 5.000.000" ,
                              @"Around 1.000.000" ,
                              @"Around 11.000.000" ,
                              
                              @"Wich ocean you can see at the brazilian Beaches" ,
                              @"Pacific Ocean" ,
                              @"Atlantic Ocean" ,
                              @"Indian Ocean" ,
                              @"Arctic Ocean" ,
                              @"Atlantic Ocean" ,
                              
                              @"Oh ow something s wrong!" ,
                              @"Sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              nil];
        
        _statusGameBar.value = statusCounter;
        
        _questionField.text = [NSString stringWithFormat:@"%@", [questions objectAtIndex: r]];
        
        r = r + 1; botao1 = [questions objectAtIndex: r];[_button1 setTitle: botao1 forState:UIControlStateNormal];
        r = r + 1; botao2 = [questions objectAtIndex: r];[_button2 setTitle: botao2 forState:UIControlStateNormal];
        r = r + 1; botao3 = [questions objectAtIndex: r];[_button3 setTitle: botao3 forState:UIControlStateNormal];
        r = r + 1; botao4 = [questions objectAtIndex: r];[_button4 setTitle: botao4 forState:UIControlStateNormal];
        r = r + 1;
        
        resposta = [questions objectAtIndex: r];
        
        if (r >= 55)
        {
            r = -1;
        }
        
        r = r + 1;
        
    }
    else
    {
        if ([resposta isEqualToString: botao2])
        {
            universalCounter = universalCounter + 1;
        }
        switch (universalCounter)
        {
                
            case 0:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 0 correct answers"];
            case 1:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 1 correct answers"];
            case 2:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 2 correct answers"];
                break;
            case 3:
                respostaFinal = [NSString stringWithFormat:@"Good job!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 3 correct answers"];
                break;
            case 4:
                respostaFinal = [NSString stringWithFormat:@"Excellent work!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 4 correct answers"];
                break;
            case 5:
                respostaFinal = [NSString stringWithFormat:@"You are a genius!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 5 correct answers"];
                break;
                
            case 6:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
            default:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
        }
        
        [player play];
        
        _buttonIntro.hidden = NO;
        
        
        _topButton.hidden = NO;
        _topbutton2.hidden = NO;
        _bottonButton.hidden = NO;
        _buttonWhite.hidden = NO;
        
        [_topbutton2 setTitle: respostaFinal forState:UIControlStateNormal];
        [_topButton setTitle: respostaFinal2 forState:UIControlStateNormal];
        
        
        //        UIAlertView *message = [[UIAlertView alloc] initWithTitle:respostaFinal message:respostaFinal2 delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil];
        //        [message show];
        
    }
    
}


- (IBAction)buttonPressed3:(id)sender

{
    ++statusCounter;
    
    if (statusCounter <= 5)
    {
        if ([resposta isEqualToString: botao3])
        {
            universalCounter = universalCounter + 1;
        }
        
        
        NSArray *questions = [[NSArray alloc] initWithObjects:
                              @"What's the name of the city that has the world's famous figure with open arms: the Cristo Redentor." ,
                              @"São Paulo" ,
                              @"Rio de Janeiro" ,
                              @"Bahia" ,
                              @"Espirito Santo" ,
                              @"Rio de Janeiro" ,
                              
                              @"Brazil is the country that eat more pizza in the world. Which province is responsible for more than 50% of this number?" ,
                              @"Rio de Janeiro" ,
                              @"Sao Paulo" ,
                              @"Brasília" ,
                              @"Manaus" ,
                              @"Sao Paulo" ,
                              
                              @"Whats the name of the Capital of Brazil?" ,
                              @"Brasilia" ,
                              @"Rio de Janeiro" ,
                              @"São Paulo" ,
                              @"Santos" ,
                              @"Brasilia" ,
                              
                              @"Who colonise Brazil?" ,
                              @"Portugal" ,
                              @"North Africa" ,
                              @"South Africa" ,
                              @"Spain" ,
                              @"Portugal" ,
                              
                              @"Whats is the official Language Speak in Brazil?" ,
                              @"French" ,
                              @"Spanish" ,
                              @"Africain" ,
                              @"Portuguese" ,
                              @"Portuguese" ,
                              
                              @"Which month happens the famous Carnaval in Brazil?" ,
                              @"January" ,
                              @"Dezember" ,
                              @"September" ,
                              @"February" ,
                              @"February" ,
                              
                              @"How many World Cup Brazil has been in?" ,
                              @"11" ,
                              @"12" ,
                              @"13" ,
                              @"All of them" ,
                              @"All of them" ,
                              
                              @"Caipirinha is the most famous drink in Brazil and its made from?" ,
                              @"Tequila" ,
                              @"Rum" ,
                              @"Cachaca" ,
                              @"Whiskey" ,
                              @"Cachaca" ,
                              
                              @"How big is the population in São Paulo" ,
                              @"Around 11.000.000" ,
                              @"Around 3.000.000" ,
                              @"Around 5.000.000" ,
                              @"Around 1.000.000" ,
                              @"Around 11.000.000" ,
                              
                              @"Wich ocean you can see at the brazilian Beaches" ,
                              @"Pacific Ocean" ,
                              @"Atlantic Ocean" ,
                              @"Indian Ocean" ,
                              @"Arctic Ocean" ,
                              @"Atlantic Ocean" ,
                              
                              @"Oh ow something s wrong!" ,
                              @"Sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              nil];
        
        _statusGameBar.value = statusCounter;
        
        _questionField.text = [NSString stringWithFormat:@"%@", [questions objectAtIndex: r]];
        
        r = r + 1; botao1 = [questions objectAtIndex: r];[_button1 setTitle: botao1 forState:UIControlStateNormal];
        r = r + 1; botao2 = [questions objectAtIndex: r];[_button2 setTitle: botao2 forState:UIControlStateNormal];
        r = r + 1; botao3 = [questions objectAtIndex: r];[_button3 setTitle: botao3 forState:UIControlStateNormal];
        r = r + 1; botao4 = [questions objectAtIndex: r];[_button4 setTitle: botao4 forState:UIControlStateNormal];
        r = r + 1;
        
        resposta = [questions objectAtIndex: r];
        
        if (r >= 55)
        {
            r = -1;
        }
        
        r = r + 1;
        
    }
    else
    {
        if ([resposta isEqualToString: botao3])
        {
            universalCounter = universalCounter + 1;
        }
        switch (universalCounter)
        {
                
            case 0:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 0 correct answers"];
            case 1:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 1 correct answers"];
            case 2:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 2 correct answers"];
                break;
            case 3:
                respostaFinal = [NSString stringWithFormat:@"Good job!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 3 correct answers"];
                break;
            case 4:
                respostaFinal = [NSString stringWithFormat:@"Excellent work!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 4 correct answers"];
                break;
            case 5:
                respostaFinal = [NSString stringWithFormat:@"You are a genius!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 5 correct answers"];
                break;
                
            case 6:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
            default:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
        }
        
        [player play];
        
        _buttonIntro.hidden = NO;
        _topButton.hidden = NO;
        _topbutton2.hidden = NO;
        _bottonButton.hidden = NO;
        _buttonWhite.hidden = NO;
        
        [_topbutton2 setTitle: respostaFinal forState:UIControlStateNormal];
        [_topButton setTitle: respostaFinal2 forState:UIControlStateNormal];
        
        
        
        //        UIAlertView *message = [[UIAlertView alloc] initWithTitle:respostaFinal message:respostaFinal2 delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil];
        //        [message show];
        
    }
}



- (IBAction)buttonPressed4:(id)sender
{
    ++statusCounter;
    
    if (statusCounter <= 5)
    {
        if ([resposta isEqualToString: botao4])
        {
            universalCounter = universalCounter + 1;
        }
        
        
        NSArray *questions = [[NSArray alloc] initWithObjects:
                              @"What's the name of the city that has the world's famous figure with open arms: the Cristo Redentor." ,
                              @"São Paulo" ,
                              @"Rio de Janeiro" ,
                              @"Bahia" ,
                              @"Espirito Santo" ,
                              @"Rio de Janeiro" ,
                              
                              @"Brazil is the country that eat more pizza in the world. Which province is responsible for more than 50% of this number?" ,
                              @"Rio de Janeiro" ,
                              @"Sao Paulo" ,
                              @"Brasília" ,
                              @"Manaus" ,
                              @"Sao Paulo" ,
                              
                              @"Whats the name of the Capital of Brazil?" ,
                              @"Brasilia" ,
                              @"Rio de Janeiro" ,
                              @"São Paulo" ,
                              @"Santos" ,
                              @"Brasilia" ,
                              
                              @"Who colonise Brazil?" ,
                              @"Portugal" ,
                              @"North Africa" ,
                              @"South Africa" ,
                              @"Spain" ,
                              @"Portugal" ,
                              
                              @"Whats is the official Language Speak in Brazil?" ,
                              @"French" ,
                              @"Spanish" ,
                              @"Africain" ,
                              @"Portuguese" ,
                              @"Portuguese" ,
                              
                              @"Which month happens the famous Carnaval in Brazil?" ,
                              @"January" ,
                              @"Dezember" ,
                              @"September" ,
                              @"February" ,
                              @"February" ,
                              
                              @"How many World Cup Brazil has been in?" ,
                              @"11" ,
                              @"12" ,
                              @"13" ,
                              @"All of them" ,
                              @"All of them" ,
                              
                              @"Caipirinha is the most famous drink in Brazil and its made from?" ,
                              @"Tequila" ,
                              @"Rum" ,
                              @"Cachaca" ,
                              @"Whiskey" ,
                              @"Cachaca" ,
                              
                              @"How big is the population in São Paulo" ,
                              @"Around 11.000.000" ,
                              @"Around 3.000.000" ,
                              @"Around 5.000.000" ,
                              @"Around 1.000.000" ,
                              @"Around 11.000.000" ,
                              
                              @"Wich ocean you can see at the brazilian Beaches" ,
                              @"Pacific Ocean" ,
                              @"Atlantic Ocean" ,
                              @"Indian Ocean" ,
                              @"Arctic Ocean" ,
                              @"Atlantic Ocean" ,
                              
                              @"Oh ow something s wrong!" ,
                              @"Sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              @"sorry" ,
                              nil];
        
        _statusGameBar.value = statusCounter;
        
        _questionField.text = [NSString stringWithFormat:@"%@", [questions objectAtIndex: r]];
        
        r = r + 1; botao1 = [questions objectAtIndex: r];[_button1 setTitle: botao1 forState:UIControlStateNormal];
        r = r + 1; botao2 = [questions objectAtIndex: r];[_button2 setTitle: botao2 forState:UIControlStateNormal];
        r = r + 1; botao3 = [questions objectAtIndex: r];[_button3 setTitle: botao3 forState:UIControlStateNormal];
        r = r + 1; botao4 = [questions objectAtIndex: r];[_button4 setTitle: botao4 forState:UIControlStateNormal];
        r = r + 1;
        
        resposta = [questions objectAtIndex: r];
        
        if (r >= 55)
        {
            r = -1;
        }
        
        r = r + 1;
        
    }
    else
    {
        if ([resposta isEqualToString: botao4])
        {
            universalCounter = universalCounter + 1;
        }
        switch (universalCounter)
        {
                
            case 0:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 0 correct answers"];
            case 1:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 1 correct answers"];
            case 2:
                respostaFinal = [NSString stringWithFormat:@"Please try again"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 2 correct answers"];
                break;
            case 3:
                respostaFinal = [NSString stringWithFormat:@"Good job!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 3 correct answers"];
                break;
            case 4:
                respostaFinal = [NSString stringWithFormat:@"Excellent work!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 4 correct answers"];
                break;
            case 5:
                respostaFinal = [NSString stringWithFormat:@"You are a genius!"];
                respostaFinal2 = [NSString stringWithFormat:@"You had 5 correct answers"];
                break;
                
            case 6:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
            default:
                respostaFinal = [NSString stringWithFormat:@"Huston"];
                respostaFinal2 = [NSString stringWithFormat:@"we have a problem"];
                break;
        }
        
        [player play];
        
        _buttonIntro.hidden = NO;
        _topButton.hidden = NO;
        _topbutton2.hidden = NO;
        _bottonButton.hidden = NO;
        _buttonWhite.hidden = NO;
        
        [_topbutton2 setTitle: respostaFinal forState:UIControlStateNormal];
        [_topButton setTitle: respostaFinal2 forState:UIControlStateNormal];
        
        
        
        //        UIAlertView *message = [[UIAlertView alloc] initWithTitle:respostaFinal message:respostaFinal2 delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil];
        //        [message show];
        
    }
}

@end