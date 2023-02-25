# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct

I would like to see an itemised receipt with a grand total.

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

Fair warning: if you push your Twilio API Key to a public Github repository, anyone will be able to see and use it. What are the security implications of that? How will you keep that information out of your repository?_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Takeaway

def initialize
  @total = 0
end

def menu(dishes, prices)
  # Returns a hash
  # Do I need those arguments since user doesn't input anything?
end

def order(dish)
  # Doesn't return anything.
  # Select dishes from menu (keys from hash?)
end

def receipt
  # Return dishes selected in .order method with keys and values
  # Add up the corresponding values
  @total += # the values
  return @total
end

# twilio-ruby gem

def receive_text
end

end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLES

# 1
takeaway_menu = Takeaway.new
takeaway_menu.menu # => {The whole menu}

# 2
takeaway_menu = Takeaway.new
takeaway_menu.order("Crispy seaweed")
expect(takeaway_menu.receipt).to eq # [{"Crispy seaweed, £3.90}, "Total: £#{@total}"]

# 3
takeaway_menu = Takeaway.new
takeaway_menu.order("Crispy seaweed")
takeaway_menu.order("Vegetable spring rolls")
expect(takeaway_menu.receipt). to eq # [{"Crispy seaweed, £3.90}, {Vegetable spring rolls, £4.50}, "Total: £#{@total}"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->