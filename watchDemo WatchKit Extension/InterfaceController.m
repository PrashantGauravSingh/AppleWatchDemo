//
//  InterfaceController.m
//  watchDemo WatchKit Extension
//
//  Created by Retisense on 15/06/18.
//  Copyright © 2018 Retisense. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *weatherLabel;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *weatherImage;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *updateButton;
- (IBAction)UpdateClicked;
- (IBAction)swipeHandle:(id)sender;

@end


@implementation InterfaceController

BOOL updated;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    updated=false;
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)UpdateClicked {
    
    if(updated){
        updated=false;
   [self.weatherLabel setText:@"Sunny"];
    [self.weatherImage setImageNamed:@"sunny"];
    }else{
        updated=true;
        [self.weatherLabel setText:@"Snow"];
        [self.weatherImage setImageNamed:@"snow"];
    }
}

- (IBAction)swipeHandle:(id)sender {
    NSLog(@"Swipe Detected");
}
@end



