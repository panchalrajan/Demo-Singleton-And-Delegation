//
//  Student.m
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import "Student.h"
#import "College.h"

@implementation Student

@synthesize fullName = _fullName;
@synthesize studentID = _studentID;
@synthesize branch = _branch;
@synthesize admissionYear = _admissionYear;
@synthesize grade = _grade;

- (instancetype)initWithFullName:(NSString *)fullName withStudentID:(NSNumber *)studentID  withBranch:(NSString *)branch withAdmissionYear:(NSNumber *)admissionYear andGrade:(NSNumber *)grade {
    if( self = [super init]) {
        _fullName = fullName;
        _studentID = studentID;
        _branch = branch;
        _admissionYear = admissionYear;
        _grade = grade;
        
        //Adding to Singleton Class
        College *database = [College database];
        [database.listOfStudents setObject:self forKey:studentID];
    }
  return self;
}

+ (void) addStudent:(NSString *)fullName withStudentID:(NSNumber *)studentID  withBranch:(NSString *)branch withAdmissionYear:(NSNumber *)admissionYear andGrade:(NSNumber *)grade {
    
    Student *student = [[Student alloc] initWithFullName:fullName withStudentID:studentID  withBranch:branch withAdmissionYear:admissionYear andGrade:grade];
}

- (NSString *)description {
   return [NSString stringWithFormat:@"%@",_fullName];
}

- (void) printListOfProfessors {
    NSLog(@"--- List of Professors Starts---");
    College *database = [College database];
    [database printListOfProfessors];
    NSLog(@"--- List of Professors Ends ---");

}

@end
