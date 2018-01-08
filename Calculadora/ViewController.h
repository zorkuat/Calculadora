//
//  ViewController.h
//  Calculadora
//
//  Created by cice on 21/12/17.
//  Copyright © 2017 TATINC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//IBAction es referencia a una visualización.
//Interactive Builder Action: para acciones que tengan su correspondencia en la interfaz
//Interactive Builder Outlet: para salidas por pantalla.

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

- (IBAction)equalPressed:(id)sender;

- (IBAction)dividePressed:(id)sender;

- (IBAction)multiplyPressed:(id)sender;

- (IBAction)plusPressed:(id)sender;

- (IBAction)minusPressed:(id)sender;

- (IBAction)numberPressed:(UIButton *)sender;

@end

