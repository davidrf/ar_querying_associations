* How would you return all the recipes in your database?
Recipe.all
* How would you return all the comments in your database?
Comment.all
* How would you return the most recent recipe posted in your database?
Recipe.order(:created_at).last
* How would you return all the comments of the most recent recipe in your database?
Recipe.order(:created_at).last.comments
* How would you return the most recent comment of all your comments?
Comment.order(:created_at).last
* How would you return the recipe associated with the most recent comment in your database?
Comment.order(:created_at).last.recipe
* How would you return all comments that include the string `brussels` in them?
Comment.where("text LIKE ?", "%brussels%")
