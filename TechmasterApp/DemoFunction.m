//
//  DemoFunction.m
//  TechmasterApp
//
//  Created by admin on 7/14/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"DemoFunction"];
    [self writeln:@"Hello World"];
    [self sayFirstName:@"TuanAnh" andLastName:@"Hoang"];
    float tempDegree = 30.1;
    NSString* result = [NSString stringWithFormat:@"%2.1f C degree equal to %3.1f F", tempDegree,[self celciusToFahrenheit:tempDegree]];
    [self writeln:result];
    [self performSelector:@selector(celciusToFahrenheit)];
    //@(30.1) == [[NSNumber alloc] initWithFloat:30.1]
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
    //[self performSelector:@selector("abc")];
    
}
- (void) sayFirstName:(NSString*) firstname andLastName: (NSString*) lastname{
    NSLog(@"%@ %@", firstname, lastname);
}
- (float) celciusToFahrenheit: (float) degree {
    return degree * 1.8 + 32.0;
}
- (void) celciusToFahrenheit {
    NSLog(@"Do nothing");
}
- (float) celciusToFahrenheit2{
    return 10.1;
}
- (void) celciusToFahrenheit2: (NSNumber*) degree {
    float result = [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
}
@end
