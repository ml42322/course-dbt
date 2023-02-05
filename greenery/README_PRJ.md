### Assignment 1 Questions and Answers
- How many users do we have? 130
- On average, how many orders do we receive per hour? 7.52
- On average, how long does an order take from being placed to being delivered? 3.89 days
- How many users have only made one purchase? Two purchases? Three+ purchases? 25, 28, 71
- On average, how many unique sessions do we have per hour? 16.32

### Assignment 2 Questions and Answers
- What is our user repeat rate? 0.766667 (delivered orders only)
- What are good indicators of a user who will likely purchase again? What about indicators of users who are likely NOT to purchase again? If you had more data, what features would you want to look into to answer this question?
    - Likely to purchase again: repeat visits to the site, basket with items
    - Likely to not purchase again: returned items, poor customer reviews/customer complaints 

### Assignment 3 Questions and Answers
- What is our overall conversion rate? 0.624567
- What is our conversion rate by product?
PRODUCT_NAME	P.UNIQUE_PURCHASE_SESSIONS/PV.UNIQUE_VIEW_SESSIONS
ZZ Plant	0.539683
String of pearls	0.609375
Spider Plant	0.474576
Snake Plant	0.39726
Rubber Plant	0.518519
Pothos	0.344262
Ponytail Palm	0.4
Pink Anthurium	0.418919
Pilea Peperomioides	0.474576
Philodendron	0.483871
Peace Lily	0.409091
Orchid	0.453333
Monstera	0.510204
Money Tree	0.464286
Majesty Palm	0.492537
Jade Plant	0.478261
Fiddle Leaf Fig	0.5
Ficus	0.426471
Dragon Tree	0.467742
Devil's Ivy	0.488889
Calathea Makoyana	0.509434
Cactus	0.545455
Boston Fern	0.412698
Birds Nest Fern	0.423077
Bird of Paradise	0.45
Bamboo	0.537313
Arrow Head	0.555556
Angel Wings Begonia	0.393443
Aloe Vera	0.492308
Alocasia Polly	0.411765

### Assignment 4 Questions and Answers
- How are our users moving through the product funnel?
ADD_TO_CART_DIV_PAGE_VIEW	CHECKOUT_DIV_PAGE_VIEW	CHECKOUT_DIV_ADD_TO_CART
0.807958	0.624567	0.773019
- Which steps in the funnel have largest drop off points? add to cart to checkout
- How would you go about setting up a production/scheduled dbt run of your project in an ideal state? Set up a separate DAG by project/use case (i.e. one for product funnel). The schedule would depend on use case.