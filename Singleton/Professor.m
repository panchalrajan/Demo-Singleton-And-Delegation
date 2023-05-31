//
//  Professor.m
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import "Professor.h"
#import "College.h"

@implementation Professor

@synthesize fullName = _fullName;
@synthesize professorID = _professorID;
@synthesize subject = _subject;

- (instancetype)initWithFullName:(NSString *)fullName withProfessorID:(NSNumber *)professorID  andSubject:(NSString *)subject  {
    if( self = [super init]) {
        _fullName = fullName;
        _professorID = professorID;
        _subject = subject;
        
        //Adding to Singleton Class
        College *database = [College database];
        [database.listOfProfessors setObject:self forKey:professorID];
    }
  return self;
}

+ (void) addProfessor:(NSString *)fullName withProfessorID:(NSNumber *)professorID  andSubject:(NSString *)subject {
    Professor *professor = [[Professor alloc] initWithFullName:fullName withProfessorID:professorID andSubject:subject];
}

- (NSString *)description {
   return [NSString stringWithFormat:@"%@",_fullName];
}

- (void) changeStudentGradeofStudentID:(NSNumber *)studentID to:(NSNumber *)newGrade {
    College *database = [College database];
    
    Student *tempStudent =  [database.listOfStudents objectForKey:studentID];
    tempStudent.grade = newGrade;
    NSLog(@"%@ Grade Updated to %@",tempStudent, newGrade);
}

@end
