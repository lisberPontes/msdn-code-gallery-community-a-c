# Basics of manually creating a Master-Detail view of a backend database
## Requires
- Visual Studio 2010
## License
- Apache License, Version 2.0
## Technologies
- ADO.NET
- LINQ
- Windows Forms
- Visual Studio 2010
- custom controls
- .NET Framework
- Visual Basic .NET
- VB.Net
- .NET Framework 4.0
- Library
- Data Platform
- Access 2007
- WinForms
## Topics
- Data Binding
- Data Access
- How to
## Updated
- 08/04/2014
## Description

<h1>Introduction</h1>
<p><span style="font-size:small">Most examples for developing a master-detail view of data within a database is done using data wizards in the IDE of Visual Studio while the project presented shows how to create a master-detail view using code, no wizards.
 This is done in a solution comprised of three projects, a windows form project to display data, a class project for retrieving data and a class library for language extensions. Even thou the demonstration could had been done with a single windows form project
 I wanted to show how you can breakup logic parts of a project and separate them into child projects for use in other projects.</span></p>
<p><span style="font-size:small"><img id="74835" src="74835-md1.jpg" alt="" width="601" height="467"></span></p>
<h1><span>Building the Sample</span></h1>
<p><span style="font-size:small">Once you have downloaded the code simply load the solution into Visual Studio, select rebuild then run the windows form project.</span></p>
<p><span style="font-size:20px; font-weight:bold">Description</span></p>
<p><span style="font-size:small">I start using a singleton class for opening a connection to the backend MS-Access 2007 database, which is called from a class, which populates our master-detail structure into a DataSet. A relationship is setup between two tables,
 customers and order using the DataRelation class contained in a language extension, which creates the relationship name by concatenating the table names together. Within the above processes, a DataColumn expression is created to reach down into the detail
 table (orders) to get the sum of specific column freight and display this in the parent DataGridView.&nbsp; All of this is done in a separate DLL project which returns (exposed thru two properties of the class) two BindingSource components, which become the
 DataSource for the DataGridView controls for displaying data. If there are issues loading the data a message dialog is displayed showing what the problem was. As delivered, the only issue would be having one of the tables opened in design mode (which I did
 often). Now you have a master-detail view of the data.</span></p>
<p><span style="font-size:small">The next thing to consider is &ldquo;how do I access this data via code to allow adding/editing/deleting?&rdquo; This is shown in several procedures in the main form of the windows project.&nbsp; Out of the two sections of code
 showing examples to access data the button cmdProcess is the best to start with. Now to keep things simple I purposely did not get into data binding past the DataGridView controls, working DataTable events or BindingSource component events. Hopefully for those
 who are interested in learning the basics of master-detail view via code, not wizards this is a good place to start. Some might want to know how to go deeper down the rabbit hole for say Customers, Orders, OrderDetails, Items etc. That is not difficult but
 beyond the scope of this article as it would cloud the basics.</span></p>
<p><span style="font-size:small">I believe that <span style="text-decoration:underline">
using support projects as done in this solution is a good idea</span> of there is even a remote possibility of reusing code.</span></p>
<p><span style="font-size:small"><strong>Caveats</strong> </span></p>
<ol>
<li><span style="font-size:small">The backend database uses data from an old NorthWind database which I placed three tables from NorthWind into the MS-Access 2007 database. The original Northwind database had a funky primary key for customers which I kept but
 not used. Instead a new auto-incrementing column was added to customers and orders. A small class was used to move the new identifier from customers to each order, the class&nbsp;remains and if you attempt to use it will throw an exception in the new constructor
 which warns not to use it. If you remove the code in the constructor and run the method note I did warn you.&nbsp;</span>
</li><li><span style="font-size:small">The connection string for access the backend database is hard-coded. I never recommend this method for a live project but instead store the connection string in a configuration file. I hard-coded the connection string to keep
 focus on the master-detail code not the connection setup.</span> </li><li><span style="font-size:small">A special DataGridView column is used for one of the detail date columns which allows users to use a calendar to enter dates, much better than having to validate user input.</span>
</li><li><span style="font-size:small">A DataColumn is added to the detail DataTable of type Boolean with code to show how to access the field in the main form. The idea is two-fold, how to access data in the child table and also a simple example of the start of
 a process, in this case processing some orders.</span> </li></ol>
<h1><span>&nbsp;</span></h1>
<h1>More Information</h1>
<p><span style="font-size:small"><strong><span style="color:#ff0000">07/2013</span></strong> I recently did an
<a href="http://code.msdn.microsoft.com/BindingSource-Find-and-08e48b45">article on filtering</a>, BindingSource Find and Filtering basics. Although the solution is in VS2012 the underlying code conforms to VS2010 standards so if you do not have VS2012 simply
 create new projects and copy my files into them.</span></p>
<p><span style="font-size:small"><strong><span style="color:#ff0000">09/2013</span></strong> If the above was helpful check out my article
<a href="http://code.msdn.microsoft.com/Simple-data-binding-and-67782f15">Simple data binding and add/editing data on windows forms</a>&nbsp;</span></p>
<p><span style="font-size:small"><span style="color:#ff0000"><span style="font-size:small"><span style="color:#ff0000"><strong>10/2012</strong></span><span style="color:#000000"> Modified the solution (see readme file) included with this article to assist with
 working with&nbsp;a child form to do consitions&nbsp;on <a href="https://skydrive.live.com/redir?resid=A3D5A9A9A28080D1!383&authkey=!AL9P1lp8V4j2ZYs">
SkyDrive here</a>.</span></span></span></span></p>
<p><span style="font-size:small"><span style="color:#ff0000">&nbsp;</span></span></p>
<p><span style="color:#000000; font-size:small">Screenshot for solution on SkyDrive.</span></p>
<p><span style="color:#000000; font-size:small"><img id="97457" src="http://i1.code.msdn.s-msft.com/basics-of-manuall-creating-aa1a5c3d/image/file/97457/1/111111am.jpg" alt="" width="621" height="416"></span></p>
<p>&nbsp;</p>
<p><span style="font-size:small"><span style="color:#ff0000"><strong>10/2012</strong></span> Modified the solution (see readme file)&nbsp;included with this article to assist with working with detail data and gave it a home on
<a href="https://skydrive.live.com/redir?resid=A3D5A9A9A28080D1!378&authkey=!ADX5OULvJk3p4Mw">
SkyDrive here</a></span></p>
<p><span style="font-size:small">Screenshot for solution on SkyDrive. </span></p>
<p><span style="font-size:small"><img id="97407" src="http://i1.code.msdn.s-msft.com/basics-of-manuall-creating-aa1a5c3d/image/file/97407/1/skydrive1.jpg" alt="" width="652" height="338"></span></p>
<div class="mcePaste" id="_mcePaste" style="width:1px; height:1px; overflow:hidden; top:0px; left:-10000px">
</div>
