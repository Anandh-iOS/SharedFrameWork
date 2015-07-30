//
//  AppaddleOSX.h
//  AppaddleKit
//
//  Created by Ayyanar on 22/07/15.
//  Copyright (c) 2015 Mobifluence. All rights reserved.
//

#import "Appaddle.h"

@interface AppaddleOSX : Appaddle
@property (nonatomic,strong) NSURL *url;

- (id) initWithURL: (NSURL *)url;
-(void)get:(NSString *)params;
-(void)post:(NSString *)params;

@end
