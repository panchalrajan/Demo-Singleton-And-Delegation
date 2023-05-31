//
//  Student.h
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject {
    NSString *_fullName;
    NSNumber *_studentID;
    NSString *_branch;
    NSNumber *_admissionYear;
    NSNumber *_grade;
}
@property (nonatomic, readonly) NSString *fullName;
@property (nonatomic, readonly) NSNumber *studentID;
@property (nonatomic, readonly) NSString *branch;
@property (nonatomic, readonly) NSNumber *admissionYear;
@property (nonatomic, readwrite) NSNumber *grade;


- (instancetype)initWithFullName:(NSString *)fullName withStudentID:(NSNumber *)studentID  withBranch:(NSString *)branch withAdmissionYear:(NSNumber *)admissionYear andGrade:(NSNumber *)grade;


+ (void) addStudent:(NSString *)fullName withStudentID:(NSNumber *)studentID  withBranch:(NSString *)branch withAdmissionYear:(NSNumber *)admissionYear andGrade:(NSNumber *)grade;


- (void) printListOfProfessors;

@end
NS_ASSUME_NONNULL_END
