//
//  LIDViewController.m
//  LoremIpsumDemo
//
//  Created by dav on 5/1/13.
//  Copyright (c) 2013 SekaiNo. All rights reserved.
//

#import "LIDViewController.h"
#import "LoremIpsum.h"

@interface LIDViewController ()
@property (nonatomic, strong) IBOutlet UITextView *textView;
- (IBAction)generateWords:(id)sender;
@end

@implementation LIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (IBAction)generateWords:(id)sender {
  LoremIpsum* loremIpsum = [LoremIpsum new];
  int numWords = random() % 150 + 3;
  NSString *bunchOfWords = [loremIpsum words:numWords];
  self.textView.text = bunchOfWords;
  
}

@end
