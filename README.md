TimeArr
========
<h2>The Application in Ruby that returns time array from the entered date till 5 days. Time step within first hour - 15 minutes, after first hour and till fifth hour - 30 minutes, after fifth hour the time step - 1 hour. After 12 hours the time step should be one day. 
<p>The date without time mention should be also considered. The time countdown should start from 12.00 p.m. in this case.</p>
<p>The date might be entered in the following formats: "1 Jun" or "22 Dec 2016" or "2 May 17:31" or "26 Jun 2013 09:30:00". Otherwise the error may occur and an exception would be thrown.</p>
</h2>
<h3>The application will stop running when you type the word "exit" in a separate line.</h3>
<h4>For example, if the date "Thu, 22 Dec 2016 00:00:00", the output result will be:
<p>      *"[*</p>
<p>*Thu, 22 Dec 2016 00:00:00*</p>
<p>*Thu, 22 Dec 2016 00:15:00*</p>
<p>*Thu, 22 Dec 2016 00:30:00*</p>
<p>*Thu, 22 Dec 2016 00:45:00*</p>
<p>*Thu, 22 Dec 2016 01:00:00*</p>
<p>*Thu, 22 Dec 2016 01:30:00*</p>
<p>*Thu, 22 Dec 2016 02:00:00*</p>
<p>*Thu, 22 Dec 2016 02:30:00*</p>
<p>*Thu, 22 Dec 2016 03:00:00*</p>
<p>*Thu, 22 Dec 2016 03:30:00*</p>
<p>*Thu, 22 Dec 2016 04:00:00*</p>
<p>*Thu, 22 Dec 2016 04:30:00*</p>
<p>*Thu, 22 Dec 2016 05:00:00*</p>
<p>*Thu, 22 Dec 2016 06:00:00*</p>
<p>*Thu, 22 Dec 2016 07:00:00*</p>
<p>*Thu, 22 Dec 2016 08:00:00*</p>
<p>*Thu, 22 Dec 2016 09:00:00*</p>
<p>*Thu, 22 Dec 2016 10:00:00*</p>
<p>*Thu, 22 Dec 2016 11:00:00*</p>
<p>*Thu, 22 Dec 2016 12:00:00*</p>
<p>*Fri, 23 Dec 2016 12:00:00*</p>
<p>*Sat, 24 Dec 2016 12:00:00*</p>
<p>*Sun, 25 Dec 2016 12:00:00*</p>
<p>*Mon, 26 Dec 2016 12:00:00*</p>
<p>*Tue, 27 Dec 2016 12:00:00*</p>
<p>      *]"*</p>
</h4>
