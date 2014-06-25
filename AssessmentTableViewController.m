//
//  AssessmentTableViewController.m
//  Seek Ye 1st
//
//  Created by Bryan Ortiz on 4/15/14.
//  Copyright (c) 2014 UDallas.iOSDevelopement. All rights reserved.
//

#import "AssessmentTableViewController.h"
#import "MyTableViewCell.h"
#import "CheckUpAlertView.h"

@interface AssessmentTableViewController ()
@property(nonatomic) NSLineBreakMode lineBreakMode;

@end

@implementation AssessmentTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self constructSurvey];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)constructSurvey{
    NSMutableArray* se = [[NSMutableArray alloc] init];
    /*[se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Regularly Eat (3 meals a day:  Breakfast/ lunch/dinner)"
                                               actionText:@"Have you regularly been eating 3 meals a day?"
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Regularly Eat (3 meals a day:  Breakfast/ lunch/dinner)"
                                               actionText:@"Have you regularly been eating 3 meals a day?"
                                                 category:PHYSICAL]];
     */
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Regularly Eat (3 meals a day:  Breakfast/ lunch/dinner)"
                                               actionText:@"Hope you are regularly eating at least 3 meals a day."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Eat Nutriously"
                                               actionText:@"Don't forget to eat nutriously."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Exercise"
                                               actionText:@"Don't be lazy...keep exercising."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Preventative Medical Care"
                                               actionText:@"Preventative Medicine is the key to staying healthy.  Hope you are doing your part."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Medical Attention (As Needed)"
                                               actionText:@"Hope you have received the medical attention you have needed."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Time off work (Either in/outside the home, As Needed)"
                                               actionText:@"Time off work is good all around.  Hope you are being good to yourself."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Enjoy Massages"
                                               actionText:@"Ohhh, hope your massages are enjoyable."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"A Fun Physical Activity"
                                               actionText:@"Combining a fun physical activity can also be exercise.  Hope you are enjoying yourself."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Sexual Healing"
                                               actionText:@"How about that sexual healing?  Treat yourself often, if you can."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Plenty of Sleep"
                                               actionText:@"Catching plenty of ZZZZZzzzzz is wonderful.  Hope you are preparing yourself accordingly."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Enjoyable Attire"
                                               actionText:@"If you look good, then you feel good.  Hope you are able to wear fun clothes."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Vacation"
                                               actionText:@"Hope you have been able to either fly, drive, ride, or walk away to a vacation spot of your choosing."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Escape Town (Day or Mini-Vacations)"
                                               actionText:@"Haven't been able to take a long vacation?  Hope you considered escaping town for a day or night."
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Disconnect Electronically (i.e. phones, computers, TV)"
                                               actionText:@"If you are reading this, then you haven't disconnected electronically.  LOL!"
                                                 category:PHYSICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Partake in Self-Reflection"
                                               actionText:@"Have you been able to see your inner beauty or are you dwelling on your flaws?"
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Psychotherapy Assistance"
                                               actionText:@"Psychotherapy is good if you are honest and open to exposing the good, the bad and the ugly.  Good luck in your journey."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Maintain a Diary"
                                               actionText:@"Have you personally verbalized your triumphs, disappointments, concerns and accolades in a diary?  Keep journaling."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Read for enjoyment (not work related)"
                                               actionText:@"You know, even being read to is enjoyable.  Don't forget to consider audio books."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Volunteer in a Community Event where you are not in charge"
                                               actionText:@"Not being in charge all the time is refreshing.  Hope you are learning to let go and let God handle things."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Time off work (Either inside or outside the home, As Needed)"
                                               actionText:@"Taking time off work includes physical and mental separation.  Hope your mind is on leave too."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"De-stress yourself"
                                               actionText:@"Taking very DEEP breaths helps with de-stressing.  Take 3 long, deep breaths and cleanse your lungs."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Share your traits with others "
                                               actionText:@"How is it going in sharing your God-given talents with others?"
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Self-Reflect on your Inner Being"
                                               actionText:@"Do you like the person you are becoming?  If not, awaken your inner being and make a change for the better."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Intellectually Challenge Yourself outside of your comfort zone"
                                               actionText:@"Being able to challenge your brain results in intellectual growth.  Keep calm, get wiser."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Accept Compliments & Gifts from Others"
                                               actionText:@"Have you allowed others to shower you with love?  This is God's way of working through others to show you how much He loves you."
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Be Inquisitive"
                                               actionText:@"Inquiring minds want to know if you are caring for yourself.  How is your inquisition going?"
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Acknowledge NO as an option when considering obligations"
                                               actionText:@"How many times did you say NO to more obligations?"
                                                 category:PSYCHOLOGICAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Visit people you enjoy"
                                               actionText:@"Enjoying your favorite people lately?  If not, what is stopping you?"
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Maintain Contact with notable persons in your life"
                                               actionText:@"Staying in touch with important people in your life helps them too.  Contact your most notable person now."
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Affirm and commend yourself"
                                               actionText:@"Toot your own horn.  Otherwise, you will lose your voice.  Make some noise and show yourself how much you mean to YOU!"
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Show yourself some love"
                                               actionText:@"Love yourself lately?  Hug yourself and know that God loves you very much too."
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Revisit favored books/movies"
                                               actionText:@"How was that favorite book?  Have you seen the movie version?  Escape into the fantasy world of your favorite novel."
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Distinguish and pursue soothing locales, personalities, activities, items"
                                               actionText:@"Take a chance to mingle with others in activities, places or with items you enjoy.  Take a chance and branch out. "
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Shed Some Tears"
                                               actionText:@"Sometimes we must use our tears to see God in all His glory."
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Find Comedic places, persons, things"
                                               actionText:@"They say...Laughter is the best medicine.  Tickle your fancy.  LOL!"
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Communicate Your infuriation by action "
                                               actionText:@"Actions speak louder than words.  Therefore, channel your frustration onto your mattress or punching bag."
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Engage in recreation with Youngsters"
                                               actionText:@"Have you forgotten how much fun you had in grade school playing with your classmates?  Volunteer at a children's hospital and play games with patients."
                                                 category:EMOTIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Enjoy your workday breaks "
                                               actionText:@"Take a break from your workday and walk, talk or nap through your break."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Converse with Co-workers"
                                               actionText:@"How are your communication skills going with your co-workers?"
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Allocate time to focus on completing assignments"
                                               actionText:@"Have you found a condusive place for learning or completing assignments in a timely basis?"
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Identify assignments that stimulate excitement and are gratifying"
                                               actionText:@"How are you classifying your work assignments?  Are you saving the best for last or are you spreading those exciting assignments throughout your day?"
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Set limits with customers and co-workers"
                                               actionText:@"Have you polished your limitation skills or have you caved in?  Be strong and manage your time more efficiently."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Balance your work capacity throughout the day"
                                               actionText:@"Swamped lately at work?  Consider asking for help in completing those big assignments as needed."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Feng shui your work place "
                                               actionText:@"Give life to your work space.  Add a living item."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Seek regular input on assignments so that they are done right the first time"
                                               actionText:@"No time for re-work?  Then get it done right the first time and seek adequate input from others."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Negotiate for human resources (salary and benefits) "
                                               actionText:@"Consider researching cost of living and benefit options provided by your employer and within your industry."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Partake in a peer support group"
                                               actionText:@"Don't go it alone.  Peer support is advantages.  Hope you continue learning in your chosen group."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Create a non-trauma area of expert appeal"
                                               actionText:@"Hope your expert appeals process is going well."
                                                 category:PROFESSIONAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Theologically Reflect"
                                               actionText:@"How have you seen God in your life today?"
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Enjoy Nature"
                                               actionText:@"Have you enjoyed God's creations lately?  If not, start a garden."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Connect Spiritually with your Community"
                                               actionText:@"We were made to be in communion with one another.  How are you contributing to your church community?"
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Be Inspired by others"
                                               actionText:@"Who has been your inspiration today?  Be inspired and blossom."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Appreciate your enthusiasm and hopefulness "
                                               actionText:@"Don't let anyone pop your bubble.  Offer up joy and hopefulness despite any negativity."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Be OK with your ignorance "
                                               actionText:@"Sometimes ignorance is bliss.  Be OK with it."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Recognize significant life events, places, & people & their impact in your life "
                                               actionText:@"Have you noticed God in your life lately through the works of his people, creation and life events?  Open your spiritual eye."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Meditate"
                                               actionText:@"Have you used the meditative sessions in this app yet?  Enjoy!"
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Pray"
                                               actionText:@"Prayer is having a conversation with God.  Talk to him lately?"
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Sing"
                                               actionText:@"Praise the Lord with song.  Can't sing a tune?  Then make an instrument sing instead."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Identify your AHA moments"
                                               actionText:@"Have any Aha moments lately?"
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Sponsor foundations you believe in "
                                               actionText:@"How many foundations do you believe in?  Choose a few or one and sponsor the cause."
                                                 category:SPIRITUAL]];
    [se addObject:[[SurveyEntry alloc] initWithSurveyText:@"Enjoy inspirational works"
                                               actionText:@"Been inspired lately?  Let the Spirit flow and allow yourself to be inspired by everything around you."
                                                 category:SPIRITUAL]];
    
    // XXX this will eventually be set by the segue, not hard-coded
    // XXX Use the categoryString to set the appropriate value for the int category (5 if statements)

    if([self.categoryString isEqualToString:@"Emotional"])
        category = EMOTIONAL;
    if([self.categoryString isEqualToString:@"Spiritual"])
        category = SPIRITUAL;
    if([self.categoryString isEqualToString:@"Psychological"])
        category = PSYCHOLOGICAL;
    if([self.categoryString isEqualToString:@"Physical"])
        category = PHYSICAL;
    if([self.categoryString isEqualToString:@"Professional"])
        category = PROFESSIONAL;
    
    categoryArray = [[NSMutableArray alloc] init];
    for(SurveyEntry* e in se)
        if(e.category == category)
            [categoryArray addObject:e];
    
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSArray* answerArray = [defaults objectForKey:self.categoryString];
    if(categoryArray != nil){
        for(int i = 0; i < [answerArray count]; i++)
            ((SurveyEntry*)([categoryArray objectAtIndex:i])).response = (NSNumber*)[answerArray objectAtIndex:i];
            
    }
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [categoryArray  count];
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
     MyTableViewCell *cell;
     
     // Section 0
     if(indexPath.section == 0){
         cell = (MyTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"section2Cell" forIndexPath:indexPath];
         if(cell == nil){
             cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"section2Cell"];
         }
         UILabel* l = (UILabel*)cell.surveyText;
         //[UILabel setLineBreakMode];
         l.font = [UIFont systemFontOfSize:14];
         [l setLineBreakMode:NSLineBreakByWordWrapping];
         l.text = ((SurveyEntry*)[categoryArray objectAtIndex:indexPath.row]).surveyText;
         l.numberOfLines = 0;
         l.adjustsFontSizeToFitWidth = YES;
         
         
         UISegmentedControl* sc = cell.surveyResponseControl;
         [sc setSelectedSegmentIndex:((SurveyEntry*)[categoryArray objectAtIndex:indexPath.row]).response.intValue];
     }
     
     return cell;
 }

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    int CELL_WIDTH = 280;
    
    NSString *text = ((SurveyEntry*)[categoryArray objectAtIndex:indexPath.row]).surveyText;
    CGFloat width = CELL_WIDTH;
    UIFont *font = [UIFont systemFontOfSize:14];
    NSAttributedString *attributedText =
    [[NSAttributedString alloc]
     initWithString:text
     attributes:@
     {
     NSFontAttributeName: font
     }];
    CGRect rect = [attributedText boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                               context:nil];
    CGSize size = rect.size;
    return size.height + 57;
}



