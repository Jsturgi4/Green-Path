# Green Path Group Project #
Unit 7:

[X] Completed user stories.

[X]  Project created

[X]  Milestones created

[X] Issues created from user stories

[X] Issues added to project and assigned to specific team members

[X] Updated status of issues in Project board

[X] Sprint planned for next week

[X] GIF of build project: 

http://g.recordit.co/OTus4Rhnmp.gif

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/ucxdqQ9JNd.gif' title='User can log in' width='' alt='Video Walkthrough' />

<img src='http://g.recordit.co/Q9jriT9dYr.gif' title='User can sign in with name and email' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/Q9jriT9dYr.gif' title='Users are authenthicated before logging in' width='' alt='Video Walkthrough' />
<img src='https://recordit.co/I2PpGkRG3d' title='Users can log out and stay logge in across restarts' width='' alt='Video Walkthrough' />



Unit 5, Unit 6:
## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Tracks the amount of personal carbon foot print reduction a user can achieve by choosing greener transportation.

### App Evaluation
- **Category:** Environment friendly 
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Analyzes users distance traveled using enviornmentaly friendly options to calculate reduction in harm to the plant, and connects them to green transportation options.
- **Market:** Anybody who needs to go places! 
- **Habit:** This app could be used as often or unoften as the user wishes.
- **Scope:** First we would find target routes that are green to achieve the end placement, and then calculate the reduction in carbon footprint. 

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in and can access transportation information (routes, options, times).
* App calculates the difference between the green option vs a standard car for the same distance traveled by the user and displays this.
* User can track total reduction of personal carbon foorprint overtime. 
* User can create an account and log in. 



**Optional Nice-to-have Stories**

* Multiple green transportation options. 
* A 'what if' section where a user could predict if they took X route Y times a year what the total reduction in carbon footprint would be. 

### 2. Screen Archetypes

* Login 
* Optional user registers an account - User signs up or logs into their account
* User chooses country, city, state. We will start with 1 major city for demo purposes. 
* Upon selecting route the app will generate carbon reduction for this one time transportation option.
* User will have the option to save this data to their account. 
* A screen that can calculate long term 'what ifs'.


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Find Routes
* Account sign in
* Quick Calculate (one time and long term)


**Flow Navigation** (Screen to Screen)
* Home screen with prominently displayed navigation options....maybe an intro of somesort? 
* If Log-in -> Account 
* If not log in -> choose route
* Choose route -> produce route options
* Option to calculate reduction, if yes then option to sign in and save data, if not then treated as regular transportation look up

**Wireframe**

![Travel Tracker - CodePath Group 16](https://user-images.githubusercontent.com/105025243/195842692-c6ee4e5a-49bd-43a2-9086-990968121a0b.png)

**Models**
- Vehicles

 | Property      | Type     | Description |
 | ------------- | -------- | ------------|
 |vid|string| Alphanumeric string representing the vehicle ID (ie. bus number)|
 |tmstmp|string| Date and local time of the last positional update of the vehicle|
 |lat|string|Latitude position of the vehicle in decimal degrees|
 |lon|string|Longitude position of the vehicle in decimal degrees |
 |hdg|string|Heading of vehicle as a 360o value, where 0o is North, 90o is East, 180o is South and 270o is West|
 |pid|number|Pattern ID of trip currently being executed|
 |rt|string|Route that is currently being executed by the vehicle (ex. “20”)|
 |des|string| Destination of the trip being executed by the vehicle (ex. “Austin”)|



Network Request Outline	
					
						
Home Feed Screen
						
	(Read/GET) Main menu	
				
Choosing The Destination Screen	
					
	(Read/GET) View bus routes	
				
	(Create/GET) Optional account creation or log in	
				
	(Read/GET) The distance of the route		
			
Choosing The Exact Path Screen		
				
	(Read/GET) Bus route/s options and times
					
	(Update/PUT) Update user profile image	
				
Total CO2 Emission Offset Screen	
					
	(Read/GET) The total CO2 emission offset by choosing the green path for that trip	
				
	(Read/GET) Optional for account holders; total amount of saved CO2 to date.	
				






| HTTP Verb     | End Point     | Description   |
| -------------  | ------------- |-------------  |
| `get`          | bustime-response  | root element of response document |
| `get`          | error  |  Message if the processing request results in an error |
| `get`          | vehicle  |  Encapsulates all information for a given vehicle |
| `get`          | vid  | Alphaneumeric number representing the bus ID |
| `get`          | tmstmp  | date and local time of teh last positional update of the vehicle|
| `get`          | lat  |  latitude of the vehicle |
| `get`          | lon  |  longitude of the vehicle |
| `get`          | hdg  | heading of vehicle as a 360 value |

