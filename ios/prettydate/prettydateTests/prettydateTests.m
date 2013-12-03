//
//  prettydateTests.m
//  prettydateTests
//
//  Created by Maxime Biais on 03/12/2013.
//  Copyright (c) 2013 Automattic. All rights reserved.
//

#import <XCTest/XCTest.h>
#include "PrettyDate.h"

@interface prettydateTests : XCTestCase

@end

@implementation prettydateTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    PrettyDate *prettyDate = [PrettyDate alloc];
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    XCTAssertEqualObjects([prettyDate prettyDate:[dateFormatter stringFromDate:[[NSDate alloc] init]]],
                          @"just now");
}

@end
