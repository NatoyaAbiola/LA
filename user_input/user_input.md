We're almost ready to start writing simple programs! Exciting.

So far, we have data. Now, let's do something with it: Write a program that requires a user's information.

### User Input

Our program will take a string of input from the user. Remember that strings can be made with a variety of characters, not just text but numbers, too. Go to [Repl.it](http://repl.it) and try out the following example in the right side of the screen:

```
> gets.chomp
```

When you do this, you'll see a cursor. The interpreter is waiting for you to pass your program some data. When you hit enter, the transaction is over. It took your data. The `gets.chomp` method will wait for data from the user. In this case, the data is taken in and then disappears (because we didn't store the data anywhere).

No matter what input you enter, the `gets.chomp` method results in a string. with a new line at the end.

### Saving User Input

Try this now, in the file side of the screen:

```ruby
puts "Say something!"
user_input = gets.chomp
puts "This is what you said:"
puts user_input
```

The thing we just created by typing `user_input =` is called a variable. Stated differently, we have just declared that `user_input` is the variable assigned to store whatever input `gets.chomp` fetches from the user.

We have complete control over how our variables are named. We picked `user_input` because we want to express the fact that we received the information from the user. You could just as well have named it `toenail`. Your code will not behave any differently, either way.

Variables allow you to store data and then refer to it again later in your program. It allows our program to stay the same, but the input from the user can change.

### Chomping Away

Use `gets.chomp` along with variables, string interpolation, and `puts` to make a program that has the following interaction with a user:

```
> Hello! What is your name?
> Christina
> What is your favorite kind of pie?
> butterscotch + cinnamon
> One butterscotch + cinnamon pie coming right up, Christina!
=> nil
```

{% show_solution %}
```ruby
puts "Hello! What is your name?"
name = gets.chomp
puts "What is your favorite kind of pie?"
fav_pie = gets.chomp
puts "One #{fav_pie} pie coming right up, #{name}!"
```
{% endshow_solution %}
