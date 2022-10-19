# Green Path Group Project #

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

