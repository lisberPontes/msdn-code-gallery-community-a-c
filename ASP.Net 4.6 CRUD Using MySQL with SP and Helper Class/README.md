# ASP.Net 4.6 CRUD Using MySQL with SP and Helper Class
## Requires
- Visual Studio 2015
## License
- MIT
## Technologies
- ASP.NET
- MySQL
## Topics
- ASP.NET
- MySQL
## Updated
- 08/31/2015
## Description

<h1>Introduction</h1>
<p><img id="141991" src="141991-1.jpg" alt="" width="600" height="450"></p>
<p>This article explains in detail how to insert/update/delete and select data from a MySQL database using a helper class and Stored Procedure using ASP.Net 4.6.<br>
<br>
<strong>Prerequisites<br>
</strong><br>
<strong>Visual Studio 2015:</strong> You can download it from <a href="https://www.visualstudio.com/en-us/downloads/visual-studio-2015-downloads-vs.aspx" target="_blank">
Visual Studio</a> (in my example I have used Visual Studio Community 2015 RC).<br>
<br>
<strong>MySQL:</strong> The reason why I have used MySQL is it's open source. For study and small project purposes we can use MySQL. You can download MySQL from their website.<br>
<br>
<a href="https://dev.mysql.com/downloads/installer/" target="_blank"><span><span>Download MySQL Installer</span></span></a><br>
<br>
I have used mysql-installer-community-5.6.24.0 (Windows Installer).<br>
<br>
You also need to download and install MySQL Connector for .NET that is available here:<br>
<br>
<a href="https://dev.mysql.com/downloads/connector/net/" target="_blank"><span>Download Connector/Net</span></a><br>
<br>
In this article, we will see the following.</p>
<ul>
<li>Introduction to ASP.NET 5. </li><li>Create Table and Stored Procedure in MySQL Database. </li><li>Creating MySQL helper Class for ASP.NET 5. </li><li>Create a simple Webform website for performing CRUD operation for MySQL Database.&nbsp;
</li></ul>
<h1><span>Building the Sample</span></h1>
<p><strong>Introduction to ASP.NET 5<br>
</strong><br>
I began working with Visual Studio 2003 (V1.1) and today we have reached Visual Studio 2015 (V4.6). Working with web projects will always make us energetic. Let's see few important and new features available in ASP.NET 5.<br>
<br>
ASP.NET 5 is:</p>
<ul>
<li>Cross-platform (Windows, Mac and Linux) </li><li>Faster Development Cycle </li><li>Open Source </li><li>Easy to create cloud-based web applications </li></ul>
<p>To learn more in detail about ASP.NET 5, refer to the following links.</p>
<ul>
<li><a href="http://docs.asp.net/en/latest/conceptual-overview/aspnet.html"><span>Introduction to ASP.NET 5</span></a>
</li><li><a href="http://blogs.msdn.com/b/webdev/archive/2015/04/29/new-asp-net-features-and-fixes-in-visual-studio-2015-rc.aspx"><span>.NET Web Development and Tools Blog</span></a>
</li><li><span><a href="http://channel9.msdn.com/Events/Build/2015/2-687">Introducing ASP.NET 5</a></span>
</li></ul>
<p><strong>Create Table in MySQL:</strong>&nbsp;Let us see how to write a query for creating a table and inserting a sample record.<br>
<br>
After MySQL has been installed, open it.</p>
<p><br>
<img id="141992" src="141992-2.jpg" alt="" width="600" height="300"></p>
<p>Click on the local instance of MySQL, then enter your MySQL password and press Enter.</p>
<p><br>
<img id="141993" src="141993-3.jpg" alt="" width="600" height="300"></p>
<p>After successful login to MySQL, we can see an editor where we can write our queries or create a Stored Procedure and so on.</p>
<p><br>
<span style="white-space:pre"><img id="141994" src="141994-4.jpg" alt="" width="600" height="350">
</span></p>
<p><span style="font-size:20px; font-weight:bold">Description</span></p>
<p><strong>Creating ItemMaster Table:</strong> let's create a simple ItemMaster table. This table will be used to do all our CRUD operations from our ASP.NET 5 web application.<br>
First we create a database and we create our ItemMaster table inside our InventoryManagement database.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="mysql"><span class="sql__keyword">CREATE</span>&nbsp;<span class="sql__keyword">DATABASE</span>&nbsp;<span class="sql__id">InvnetoryManagement</span>;&nbsp;&nbsp;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;In the editor, select the query to be executed and press the symbol from the editor. For example now if I want to select my database then I will write the query.</div>
<div class="endscriptcode"></div>
<p><strong>Use Database</strong></p>
<p><img id="141995" src="141995-5.jpg" alt="" width="600" height="242"></p>
<p>Here we can see I have selected the query &quot;use Inventorymanagement&quot; and then press the something. In the output window we can see the result is success with the Green icon. If it has an error then it will display the error icon.<br>
<br>
In the same way next is our create table query. We write our query and execute it similarly.<br>
<br>
<strong>Create table Item Master</strong></p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="js">CREATE&nbsp;TABLE&nbsp;ItemMaster&nbsp;
(&nbsp;
Item_Code&nbsp;int&nbsp;NOT&nbsp;NULL&nbsp;AUTO_INCREMENT,&nbsp;
Item_Name&nbsp;&nbsp;varchar(<span class="js__num">100</span>)&nbsp;&nbsp;NOT&nbsp;NULL,&nbsp;
Price&nbsp;int,&nbsp;
TAX1&nbsp;int,&nbsp;
Description&nbsp;varchar(<span class="js__num">100</span>)&nbsp;,&nbsp;
IN_DATE&nbsp;datetime,&nbsp;
IN_USR_ID&nbsp;varchar(<span class="js__num">50</span>)&nbsp;,&nbsp;&nbsp;
DeleteStatus&nbsp;varchar(<span class="js__num">10</span>),&nbsp;
PRIMARY&nbsp;KEY&nbsp;(Item_Code)&nbsp;
);&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;Now let's insert some sample records using the insert query.<br>
<br>
<strong>Insert sample Record to Univ Master</strong></div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="mysql"><span class="sql__com">--&nbsp;Insert&nbsp;sample&nbsp;Record&nbsp;to&nbsp;Univ&nbsp;Master</span>&nbsp;
<span class="sql__keyword">insert</span>&nbsp;<span class="sql__keyword">into</span>&nbsp;<span class="sql__id">ItemMaster</span>(<span class="sql__id">Item_Name</span>,<span class="sql__id">Price</span>,<span class="sql__id">TAX1</span>,<span class="sql__id">Description</span>,<span class="sql__id">IN_DATE</span>,<span class="sql__id">IN_USR_ID</span>,<span class="sql__id">DeleteStatus</span>)&nbsp;<span class="sql__keyword">values</span>&nbsp;(<span class="sql__string">'headPhone'</span>,<span class="sql__number">600</span>,<span class="sql__number">2</span>,<span class="sql__string">'head&nbsp;Phone'</span>,<span class="sql__function">now</span>(),<span class="sql__string">'SHANU'</span>,<span class="sql__string">'N'</span>);&nbsp;
<span class="sql__keyword">insert</span>&nbsp;<span class="sql__keyword">into</span>&nbsp;<span class="sql__id">ItemMaster</span>(<span class="sql__id">Item_Name</span>,<span class="sql__id">Price</span>,<span class="sql__id">TAX1</span>,<span class="sql__id">Description</span>,<span class="sql__id">IN_DATE</span>,<span class="sql__id">IN_USR_ID</span>,<span class="sql__id">DeleteStatus</span>)&nbsp;<span class="sql__keyword">values</span>&nbsp;(<span class="sql__string">'Mouse'</span>,<span class="sql__number">30</span>,<span class="sql__number">0</span>,<span class="sql__string">'Mousee'</span>,<span class="sql__function">now</span>(),<span class="sql__string">'SHANU'</span>,<span class="sql__string">'N'</span>);&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;<strong>Test Select Statement</strong></div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="mysql"><span class="sql__com">--&nbsp;&nbsp;test&nbsp;Select&nbsp;Statement</span>&nbsp;
<span class="sql__keyword">select</span>&nbsp;*&nbsp;<span class="sql__keyword">from</span>&nbsp;<span class="sql__id">ItemMaster</span>;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;Execute all the queries one-by-one and test with a select query.</div>
<p><strong>NOTE<span style="white-space:pre"> </span>:</strong>In attached Zip file you can find the MYSQL Script folder copay all the script and execute one by one.</p>
<p><strong>Create our First ASP.NET &nbsp;Web Application</strong><br>
<br>
After installing our Visual Studio 2015, click Start then select Programs then select Visual Studio 2015. Click Visual Studio 2015 RC(In this demo i have Used Visual Studio 2015 RC.Now you can download and use the same with latest Visual Studio 2015).</p>
<p><br>
<img id="141996" src="141996-6.jpg" alt="" width="247" height="71"></p>
<p>&nbsp;</p>
<p>Click New -&gt; Project then select Web -&gt; ASP.NET Web Application. Select your project's location and enter your web application name.</p>
<p><br>
<img id="141998" src="141998-8.jpg" alt="" width="600" height="300"></p>
<p>Select Web Forms and click OK. Since we are developing our ASP.NET web form here we select Web Forms.</p>
<p><br>
<img id="141999" src="141999-9.jpg" alt="" width="600" height="350"></p>
<p><span style="white-space:pre">After creating our website we can create a class file for our &ldquo;MySQLHelper&rdquo; class and &ldquo;BizLogic&rdquo; class.
</span></p>
<p><img id="142000" src="142000-10.jpg" alt="" width="228" height="90"></p>
<p>&nbsp;</p>
<p>I have created both classes inside a folder as in the following.<br>
<br>
First we need to add the &ldquo;Mysql.Data.dll&rdquo; file to our reference.<br>
<br>
There are two ways to add the DLL.<br>
<br>
The same as before, we use Visual Studio 2010 or 2008. Add a reference and select Mysql.Data.dll.</p>
<p><br>
<img id="142001" src="142001-11.jpg" alt="" width="600" height="300"></p>
<p>Another method is by adding from Manage NuGet packages.</p>
<p><br>
<img id="142002" src="142002-12.jpg" alt="" width="607" height="387"></p>
<p>Search for MySQL and click Install. It will add the MySQL.Data.dll to your reference.</p>
<p><br>
<img id="142003" src="142003-13.jpg" alt="" width="858" height="312"></p>
<p>&nbsp;</p>
<p><strong>&ldquo;ShanuMySqlHelper.CS&rdquo;</strong> this is the class that I used to create a helper class to connect to a MySQL database and do all ExecuteQuery, ExecuteNonQuery, return DataSet and DataTable. In this class I created a separate function for
 ExecuteNonQuery, ExecuteQuery, return DataSet, Execute by Query, Execute by Stored Procedure and so on.<br>
