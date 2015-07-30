//
//  AppaddleKitIOSTests.m
//  AppaddleKitIOSTests
//
//  Created by Ayyanar on 22/07/15.
//  Copyright (c) 2015 Mobifluence. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import <AppaddleKit/AppaddleKit.h>

@interface AppaddleKitIOSTests : XCTestCase

@end

@implementation AppaddleKitIOSTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSayHello {
    AppaddleIOS *smuck = [[AppaddleIOS alloc] init];
    NSString *greeting = [smuck sayHello];
    XCTAssertTrue([greeting isEqualToString:@"Hello iAppaddle!"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
