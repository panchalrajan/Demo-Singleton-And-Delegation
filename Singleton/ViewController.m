//
//  ViewController.m
//  Singleton
//
//  Created by Rajan Panchal on 22/12/22.
//

#import "ViewController.h"
#import "Student.h"
#import "Professor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self generateSomeData];
    Student *student = [[Student alloc] initWithFullName:@"Ujjwal Sharma" withStudentID:@201501340 withBranch:@"Mechanical" withAdmissionYear:@2019 andGrade:@7];
    [student printListOfProfessors];
  
    //--- List of Professors Starts---
    //Ranganathan
    //OP Sharma
    //Mukesh Sharma
    //--- List of Professors Ends ---
    
    Professor *professor = [[Professor alloc] initWithFullName:@"Kunal Khuswaha" withProfessorID:@142148 andSubject:@"Science"];
    [professor changeStudentGradeofStudentID:@201501340 to:@6];
    
    //Ujjwal Sharma Grade Updated to 6
}

- (void) generateSomeData {
    [Student addStudent:@"Rajan Panchal" withStudentID:@20188940 withBranch:@"Mechanical" withAdmissionYear:@2019 andGrade:@6];
    [Student addStudent:@"Tushar Panchal" withStudentID:@20188941 withBranch:@"Computer" withAdmissionYear:@2019 andGrade:@7];
    [Student addStudent:@"Aman Panchal" withStudentID:@20188942 withBranch:@"Software" withAdmissionYear:@2020 andGrade:@8];
    [Professor addProfessor:@"Mukesh Sharma" withProfessorID:@121412 andSubject:@"Mathematics"];
    [Professor addProfessor:@"Ranganathan" withProfessorID:@121400 andSubject:@"Drawing"];
    [Professor addProfessor:@"OP Sharma" withProfessorID:@121384 andSubject:@"Chemistry"];
}

@end
