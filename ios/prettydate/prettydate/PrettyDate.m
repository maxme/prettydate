//
//  prettydate.m
//  prettydate
//
//  Created by Maxime Biais on 03/12/2013.
//  Copyright (c) 2013 Automattic. All rights reserved.
//

#import "prettydate.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface PrettyDate()
    - (NSString*) loadJSCodeFromFile:(NSString*) filename;
@end

@implementation PrettyDate

- (NSString*) loadJSCodeFromFile:(NSString*) filename {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:filename ofType:nil];
    NSString *jsCode = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    return jsCode;
}

- (NSString*) prettyDate:(NSString*) time {
    NSString *jsFilename = @"pretty.js";
    NSString *fileData = [self loadJSCodeFromFile:jsFilename];
    JSContext *context = [[JSContext alloc] init];
    NSString *finalJSCode = [NSString stringWithFormat:@"%@\na = prettyDate(\"%@\");", fileData, time];
    JSValue *result = [context evaluateScript:finalJSCode];
    return [result toString];
}

@end
