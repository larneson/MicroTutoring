Title:​ MicroTutoring

Team Members:​ Ameena Golding, Gustavo De Leon, Link Arneson, Nithi Narayanan

Demo Link:​ (TBA)


Idea: An application where people can post bounties in exchange for tutoring sessions on different concepts. Layout of the website would be a tree like structure, going from home to a subject to a course to a post, where the post would include the topic, a short description of the problem they want help with, the times they are available to meet, how much they’re willing to pay, contact email, and venmo user name.


Models and Description:
 - Subject
   - Name: CS
   - Has many courses: 198, 61A, 186
 - Course
   - Number: 61A
   - Description: The Structure and Interpretation of Computer Programs
   - Belongs to a Subject: CS
 - Post
   - Belongs to a User: gdeleon
   - Belongs to a Course: 61A
   - Title: What are vectors?
   - Description: I am very confused about vectors, really just not following and need someone to walk me through it, shouldn’t take more than an hour. Am available after 6 MWF, and after 5 TTh!
   - Bounty: $15
   - Displays creator email: gdeleon@berkeley.edu
 - User
   - First name: Gustavo
   - Last name: De Leon
   - Username: gdeleon
   - Email: gdeleon@berkeley.edu
   - About Me: EECS 2nd Year
   - Tutoring Subjects: CS 61A, CS 61B, Math 1A
   - Admin: False
 - Admin User
   - Just for the admin dashboard (did not end up fully using for the MVP)


Features:
 - Users can log in
 - Users can make new subjects, courses, and posts
 - Users can delete posts they made
 - Admins can delete subjects, courses, and anyone’s posts


Division of Labor:
 - Ameena: Made user model/controller/view, and seed file
 - Gustavo: Made model/controller for subjects, courses, worked on editing permissions
 - Link: Worked on model/view/controller for subjects, courses, and posts
 - Nithi: Made login and admin for users, worked on editing permissions
