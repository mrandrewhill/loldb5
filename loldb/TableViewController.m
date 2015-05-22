//
//  TableViewController.m
//  CollectionView
//
//  Created by Yang Chen on 5/18/15.
//
//

#import "TableViewController.h"
#import "MyTableViewCell.h"
@interface TableViewController (){
    NSMutableArray *champions;
    NSMutableArray *championsWinRate;
}

@end




@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    champions = [[NSMutableArray alloc] init];
    [champions addObject:@"annie"];
    [champions addObject:@"braum"];
    [champions addObject:@"fiddlestick"];
    [champions addObject:@"gangplank"];
    [champions addObject:@"gargas"];
    [champions addObject:@"heimerdinger"];
    [champions addObject:@"nasus"];
    [champions addObject:@"nidalee"];
    [champions addObject:@"udyr"];
    [champions addObject:@"xinzhao"];

    
    championsWinRate = [[NSMutableArray alloc] init];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    [championsWinRate addObject:@"51%"];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [champions count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell" forIndexPath:indexPath];
    
    
    
    cell.textLabel.text= [champions objectAtIndex:indexPath.row];
    
    NSString *imageToLoad = [NSString stringWithFormat:@"%@.jpg", cell.textLabel.text];
    cell.imageView.image = [UIImage imageNamed:imageToLoad];
    //cell.rate.text =[championsWinRate objectAtIndex:indexPath.row];
    
    //set background color black
    UIView *myView = [[UIView alloc] init];
    myView.backgroundColor = [UIColor blackColor];
    cell.backgroundView = myView;
    cell.textLabel.backgroundColor = [UIColor blackColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end