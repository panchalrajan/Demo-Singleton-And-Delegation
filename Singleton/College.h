//
//  College.h
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Professor.h"

NS_ASSUME_NONNULL_BEGIN

@interface College : NSObject {
    NSMutableDictionary *_listOfStudents;
    NSMutableDictionary *_listOfProfessors;
}

//Implementing Dictionary so we can optimize search using ID
@property (nonatomic, strong) NSMutableDictionary<NSNumber *, Student *> *listOfStudents;
@property (nonatomic, strong) NSMutableDictionary<NSNumber *, Professor *> *listOfProfessors;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)database;
- (void) printListOfProfessors;
- (void) printListOfStudents;
@end

NS_ASSUME_NONNULL_END
