1.	A stateful widget changes when a user interacts with it while a stateless widget can never change. The example in this app would be the counter number(stateful) and the button icons(stateless).

2.	In this app i used Basics, Icons, Input(button), Styling, Layout, and Text widget. 
-Basics are widgets needed do develop a flutter app. 
-Icons are images used on the buttons to show what a button does. 
-Input is used to give the user an way to add/ decrease the counter. 
-Styling is used on the Text color odd and even. 
-Layout is used to position the counter(middle of screen) and buttons(far left and far right).
-Text is used to display the text odd and even.

3.	setState() is used for telling flutter to rerun the build method when something changes. Here we used set state ont he increment and decrement button so that when we press the buttons the counter text shown on the screen changes. tldr it updates the UI.
setState can affect any variable which is affected by a stateful widget.

4. 	Final modifies an initial variable and makes it unchangeable at runtime.
const can modify and initialize values which will be immutable on compile.

5.	Firstly, i created a decrement function by copy pasting the increment one and adding a condition so that it wont work when the counter is already on 0.
	Next, i added a check on the text widget with a ternary ?: operator to see if it is odd or even using a modulo operator. i set the colors of even as blue and odd as red.
	Then, i modified the floatingactionbutton section to be a row to seperate the decrement and increment button. to move the decrement button to a better position i added padding above the row with a left padding of 33. next i made containers for the decrement and increment button. here i just copy pasted the increment button as a child of the container and copy pasted the whole container, modified the onpress value to decrement. i put the decrement button first to that the decrement button will be on the bottom left of the screen.