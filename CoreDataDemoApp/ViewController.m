//
//  ViewController.m
//  CoreDataDemoApp
//
//  Created by Student-004 on 06/12/16.
//  Copyright © 2016 Divesh. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
#import "Department.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insertDB:(id)sender {
    
    UIApplication * myapplication =[UIApplication sharedApplication];
    
    AppDelegate *mydelegate =(AppDelegate *)  myapplication.delegate;
    NSManagedObjectContext * context = mydelegate.managedObjectContext;
    
    
    Employee *e1 = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
    
    e1.empId =[NSNumber numberWithInt:1];
    e1.empName =@"Divesh";
    e1.empDepartment=@"iOS Developer";
    e1.empSal=[NSNumber numberWithInt:6000000];
    
    
    Employee *e2 = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
    
    e2.empId =[NSNumber numberWithInt:1];
    e2.empName =@"Sandesh";
    e2.empDepartment=@"Android Developer";
    e2.empSal=[NSNumber numberWithInt:6500000];
    
    
    Employee *e3 = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:context];
    
    e3.empId =[NSNumber numberWithInt:1];
    e3.empName =@"Vaishali";
    e3.empDepartment=@"Doctor";
    e3.empSal=[NSNumber numberWithInt:6800000];
    
    
    Department *d1 = [NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:context];
    
    d1.depatID =[NSNumber numberWithInt:100];
    d1.departName= @"Software";
    
    
    Department *d2 = [NSEntityDescription insertNewObjectForEntityForName:@"Department" inManagedObjectContext:context];
    
    d2.depatID =[NSNumber numberWithInt:200];
    d2.departName= @"QA";

    
    [d1 addContainsEmpObject:e1];
    [d1 addContainsEmpObject:e2];
    [d2 addContainsEmpObject:e3];
    
    [context save:nil];
    
    
    
    
    
    
}

- (IBAction)readDB:(id)sender {
    
    
        UIApplication * myapplication =[UIApplication sharedApplication];
        
        AppDelegate *mydelegate =(AppDelegate *)  myapplication.delegate;
        NSManagedObjectContext * context = mydelegate.managedObjectContext;
    
    
    NSFetchRequest *request =[NSFetchRequest fetchRequestWithEntityName:@"Department"];
    
    NSArray *result =[context executeFetchRequest:request error:nil];
    
    for(Department *temp in result){
        
        
        NSLog(@"%i   %@",[temp.depatID intValue], temp.departName);
        
        for(Employee *tempemp in temp.containsEmp){
            
            NSLog(@"%i   %@   %@   %i",[tempemp.empId intValue],tempemp.empName,tempemp.empDepartment,[tempemp.empSal intValue]);
        }
    }
    
    
    
    
    
    
    
}
@end