<br>
For example, here we can see a simple method that will be executed by a query and do the insert/update and delete actions using the ExecuteNonQuery method. To this method I will pass the query from my web application to our businsess classs and from the business
 class I will pass the query to this MySQL Helper class.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="js">#region&nbsp;ExecuteNonQuery&nbsp;<span class="js__statement">for</span>&nbsp;insert/Update&nbsp;and&nbsp;Delete&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//For&nbsp;Insert/Update/Delete&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;int&nbsp;ExecuteNonQuery_IUD(<span class="js__object">String</span>&nbsp;Querys)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">{</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;result=<span class="js__num">0</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__sl_comment">//open&nbsp;connection</span><span class="js__statement">if</span>&nbsp;(OpenConnection()&nbsp;==&nbsp;true)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">{</span><span class="js__sl_comment">//create&nbsp;command&nbsp;and&nbsp;assign&nbsp;the&nbsp;query&nbsp;and&nbsp;connection&nbsp;from&nbsp;the&nbsp;constructor</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlCommand&nbsp;cmd&nbsp;=&nbsp;<span class="js__operator">new</span>&nbsp;MySqlCommand(Querys,&nbsp;connection);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__sl_comment">//Execute&nbsp;command</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result=&nbsp;cmd.ExecuteNonQuery();&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__sl_comment">//close&nbsp;connection</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CloseConnection();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">}</span><span class="js__statement">return</span>&nbsp;result;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">}</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion&nbsp;
