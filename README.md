# WhatsForDinner
Mobile App for meal decisions and planning

Development Platform: Visual Studio 2017 - Zamaran.forms

Target Platform: Andriod, iOS, Windows Phone

Overview: What's 4 Dinner is an app that is designed to help the indecisive plan their meals. I myself have the problem of not knowing what I want to eat tonight, much less plan for a whole week. Because of this, I am making this app to help those like me.

Features:
- Create a meal schedule based on Preference Parameters (Subscription)(Premium)
- Recommend a meal for tonight (Cook or Eat Out) based on Preference Parameters
- Grocery shopping list based on current items in your fridge and generated meal schedule (Subscription)(Premium)
- Visual ingredients list
- Basic nutrition information (when provided) (Subscription)
- Full nutrition information (when provided) (Premium)
- Add your meal schedule to your mobile phone's calendar app (Premium)
- Notifications to alert you when to start preparing meal for optimum eating time (Premium)
- Automatically notify through text other meal participants when meal is ready (Premium)
- Integration with Spoonacular for Recipes
- Integration with OpenTable for reservations
- Integration with Zomato for Restaraunt search
- Integration with Instacart and AmazonFresh for Grocery ordering
- Integration with Postmates, GrubHub, and DoorDash for Delivery service choices

Preference Parameters:
- Maximum/Minimum nutrition values (Breakfast, Lunch, Dinner, Global) (Premium)
- Cuisine types (Subscription)(Premium)
- Diet types (Subscription)(Premium)
- Allergies
- Number of days/meals to eat out (Breakfast, Lunch, Dinner, Global)(Subscription)(Premium)
- Meals to generate (Breakfast (Subscription)(Premium), Lunch (Subscription)(Premium), Dinner (Subscription)(Premium))
- Number of Servings (Breakfast (Subscription)(Premium), Lunch (Subscription)(Premium), Dinner (Subscription)(Premium), Global)
- Maximum Prep Time (Breakfast, Lunch, Dinner) (Premium)
- Maximum estimated cost (Breakfast, Lunch, Dinner, Global) (Premium)
- Ideal meal time (Breakfast, Lunch, Dinner) (Premium)
- Meal prep start notifications (Breakfast, Lunch, Dinner) (Premium)
- Add to mobile calendar (Premium)
- Meal choices (1 - 3)
- Meal Prep Types (Crock Pot, Bake, Fry, Microwave, Baine Marie, etc...)

Internal AWS API:
The AWS API Gateway will handle communication between clients and the Amazon Dynamo DB which sotres the user information such as:
- Login and UserData
- Favorites
- History
- Schedule

Monetization:
- Free User (Ad Supported)
  - 25 quick meal recipe recommendations per month (Spoonacular API)
  - 25 eat out recommendations per month (Yelp API)
  - Step by Step recipe instructions (When possible)
  - Set 1 recommended meal at a time as your upcoming meal
  - 1 ad shown per recommendation
  
- Ad Free ($4.99 1 time)
  - 25 quick meal recipe recommendations per month (Spoonacular API)
  - 25 eat out recommendations per month (Yelp API)
  - Step by Step recipe instructions (When possible)

- Subscription ($1.99/Month)
  - 50 quick meal recommendations per month (Spoonacular API)
  - Unlimited eat out recommendations (Yelp API)
  - Meal schedule (Up to 1 week)
  - Access to additional preferences
  - Shopping list

- Premium Subscription ($4.99/Month)
  - Unlimited quick meal recommendations (Spoonacular API)
  - Meal schedule (Up to 1 month)
  - Access to all preferences
  - Add schedule to calendar
  - Meal prep notifications
  - Text notifications to custom contacts list

All Recipe Calls:
- SearchRecipesComplex is called first from the API with addRecipeInformation = true
  - Response Example: https://github.com/AbigFUZZYbunny/EatMe/blob/001/Documentation/Img/SearchRecipesComplexResponse.png
  
Quick Recommendation:
The quick recommendations will provide 3 options for meals to eat. When generating the meals, you can select which ingredients you would like included/excluded from the "search". The ingredients will default to your personalization settings, but can be changed on a one-off basis as well.

Meal Schedule:
The meal schedule will get one random meal for each meal slot (breakfast, lunch, dinner) as the preferences are configured, for each day in the schedule (7 days to 31 days). This will not repeat any recipes within a 31 day period. 
