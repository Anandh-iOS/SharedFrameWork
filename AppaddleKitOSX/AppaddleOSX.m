//
//  AppaddleOSX.m
//  AppaddleKit
//
//  Created by Ayyanar on 22/07/15.
//  Copyright (c) 2015 Mobifluence. All rights reserved.
//

#import "AppaddleOSX.h"

@implementation AppaddleOSX

- (id) initWithURL: (NSURL *)url {
    
    // Call superclass's initializer
    self = [super init];
    if( !self ) return nil;
    self.url=url;
    return self;
}

-(void)get:(NSString *)params
{
    NSString *post = params;
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu",(unsigned long)[postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setURL:self.url];
    [request setHTTPMethod:@"GET"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSData *returnData = [NSURLConnection sendSynchronousRequest: request returningResponse: nil error: nil];
    
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:returnData options:kNilOptions error:nil];
    NSLog(@"%@",result);;
}

-(void)post:(NSString *)params
{
    NSString *post = params;
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu",(unsigned long)[postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setURL:self.url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSData *returnData = [NSURLConnection sendSynchronousRequest: request returningResponse: nil error: nil];
    
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:returnData options:kNilOptions error:nil];
    NSLog(@"%@",result);
}

@end