Here&nbsp;is&nbsp;another&nbsp;example&nbsp;to&nbsp;execute&nbsp;the&nbsp;Stored&nbsp;procedure&nbsp;and&nbsp;<span class="js__statement">return</span>&nbsp;the&nbsp;result&nbsp;as&nbsp;the&nbsp;Dataset.&nbsp;
&nbsp;
#region&nbsp;Dataset&nbsp;<span class="js__statement">for</span>&nbsp;Stored&nbsp;Procedure&nbsp;and&nbsp;<span class="js__statement">return</span>&nbsp;as&nbsp;DataTable&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//for&nbsp;select&nbsp;result&nbsp;and&nbsp;<span class="js__statement">return</span>&nbsp;as&nbsp;DataTable&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;DataSet&nbsp;SP_DataTable_return(<span class="js__object">String</span>&nbsp;ProcName,&nbsp;params&nbsp;MySqlParameter[]&nbsp;commandParameters)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">{</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataSet&nbsp;ds&nbsp;=&nbsp;<span class="js__operator">new</span>&nbsp;DataSet();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__sl_comment">//open&nbsp;connection</span><span class="js__statement">if</span>&nbsp;(OpenConnection()&nbsp;==&nbsp;true)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">{</span><span class="js__sl_comment">//for&nbsp;Select&nbsp;Query&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlCommand&nbsp;cmdSel&nbsp;=&nbsp;<span class="js__operator">new</span>&nbsp;MySqlCommand(ProcName,&nbsp;connection);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmdSel.CommandType&nbsp;=&nbsp;CommandType.StoredProcedure;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__sl_comment">//&nbsp;Assign&nbsp;the&nbsp;provided&nbsp;values&nbsp;to&nbsp;these&nbsp;parameters&nbsp;based&nbsp;on&nbsp;parameter&nbsp;order</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AssignParameterValues(commandParameters,&nbsp;commandParameters);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AttachParameters(cmdSel,&nbsp;commandParameters);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlDataAdapter&nbsp;da&nbsp;=&nbsp;<span class="js__operator">new</span>&nbsp;MySqlDataAdapter(cmdSel);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;da.Fill(ds);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__sl_comment">//close&nbsp;connection</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CloseConnection();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">}</span><span class="js__statement">return</span>&nbsp;ds;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">}</span></pre>
</div>
</div>
</div>
<p><strong>Complete helper class</strong></p>
<p>The following is my complete helper class.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="csharp"><span class="cs__keyword">using</span>&nbsp;System;&nbsp;
<span class="cs__keyword">using</span>&nbsp;<a class="libraryLink" href="https://msdn.microsoft.com/en-US/library/System.Collections.Generic.aspx" target="_blank" title="Auto generated link to System.Collections.Generic">System.Collections.Generic</a>;&nbsp;
<span class="cs__keyword">using</span>&nbsp;<a class="libraryLink" href="https://msdn.microsoft.com/en-US/library/System.Linq.aspx" target="_blank" title="Auto generated link to System.Linq">System.Linq</a>;&nbsp;
<span class="cs__keyword">using</span>&nbsp;<a class="libraryLink" href="https://msdn.microsoft.com/en-US/library/System.Web.aspx" target="_blank" title="Auto generated link to System.Web">System.Web</a>;&nbsp;
<span class="cs__keyword">using</span>&nbsp;MySql.Data;&nbsp;
<span class="cs__keyword">using</span>&nbsp;MySql.Data.MySqlClient;&nbsp;
<span class="cs__keyword">using</span>&nbsp;MySql.Data.Types;&nbsp;
<span class="cs__keyword">using</span>&nbsp;<a class="libraryLink" href="https://msdn.microsoft.com/en-US/library/System.Configuration.aspx" target="_blank" title="Auto generated link to System.Configuration">System.Configuration</a>;&nbsp;
<span class="cs__keyword">using</span>&nbsp;<a class="libraryLink" href="https://msdn.microsoft.com/en-US/library/System.Data.aspx" target="_blank" title="Auto generated link to System.Data">System.Data</a>;&nbsp;
<span class="cs__com">///&nbsp;&lt;summary&gt;</span><span class="cs__com">///&nbsp;Author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;Shanu</span><span class="cs__com">///&nbsp;Create&nbsp;date&nbsp;:&nbsp;2015-05-09</span><span class="cs__com">///&nbsp;Description&nbsp;:&nbsp;Biz&nbsp;Class</span><span class="cs__com">///&nbsp;Latest</span><span class="cs__com">///&nbsp;Modifier&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</span><span class="cs__com">///&nbsp;Modify&nbsp;date&nbsp;:&nbsp;</span><span class="cs__com">///&nbsp;&lt;/summary&gt;</span><span class="cs__keyword">namespace</span>&nbsp;ShanuVS2015.DBClass.shanuMYSQLHelper&nbsp;
{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">public</span><span class="cs__keyword">class</span>&nbsp;shanuMySqlHelper&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">public</span>&nbsp;String&nbsp;ConnectionString&nbsp;=&nbsp;ConfigurationManager.ConnectionStrings[<span class="cs__string">&quot;shanu&quot;</span>].ToString();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">public</span>&nbsp;MySqlConnection&nbsp;connection;<span class="cs__preproc">&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;Initiallize</span><span class="cs__keyword">public</span>&nbsp;shanuMySqlHelper()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Initialize();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//Initialize&nbsp;values</span><span class="cs__keyword">private</span><span class="cs__keyword">void</span>&nbsp;Initialize()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ConnectionString&nbsp;=&nbsp;ReadConnectionString();&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connection&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlConnection(ConnectionString);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">public</span>&nbsp;String&nbsp;ReadConnectionString()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span>&nbsp;ConnectionString&nbsp;=&nbsp;ConfigurationManager.ConnectionStrings[<span class="cs__string">&quot;shanu&quot;</span>].ToString();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span><span class="cs__preproc">&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;DB&nbsp;ConnectionOpen</span><span class="cs__keyword">public</span><span class="cs__keyword">bool</span>&nbsp;OpenConnection()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">try</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connection.Open();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span><span class="cs__keyword">true</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">catch</span>&nbsp;(MySqlException&nbsp;ex)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span><span class="cs__keyword">false</span>;&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span><span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;DB&nbsp;Connection&nbsp;Close</span><span class="cs__com">//Close&nbsp;connection</span><span class="cs__keyword">public</span><span class="cs__keyword">bool</span>&nbsp;CloseConnection()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">try</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connection.Close();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span><span class="cs__keyword">true</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">catch</span>&nbsp;(MySqlException&nbsp;ex)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span><span class="cs__keyword">false</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span><span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;ExecuteNonQuery&nbsp;for&nbsp;insert/Update&nbsp;and&nbsp;Delete</span><span class="cs__com">//For&nbsp;Insert/Update/Delete</span><span class="cs__keyword">public</span><span class="cs__keyword">int</span>&nbsp;ExecuteNonQuery_IUD(String&nbsp;Querys)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">int</span>&nbsp;result=<span class="cs__number">0</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//open&nbsp;connection</span><span class="cs__keyword">if</span>&nbsp;(OpenConnection()&nbsp;==&nbsp;<span class="cs__keyword">true</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//create&nbsp;command&nbsp;and&nbsp;assign&nbsp;the&nbsp;query&nbsp;and&nbsp;connection&nbsp;from&nbsp;the&nbsp;constructor</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlCommand&nbsp;cmd&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlCommand(Querys,&nbsp;connection);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//Execute&nbsp;command</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result=&nbsp;cmd.ExecuteNonQuery();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//close&nbsp;connection</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CloseConnection();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span>&nbsp;result;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span><span class="cs__preproc">&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;Dataset&nbsp;for&nbsp;select&nbsp;result&nbsp;and&nbsp;return&nbsp;as&nbsp;Dataset</span><span class="cs__com">//for&nbsp;select&nbsp;result&nbsp;and&nbsp;return&nbsp;as&nbsp;Dataset</span><span class="cs__keyword">public</span>&nbsp;DataSet&nbsp;DataSet_return(String&nbsp;Querys)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataSet&nbsp;ds&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;DataSet();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//open&nbsp;connection</span><span class="cs__keyword">if</span>&nbsp;(OpenConnection()&nbsp;==&nbsp;<span class="cs__keyword">true</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//for&nbsp;Select&nbsp;Query&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlCommand&nbsp;cmdSel&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlCommand(Querys,&nbsp;connection);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlDataAdapter&nbsp;da&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlDataAdapter(cmdSel);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;da.Fill(ds);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//close&nbsp;connection</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CloseConnection();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span>&nbsp;ds;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span><span class="cs__preproc">&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;DataTable&nbsp;for&nbsp;select&nbsp;result&nbsp;and&nbsp;return&nbsp;as&nbsp;DataTable</span><span class="cs__com">//for&nbsp;select&nbsp;result&nbsp;and&nbsp;return&nbsp;as&nbsp;DataTable</span><span class="cs__keyword">public</span>&nbsp;DataTable&nbsp;DataTable_return(String&nbsp;Querys)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataTable&nbsp;dt&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;DataTable();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//open&nbsp;connection</span><span class="cs__keyword">if</span>&nbsp;(OpenConnection()&nbsp;==&nbsp;<span class="cs__keyword">true</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//for&nbsp;Select&nbsp;Query&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlCommand&nbsp;cmdSel&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlCommand(Querys,&nbsp;connection);&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlDataAdapter&nbsp;da&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlDataAdapter(cmdSel);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;da.Fill(dt);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//close&nbsp;connection</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CloseConnection();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span>&nbsp;dt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span><span class="cs__preproc">&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#region&nbsp;Dataset&nbsp;for&nbsp;Stored&nbsp;Procedure&nbsp;and&nbsp;return&nbsp;as&nbsp;DataTable</span><span class="cs__com">//for&nbsp;select&nbsp;result&nbsp;and&nbsp;return&nbsp;as&nbsp;DataTable</span><span class="cs__keyword">public</span>&nbsp;DataSet&nbsp;SP_DataTable_return(String&nbsp;ProcName,&nbsp;<span class="cs__keyword">params</span>&nbsp;MySqlParameter[]&nbsp;commandParameters)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataSet&nbsp;ds&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;DataSet();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//open&nbsp;connection</span><span class="cs__keyword">if</span>&nbsp;(OpenConnection()&nbsp;==&nbsp;<span class="cs__keyword">true</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//for&nbsp;Select&nbsp;Query&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlCommand&nbsp;cmdSel&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlCommand(ProcName,&nbsp;connection);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmdSel.CommandType&nbsp;=&nbsp;CommandType.StoredProcedure;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//&nbsp;Assign&nbsp;the&nbsp;provided&nbsp;values&nbsp;to&nbsp;these&nbsp;parameters&nbsp;based&nbsp;on&nbsp;parameter&nbsp;order</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AssignParameterValues(commandParameters,&nbsp;commandParameters);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AttachParameters(cmdSel,&nbsp;commandParameters);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySqlDataAdapter&nbsp;da&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;MySqlDataAdapter(cmdSel);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;da.Fill(ds);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//close&nbsp;connection</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CloseConnection();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span>&nbsp;ds;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">private</span><span class="cs__keyword">static</span><span class="cs__keyword">void</span>&nbsp;AttachParameters(MySqlCommand&nbsp;command,&nbsp;MySqlParameter[]&nbsp;commandParameters)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;(command&nbsp;==&nbsp;<span class="cs__keyword">null</span>)&nbsp;<span class="cs__keyword">throw</span><span class="cs__keyword">new</span>&nbsp;ArgumentNullException(<span class="cs__string">&quot;command&quot;</span>);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;(commandParameters&nbsp;!=&nbsp;<span class="cs__keyword">null</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">foreach</span>&nbsp;(MySqlParameter&nbsp;p&nbsp;<span class="cs__keyword">in</span>&nbsp;commandParameters)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;(p&nbsp;!=&nbsp;<span class="cs__keyword">null</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//&nbsp;Check&nbsp;for&nbsp;derived&nbsp;output&nbsp;value&nbsp;with&nbsp;no&nbsp;value&nbsp;assigned</span><span class="cs__keyword">if</span>&nbsp;((p.Direction&nbsp;==&nbsp;ParameterDirection.InputOutput&nbsp;||&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;p.Direction&nbsp;==&nbsp;ParameterDirection.Input)&nbsp;&amp;&amp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(p.Value&nbsp;==&nbsp;<span class="cs__keyword">null</span>))&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;p.Value&nbsp;=&nbsp;DBNull.Value;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;command.Parameters.Add(p);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">private</span><span class="cs__keyword">static</span><span class="cs__keyword">void</span>&nbsp;AssignParameterValues(MySqlParameter[]&nbsp;commandParameters,&nbsp;<span class="cs__keyword">object</span>[]&nbsp;parameterValues)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;((commandParameters&nbsp;==&nbsp;<span class="cs__keyword">null</span>)&nbsp;||&nbsp;(parameterValues&nbsp;==&nbsp;<span class="cs__keyword">null</span>))&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//&nbsp;Do&nbsp;nothing&nbsp;if&nbsp;we&nbsp;get&nbsp;no&nbsp;data</span><span class="cs__keyword">return</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//&nbsp;We&nbsp;must&nbsp;have&nbsp;the&nbsp;same&nbsp;number&nbsp;of&nbsp;values&nbsp;as&nbsp;we&nbsp;pave&nbsp;parameters&nbsp;to&nbsp;put&nbsp;them&nbsp;in</span><span class="cs__keyword">if</span>&nbsp;(commandParameters.Length&nbsp;!=&nbsp;parameterValues.Length)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">throw</span><span class="cs__keyword">new</span>&nbsp;ArgumentException(<span class="cs__string">&quot;Parameter&nbsp;count&nbsp;does&nbsp;not&nbsp;match&nbsp;Parameter&nbsp;Value&nbsp;count.&quot;</span>);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//&nbsp;Iterate&nbsp;through&nbsp;the&nbsp;SqlParameters,&nbsp;assigning&nbsp;the&nbsp;values&nbsp;from&nbsp;the&nbsp;corresponding&nbsp;position&nbsp;in&nbsp;the&nbsp;</span><span class="cs__com">//&nbsp;value&nbsp;array</span><span class="cs__keyword">for</span>&nbsp;(<span class="cs__keyword">int</span>&nbsp;i&nbsp;=&nbsp;<span class="cs__number">0</span>,&nbsp;j&nbsp;=&nbsp;commandParameters.Length;&nbsp;i&nbsp;&lt;&nbsp;j;&nbsp;i&#43;&#43;)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//&nbsp;If&nbsp;the&nbsp;current&nbsp;array&nbsp;value&nbsp;derives&nbsp;from&nbsp;IDbDataParameter,&nbsp;then&nbsp;assign&nbsp;its&nbsp;Value&nbsp;property</span><span class="cs__keyword">if</span>&nbsp;(parameterValues[i]&nbsp;<span class="cs__keyword">is</span>&nbsp;IDbDataParameter)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IDbDataParameter&nbsp;paramInstance&nbsp;=&nbsp;(IDbDataParameter)parameterValues[i];&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;(paramInstance.Value&nbsp;==&nbsp;<span class="cs__keyword">null</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;commandParameters[i].Value&nbsp;=&nbsp;DBNull.Value;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">else</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;commandParameters[i].Value&nbsp;=&nbsp;paramInstance.Value;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">else</span><span class="cs__keyword">if</span>&nbsp;(parameterValues[i]&nbsp;==&nbsp;<span class="cs__keyword">null</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;commandParameters[i].Value&nbsp;=&nbsp;DBNull.Value;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">else</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;commandParameters[i].Value&nbsp;=&nbsp;parameterValues[i];&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<span class="cs__preproc">&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endregion</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
}&nbsp;
</pre>
</div>
</div>
</div>
<p>Next is our &ldquo;shanuBizClasscs&rdquo;. Here this will be our Business Class from our webform. We pass all the queries and parameters to the Busness class and from the Business class we pass all the parameters and queries or SP to our MySQL helper class.</p>
<p>For example, here we can see I have created an object for our MysqlHelperclass and from the Business class method passed the Stored Procedure name and parameters to the helperclass method.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="csharp">shanuMYSQLHelper.shanuMySqlHelper&nbsp;objDAL&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;shanuMYSQLHelper.shanuMySqlHelper();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__com">//All&nbsp;Business&nbsp;Method&nbsp;here</span><span class="cs__keyword">public</span>&nbsp;DataSet&nbsp;SelectList(String&nbsp;SP_NAME,&nbsp;SortedDictionary&lt;<span class="cs__keyword">string</span>,&nbsp;<span class="cs__keyword">string</span>&gt;&nbsp;sd)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">try</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">return</span>&nbsp;objDAL.SP_DataTable_return(SP_NAME,&nbsp;GetSdParameter(sd));&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">catch</span>&nbsp;(Exception&nbsp;ex)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">throw</span>&nbsp;ex;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
</pre>
</div>
</div>
</div>
<p>&nbsp;</p>
<p><strong>Design your web page and do CRUD Operations<br>
</strong><br>
In my sample application let's see:</p>
<ul>
<li>How to search for an item by Item_Code and by Item_Name. Using Stored Procedure.
</li><li>Add new Item to ItemMaster. Using Stored Procedure. </li><li>Edit Item from ItemMaster. Using Stored Procedure. </li><li>Delete item from ItemMaster. Using update Query. (For the delete, I will not delete the record from the table. Instead of deleting the record from the table, I have a field called DeleteStatus and by default during an insert I will use the status &quot;N&quot; for
 deletion that I will update to &quot;Y&quot;. </li></ul>
<p><strong>Search Item: An </strong>item can be searched for by Item Code and by Item Name. In SQL Server we use % like to display all the records that start with the character. For MySQL we use CONCAT(TRIM(COLUMN_NAME),&rsquo;%&rsquo;).<br>
<br>
<strong>Stored Procedure<br>
</strong><br>
The following is the Stored Procedure to search by ItemCode and Item Name:</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="js">--&nbsp;Stored&nbsp;procedure&nbsp;to&nbsp;search&nbsp;by&nbsp;ItemCode&nbsp;and&nbsp;Item&nbsp;Name&nbsp;
DELIMITER&nbsp;//&nbsp;
CREATE&nbsp;PROCEDURE&nbsp;USP_SelectItemmaster(IN&nbsp;P_ItemCode&nbsp;varchar(<span class="js__num">100</span>),IN&nbsp;P_ItemName&nbsp;varchar(<span class="js__num">100</span>))&nbsp;
BEGIN&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;SELECT&nbsp;&nbsp;Item_Code,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item_Name,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TAX1,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Description,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IN_DATE,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IN_USR_ID,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DeleteStatus&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FROM&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ItemMaster&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;where&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item_Code&nbsp;like&nbsp;&nbsp;CONCAT(TRIM(IFNULL(P_ItemCode,&nbsp;<span class="js__string">''</span>)),&nbsp;<span class="js__string">'%'</span>)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and&nbsp;Item_Name&nbsp;like&nbsp;&nbsp;CONCAT(TRIM(IFNULL(P_ItemName,&nbsp;<span class="js__string">''</span>)),&nbsp;<span class="js__string">'%'</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AND&nbsp;DeleteStatus=<span class="js__string">'N'</span>;&nbsp;
END&nbsp;//&nbsp;
DELIMITER&nbsp;;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;<img id="142004" src="142004-14.jpg" alt="" width="600" height="320"></div>
<p><strong>Search Button Click: </strong>In the search button click we pass both the itemcode and Itemname TextBox value as parameter to the search Stored Procedure to return the result.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="csharp"><span class="cs__keyword">protected</span>&nbsp;<span class="cs__keyword">void</span>&nbsp;btnSearch_Click(<span class="cs__keyword">object</span>&nbsp;sender,&nbsp;ImageClickEventArgs&nbsp;e)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SelectList();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;
<span class="cs__com">//This&nbsp;Method&nbsp;is&nbsp;used&nbsp;for&nbsp;the&nbsp;search&nbsp;result&nbsp;bind&nbsp;in&nbsp;Grid</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">private</span>&nbsp;<span class="cs__keyword">void</span>&nbsp;SelectList()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SortedDictionary&lt;<span class="cs__keyword">string</span>,&nbsp;<span class="cs__keyword">string</span>&gt;&nbsp;sd&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;SortedDictionary&lt;<span class="cs__keyword">string</span>,&nbsp;<span class="cs__keyword">string</span>&gt;()&nbsp;{&nbsp;};&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_ItemCode&quot;</span>,&nbsp;txtSitemCDE.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_ItemName&quot;</span>,&nbsp;txtSItemNme.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataSet&nbsp;ds&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;DataSet();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ds&nbsp;=&nbsp;bizObj.SelectList(<span class="cs__string">&quot;USP_SelectItemmaster&quot;</span>,&nbsp;sd);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GridView1.DataSource&nbsp;=&nbsp;ds;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GridView1.DataBind();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;<strong>Add new Item to ItemMaster:</strong> By clicking the New Button I will display all the TextBoxes to get the user input to store new Item information to the MySQL Database.<br>
<br>
<strong>Insert Stored Procedure:</strong> In the insert Stored Procedure I will check whether or not the ItemName already exists. If the Item Name exists then I will display the message to the user indicating the item already exists. If the item does not exist
 then I will insert the new Item record into the MySQL Database.<br>
<br>
<strong>Insert Stored Procedure for Item master</strong></div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="mysql"><span class="sql__com">--&nbsp;Insert&nbsp;Stored&nbsp;Procedure&nbsp;for&nbsp;Item&nbsp;master</span>&nbsp;
<span class="sql__id">DELIMITER</span>&nbsp;//&nbsp;
<span class="sql__keyword">CREATE</span>&nbsp;<span class="sql__keyword">PROCEDURE</span>&nbsp;<span class="sql__id">USP_InsertItemmaster</span>(<span class="sql__keyword">IN</span>&nbsp;<span class="sql__id">P_Item_Name</span>&nbsp;<span class="sql__keyword">varchar</span>(<span class="sql__number">100</span>),&nbsp;
<span class="sql__keyword">IN</span>&nbsp;<span class="sql__id">P_Price</span>&nbsp;<span class="sql__keyword">int</span>,&nbsp;
<span class="sql__keyword">IN</span>&nbsp;<span class="sql__id">P_TAX1</span>&nbsp;<span class="sql__keyword">int</span>,&nbsp;
<span class="sql__keyword">IN</span>&nbsp;<span class="sql__id">P_Description</span>&nbsp;<span class="sql__keyword">varchar</span>(<span class="sql__number">100</span>),&nbsp;
<span class="sql__keyword">IN</span>&nbsp;<span class="sql__id">P_IN_USR_ID</span>&nbsp;<span class="sql__keyword">varchar</span>(<span class="sql__number">100</span>)&nbsp;
)&nbsp;
<span class="sql__keyword">BEGIN</span>&nbsp;
&nbsp;<span class="sql__keyword">IF</span>&nbsp;<span class="sql__keyword">NOT</span>&nbsp;<span class="sql__keyword">EXISTS</span>(<span class="sql__keyword">SELECT</span>&nbsp;<span class="sql__number">1</span>&nbsp;<span class="sql__keyword">FROM</span>&nbsp;<span class="sql__id">ItemMaster</span>&nbsp;<span class="sql__keyword">WHERE</span>&nbsp;<span class="sql__id">Item_Name</span>=<span class="sql__id">P_Item_Name</span>&nbsp;<span class="sql__keyword">and</span>&nbsp;<span class="sql__id">DeleteStatus</span>=<span class="sql__string">'N'</span>)&nbsp;<span class="sql__keyword">THEN</span>&nbsp;
&nbsp;&nbsp;<span class="sql__keyword">BEGIN</span>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__keyword">insert</span>&nbsp;<span class="sql__keyword">into</span>&nbsp;<span class="sql__id">ItemMaster</span>(<span class="sql__id">Item_Name</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">Price</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">TAX1</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">Description</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">IN_DATE</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">IN_USR_ID</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">DeleteStatus</span>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__keyword">values</span>&nbsp;(<span class="sql__id">P_Item_Name</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">P_Price</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">P_TAX1</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">P_Description</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__function">now</span>(),&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__id">P_IN_USR_ID</span>,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__string">'N'</span>);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__keyword">select</span>&nbsp;<span class="sql__string">&quot;inserted&quot;</span>&nbsp;<span class="sql__keyword">as</span>&nbsp;<span class="sql__string">&quot;Result&quot;</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="sql__keyword">end</span>;&nbsp;
&nbsp;<span class="sql__keyword">ELSE</span>&nbsp;
&nbsp;<span class="sql__keyword">select</span>&nbsp;<span class="sql__string">&quot;Exists&quot;</span>&nbsp;<span class="sql__keyword">as</span>&nbsp;<span class="sql__string">&quot;Result&quot;</span>;&nbsp;
&nbsp;<span class="sql__keyword">ENd</span>&nbsp;<span class="sql__keyword">IF</span>;&nbsp;
<span class="sql__keyword">END</span>&nbsp;//&nbsp;
<span class="sql__id">DELIMITER</span>&nbsp;;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;<img id="142005" src="142005-15.jpg" alt="" width="600" height="350"></div>
<p><strong>In save Button Click: </strong>I will pass all the parameters to the Insert Stored Procedure.The Procedure function will return as a dataset. If the item is inserted, I will return the result &ldquo;Inserted&rdquo;. If the item already exists and
 is not inserted, then I will return the result &ldquo;Exists&rdquo;. Depending on the result, the following result will be displayed to the end user.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="csharp"><span class="cs__keyword">private</span>&nbsp;<span class="cs__keyword">void</span>&nbsp;InsertCall()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SortedDictionary&lt;<span class="cs__keyword">string</span>,&nbsp;<span class="cs__keyword">string</span>&gt;&nbsp;sd&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;SortedDictionary&lt;<span class="cs__keyword">string</span>,&nbsp;<span class="cs__keyword">string</span>&gt;()&nbsp;{&nbsp;};&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_Item_Name&quot;</span>,&nbsp;txtitemName.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_Price&quot;</span>,&nbsp;txtPrice.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_TAX1&quot;</span>,&nbsp;txtTax.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_Description&quot;</span>,&nbsp;txtdescription.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="cs__string">&quot;@P_IN_USR_ID&quot;</span>,&nbsp;txtuser.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataSet&nbsp;ds&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;DataSet();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ds&nbsp;=&nbsp;&nbsp;bizObj.SelectList(<span class="cs__string">&quot;USP_InsertItemmaster&quot;</span>,&nbsp;sd);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;(ds.Tables.Count&nbsp;&gt;&nbsp;<span class="cs__number">0</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">if</span>&nbsp;(ds.Tables[<span class="cs__number">0</span>].Rows[<span class="cs__number">0</span>].ItemArray[<span class="cs__number">0</span>].ToString()&nbsp;==&nbsp;<span class="cs__string">&quot;Exists&quot;</span>)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Page.ClientScript.RegisterClientScriptBlock(<span class="cs__keyword">this</span>.GetType(),&nbsp;<span class="cs__string">&quot;alert&quot;</span>,&nbsp;<span class="cs__string">&quot;alert('Item&nbsp;already&nbsp;Exist&nbsp;!')&quot;</span>,&nbsp;<span class="cs__keyword">true</span>);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;txtitemName.Focus();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">else</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;clearControls();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SelectList();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;<strong>Edit Item from ItemMaster:</strong> The user can edit an item by clicking edit item from the GridView. When the user clicks on the edit button; in the grid, I will change the New Icon to edit and in the Item Code,
 I will display the selected Item Code with other details. The user can update the details by the Item Code selected.</div>
<p><img id="142006" src="142006-16.jpg" alt="" width="600" height="350"></p>
<p>&nbsp;</p>
<p><strong>Update Stored Procedure for Item master</strong></p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>SQL</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">mysql</span>

<div class="preview">
<pre class="js">--&nbsp;Update&nbsp;Stored&nbsp;Procedure&nbsp;<span class="js__statement">for</span>&nbsp;Item&nbsp;master&nbsp;
DELIMITER&nbsp;//&nbsp;
CREATE&nbsp;PROCEDURE&nbsp;USP_UpdateItemmaster(IN&nbsp;P_Item_Code&nbsp;int,&nbsp;
IN&nbsp;P_Item_Name&nbsp;varchar(<span class="js__num">100</span>),&nbsp;
IN&nbsp;P_Price&nbsp;int,&nbsp;
IN&nbsp;P_TAX1&nbsp;int,&nbsp;
IN&nbsp;P_Description&nbsp;varchar(<span class="js__num">100</span>),&nbsp;
IN&nbsp;P_IN_USR_ID&nbsp;varchar(<span class="js__num">100</span>)&nbsp;
)&nbsp;
BEGIN&nbsp;
&nbsp;update&nbsp;ItemMaster&nbsp;SET&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price=P_Price,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TAX1=P_TAX1,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Description=P_Description&nbsp;
&nbsp;where&nbsp;Item_Code=P_Item_Code;&nbsp;
&nbsp;select&nbsp;<span class="js__string">&quot;updated&quot;</span>&nbsp;as&nbsp;<span class="js__string">&quot;Result&quot;</span>;&nbsp;
&nbsp;
END&nbsp;//&nbsp;
DELIMITER&nbsp;;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode"><strong>In save Button Click:</strong> I will pass all the parameters to the update Stored Procedure. After the update is complete, I will refresh the grid to see the changes.</div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="js">private&nbsp;<span class="js__operator">void</span>&nbsp;UpdateCall()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">{</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SortedDictionary&lt;string,&nbsp;string&gt;&nbsp;sd&nbsp;=&nbsp;<span class="js__operator">new</span>&nbsp;SortedDictionary&lt;string,&nbsp;string&gt;()&nbsp;<span class="js__brace">{</span><span class="js__brace">}</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="js__string">&quot;@P_Item_Code&quot;</span>,&nbsp;txtitemCode.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="js__string">&quot;@P_Item_Name&quot;</span>,&nbsp;txtitemName.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="js__string">&quot;@P_Price&quot;</span>,&nbsp;txtPrice.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="js__string">&quot;@P_TAX1&quot;</span>,&nbsp;txtTax.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="js__string">&quot;@P_Description&quot;</span>,&nbsp;txtdescription.Text.Trim());&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sd.Add(<span class="js__string">&quot;@P_IN_USR_ID&quot;</span>,&nbsp;txtuser.Text.Trim());&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataSet&nbsp;ds&nbsp;=&nbsp;<span class="js__operator">new</span>&nbsp;DataSet();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ds&nbsp;=&nbsp;&nbsp;bizObj.SelectList(<span class="js__string">&quot;USP_UpdateItemmaster&quot;</span>,&nbsp;sd);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SelectList();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;clearControls();&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">}</span></pre>
</div>
</div>
</div>
<p><strong>Delete Item from ItemMaster: </strong>User can delete item by clicking delete item from the GridView. When user click on the delete button in grid the selected item will be deleted by ItemCode. For Delete, I will not delete the record from table.
 Instead of delete record from table, I have a field called DeleteStatus by default during insert I will use status as &lsquo;N&rsquo; for deletion I will update as &lsquo;Y&rsquo;.Here we can see I have deleted our previous Item &ldquo;Samsung Mobile S6&rdquo;.</p>
<p><img id="142007" src="142007-17.jpg" alt="" width="600" height="330"></p>
<p><strong>In Delete Button Click from Grid:</strong> For deleting, I don't use the Stored Procedure. For sample update query, I have used function deletestatus. In GridView rowCommand, I will check for the something.&nbsp;</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="js"><span class="js__sl_comment">//&nbsp;This&nbsp;method&nbsp;will&nbsp;delete&nbsp;the&nbsp;selected&nbsp;Rocord&nbsp;from&nbsp;DB</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;private&nbsp;<span class="js__operator">void</span>&nbsp;DeleteItem(<span class="js__object">String</span>&nbsp;ItemCode)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">{</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;inserStatus&nbsp;=&nbsp;bizObj.ExecuteNonQuery_IUD(<span class="js__string">&quot;update&nbsp;ItemMaster&nbsp;SET&nbsp;DeleteStatus='Y'&nbsp;where&nbsp;Item_Code='&quot;</span>&nbsp;&#43;&nbsp;ItemCode&nbsp;&#43;&nbsp;<span class="js__string">&quot;'&quot;</span>);&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SelectList();&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="js__brace">}</span>&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<p>In the Selectlist() stored procedure, I will select an item with DeleteStatus='N'. So, the deleted item will not bound again in the grid.<br>
<strong>CSS File</strong><br>
<br>
I have added a bit of CSS to the root Site.css file and used the default MasterPage. If the CSS is not added to the MasterPage, then kindly add it. The CSS file can be found inside the folder Content in Visual Studio 2015.</p>
<h1><span>Source Code Files</span></h1>
<ul>
<li><span>ShanuVS2015.zip</span> </li></ul>
<h1>More Information</h1>
<p><em><a href="https://dev.mysql.com/downloads/installer/" target="_blank">Download MySQL Installer</a></em></p>
