//
//  Professor.h
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Professor : NSObject {
    NSString *_fullName;
    NSNumber *_professorID;
    NSString *_subject;
}
@property (nonatomic, readonly) NSString *fullName;
@property (nonatomic, readonly) NSNumber *professorID;
@property (nonatomic, readonly) NSString *subject;

- (instancetype)initWithFullName:(NSString *)fullName withProfessorID:(NSNumber *)professorID  andSubject:(NSString *)subject;

+ (void) addProfessor:(NSString *)fullName withProfessorID:(NSNumber *)professorID  andSubject:(NSString *)subject;
- (void) changeStudentGradeofStudentID:(NSNumber *)studentID to:(NSNumber *)newGrade;

@end

NS_ASSUME_NONNULL_END
