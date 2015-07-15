//
//  DemoSelector.m
//  TechmasterApp
//
//  Created by admin on 7/15/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *labelShow;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self performSelector:@selector(hiddenSlider) withObject:nil afterDelay:2];
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    //[self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:false];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple":@"tao", @"lemon":@"chanh"} waitUntilDone:true];
}
- (void) processData: (NSDictionary*) data{
    NSMutableString* string = [[NSMutableString alloc]init];
    for (NSString* key in data.allKeys){
        [string appendFormat:@"%@ - %@\n",key, [data valueForKey:key]];
        NSLog(@"%@ - %@", key, [data valueForKey: key]);
        //self.labelShow.text = [NSString stringWithFormat:@"%@ - %@",key,[data objectForKey:key]];
        [self.labelShow setText:string];
    }
}
- (void) doCrunchData {
    [NSThread sleepForTimeInterval:3];
}

- (void) hiddenSlider {
    self.slider.hidden = true;
}
@end
