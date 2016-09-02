# Getting started

## The tools of our trade

There are lots of different programming languages, and more are being created all the time. They are often very specialised. COBOL was designed to make it easy to solve business problems. FORTRAN was, and still is, used to write high performance scientific programs.

In this course we'll be using four programming languages:

* Ruby
* HTML
* CSS
* Javascript

And one framework:

* Sinatra

And one library:

* Jquery

And one API:

* Google Books API

Let's introduce each of these.

Ruby has been around for about 20 years. Ruby became very popular as a language for developing web-based applications about ten years ago, after the release of an application development framework written in Ruby, called Ruby on Rails. The aim of Ruby on Rails was to make it very easy to develop web based applications by hiding nearly all of the complexity from the developer. Today we'll be using a similar framework called Sinatra, which is an even more simple framework than Rails to quickly create web applications in Ruby with minimal effort.

HTML is the language of the web. Every single website you've ever been on is made from HTML. It is a markup language for describing web pages. HTML stands for Hyper Text Markup Language.

CSS is a style sheet language used for describing the presentation of a document written in a markup language, such as HTML. CSS stands for Cascading Style Sheets.

Javascript is a language that runs in your browser, rather than on a server.

Jquery is a javascript library: a collection of code written in javascript that provides particular methods, such as a way to show and hide content.

When an application has been written, it used to be the case that you then had to buy or rent a server that is connected to the internet, and then install and maintain all of the required software and security configuration. However another major change has been a recent profusion in companies, such as Amazon and Google, offering rental of their own computers for running code and managing applications. Other companies, such as Netflix, run their businesses entirely on rented servers. Furthermore, yet other companies provide management layers on top of these services that hide their complexity from you, making it even easier to run your own application, and because they have a huge customer base of very similar systems, they can do so extremely cheaply.

Until very recently this still left you with the problem of setting up your own computer to develop your application, and this has often been a rather trying business. In the past year or two, other companies have developed hosted systems that allow you to develop your code on their servers, so you don't even need to have a sophisticated and complex development environment on your own desktop or laptop computers. Today we will be using a service called Nitrous to develop our code.

## Set up a Nitrous.io account and a new container

• Go to https://www.nitrous.io/
• Enter a username.
• Now enter your email address.
• Enter a password.
• Hit “Sign up for free”. If any of your details aren’t up to scratch, have another go.


## Create a development box

• On the New Container page, select Ruby on Rails, and hit Next.
• Select Europe as your region
• Select Starter (free) as your plan and hit Create.
• Sadly you’ll have to provide your phone number for a free plan. Enter it and hit Save, then enter your verification code once your SMS has arrived.
• Leave the box labelled “Open the IDE when ready” checked, and wait whilst Nitrous sets up your new box.
• Select Get Started once that’s an option on the screen.

## Logging back in

If your login expires, you can log back in with your user name and password.
Click on Start and then IDE (which stands for Interactive Development Environment).
1.5 A look around Nitrous
At the top of the page, the screen is divided into two. On the left is a file system
navigator – just like youd see in Finder on the Mac or Windows Explorer on a PC.
On the right is the contents of whichever file is open on Nitrous.
At the bottom of the page you have a console. Its the same as what youd
find if youve ever opened the Terminal on your Mac, or the Command Prompt
on Windows. You can enter commands here which the computer will obey. Using
the command line is often a lot quicker and more reliable than using the
graphical user interface of your machine.
