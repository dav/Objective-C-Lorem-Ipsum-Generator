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

- (IBAction)generateWords:(id)sender {
  int numWords = random() % 150 + 3;
  NSString *bunchOfWords = [LoremIpsum words:numWords];
  self.textView.text = bunchOfWords;
}

@end
