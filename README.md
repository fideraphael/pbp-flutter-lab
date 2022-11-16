<h1>Assignment README</h1>
<h4>Assignment 7</h4>

	<p>1. A stateful widget changes when a user interacts with it while a stateless widget can never change. The example in this app would be the counter number(stateful) and the button icons(stateless).</p>

	<p>2. In this app i used Basics, Icons, Input(button), Styling, Layout, and Text widget.</p>
	<p>-Basics are widgets needed do develop a flutter app. </p>
	<p>-Icons are images used on the buttons to show what a button does.</p> 
	<p>-Input is used to give the user an way to add/ decrease the counter. </p>
	<p>-Styling is used on the Text color odd and even. </p>
	<p>-Layout is used to position the counter(middle of screen) and buttons(far left and far right).</p>
	<p>-Text is used to display the text odd and even.</p>

	<p>3. setState() is used for telling flutter to rerun the build method when something changes. Here we used set state ont he increment and decrement button so that when we press the buttons the counter text shown on the screen changes. tldr it updates the UI. setState can affect any variable which is affected by a stateful widget.</p>

	<p>4. Final modifies an initial variable and makes it unchangeable at runtime.const can modify and initialize values which will be immutable on compile.</p>

	<p>5. Firstly, i created a decrement function by copy pasting the increment one and adding a condition so that it wont work when the counter is already on 0.
	Next, i added a check on the text widget with a ternary ?: operator to see if it is odd or even using a modulo operator. i set the colors of even as blue and 	odd as red.
	Then, i modified the floatingactionbutton section to be a row to seperate the decrement and increment button. to move the decrement button to a better position 	i added padding above the row with a left padding of 33. next i made containers for the decrement and increment button. here i just copy pasted the increment 	button as a child of the container and copy pasted the whole container, modified the onpress value to decrement. i put the decrement button first to that the 	decrement button will be on the bottom left of the screen.</p>

<h4>Assignment 8</h4>

	<p>1. navigator.push adds a page to the navigator stack while pushreplacement changes the page to the one the button refers to</p>
	<p>2. In this version of the app i used:</p>
	<p>Drawers = works as a navigator here</p>
	<p>Scaffold = container for materials</p>
	<p>Container = holds items/functions</p>
	<p>Card = layout for widgets</p>
	<p>Drop down = widget to choose the budget type(works like a list)</p>
	<p>3. onPressed = button is pressed</p>
	<p>onChanged = when input field is changed</p>
	<p>onSaved = when the form is saved</p>
	<p>onLongPress = when the button is held down</p>
	<p>4. The navigator changed the page by change the order of the page stack by pushing the new page to the top. returning to the pervious page happens by popping the stack</p>
	<p>5.	First i created a drawer for the form and data which i copy pasted to all the other pages, then i created a model file which has a list to store the 	data and a budget class which shows how the list should be formatted.</p>
	<p>Next, i created input fields and a drop down field in the form for the users to input their datas with a save button which adds these data to the list.</p>
	<p>Last, i created a show page which shows all the data by mapping the budget list's data into a card widget.</p>
