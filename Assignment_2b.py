#Created by: Alireza Teimoori
#Created on: 27 Sep 2017
#Created for: ICS3UR-1
#Lesson: Assignment_2b
#This program calculates the height of a person who is falling from a place 100 m above the ground by time in seconds

import ui

def calculate_button_touch_up_inside(sender):
	#calculates height in meters
	
	#constants
	GRAVITY = 9.81
	
	#input
	time = float(view['enter_time_textfield'].text)
	if time >= 0:
	    #process
	    height=100-((GRAVITY*time**2)/2)
	    if height >= 0:
	        #output
	        view['answer_lable'].text = "the person's height at that time is: "+str(height)+"m"
	    else:
	    	view['answer_lable'].text = "the person's height at that time is 0m"
	
view = ui.load_view()
view.present('sheet')
