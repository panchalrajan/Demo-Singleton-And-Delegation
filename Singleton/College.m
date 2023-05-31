//
//  College.m
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import "College.h"

@implementation College

@synthesize listOfStudents = _listOfStudents;
@synthesize listOfProfessors = _listOfProfessors;

- (instancetype)init {
    self = [super init];
    _listOfStudents = [[NSMutableDictionary alloc] init];
    _listOfProfessors = [[NSMutableDictionary alloc] init];
    return self;
}

+(instancetype)database {
    static College *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void) printListOfProfessors {
    for(NSString *key in [_listOfProfessors allKeys]) {
      NSLog(@"%@",[_listOfProfessors objectForKey:key]);
    }
}

- (void) printListOfStudents {
    for(NSString *key in [_listOfStudents allKeys]) {
      NSLog(@"%@",[_listOfStudents objectForKey:key]);
    }
}

@end