- (IBAction)responseValueDidChange:(UISegmentedControl *)sender {
    //change name
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];
    NSInteger rowNumber = indexPath.row;
    SurveyEntry* survE = (SurveyEntry*)[categoryArray objectAtIndex:rowNumber];
    survE.response = [NSNumber numberWithInt:sender.selectedSegmentIndex];
    [self saveResponses];
    if(sender.selectedSegmentIndex == 1){
        [[UIApplication sharedApplication] cancelAllLocalNotifications];
        [self scheduleNotificationWithText:survE.actionText afterSeconds:30];
    }
}


-(void)saveResponses{
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray* answerArray = [[NSMutableArray alloc] init];
    for(SurveyEntry* s in categoryArray)
        [answerArray addObject:s.response];
    [defaults setObject:answerArray  forKey:self.categoryString];
    [defaults synchronize];
}



-(void)scheduleNotificationWithText:(NSString*) s afterSeconds:(NSTimeInterval) t{
    
    NSDate *itemDate = [NSDate dateWithTimeIntervalSinceNow:t];
    
    UILocalNotification *localNotif = [[UILocalNotification alloc] init];
    if (localNotif == nil)
        return;
    localNotif.fireDate = itemDate;
    localNotif.timeZone = [NSTimeZone defaultTimeZone];
    
    localNotif.alertBody = s; //@"Remember your ministry! Would you like to review your self-care assessment?";
    localNotif.alertAction = NSLocalizedString(@"Yes", nil);
    
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.applicationIconBadgeNumber = 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
}

- (IBAction)showInstructionsAlert:(id)sender {
    //Here we will use the UIAlertView to display random alerts
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Directions" message:@"Read each phrase carefully and grade yourself based on the scale provided: \n1-Habitually \n2-Infrequently \n3-Seldom \n4-Under No Circumstances \n5-Surprise Consideration" delegate:@"item" cancelButtonTitle:nil otherButtonTitles:@"Okay", nil];
    [alert show];

}



/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
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
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
