/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> lab_room

== lab_room ==
{not (lab_room_search or door): You wake up in a lab,} {lab_room_search: Your in a lab, a fridge and table are present, and of course,} there is a door.
+ {lab_room_search} [search fridge] -> search_fridge
+ {lab_room_search} [go to table] -> table
* [search room] -> lab_room_search
+ [check door] -> door

== lab_room_search ==
in searching the room you find a fridge and a clear box on a table with what apears to be a moving piece of goo in it
* [search fridge] -> search_fridge
* [go to table] -> table
* [stop searching] -> lab_room

== search_fridge ==
you open the fridge finding several packs of what looks to be meat...... you think?
+ [grab some....... meat?] -> meat
+ [close the fridge] -> lab_room

== meat ==
You grab some....... meat?
+ [close the fridge] -> lab_room

== table ==
there is a clear box on the table, the box has a hole, large enough to put your hand in, and in the box is some sort of sentient goo{not key:, and wait....... is that a key?} {key:, it is happily chowing down, at least...... you think thats what its doing}
* {not key} [GRAB IT!!!] -> end_1_cat_nap
* {key} [pet the goo] -> end_2_cat_nap_full
* {meat} [divert the goo with meat? and grab the key] -> key
+ [return] -> lab_room

== key ==
you successfully manage to distract the goo with your questionably sourced meat? and grab the key
+ [return] -> lab_room

== door ==
{not unlocked: its closed}{unlocked: the door is wide open}
* {unlocked} [leave] -> lab_hall
+ {not unlocked} [open door] -> locked
+ [return] -> lab_room

== locked ==
its locked
* {key} [unlock door] -> unlocked
+ [return] -> lab_room

== unlocked ==
the key works! the door is unlocked
* [continue] -> door

== end_1_cat_nap ==
as you attempt to grab the key the goo grabs you, you try to pull away, but the goo quickly spreads across your arm, then your body. pretty soon you grow catlike ears and a tail, becoming an almost bipedal cat like creature. this room feels like home, time for a cat nap :3c -> END

== end_2_cat_nap_full ==
as you pet the goo it grabs you, you try to pull away, but the goo quickly spreads across your arm, then your body. pretty soon you grow catlike ears and a tail, becoming an almost bipedal cat like creature. this room feels like home, and for some reason you feel very full, the taste of some sort of meat lingering in your mouth, time for a cat nap :3c -> END

== lab_hall ==
as you enter into the hall, you see a figure which looks animal like in apperance, but that stands on two legs. To Be Continued.... -> END
