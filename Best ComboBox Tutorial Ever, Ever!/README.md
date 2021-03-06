# Best ComboBox Tutorial Ever, Ever!
## Requires
- Visual Studio 2010
## License
- Apache License, Version 2.0
## Technologies
- C#
- WPF
- XAML
## Topics
- DataGrid
- ComboBox
- XML data
- WPF Data Binding
- ListBoxItem
- Binding
- WPF Binding
- CellTemplate
- XAML Array
- ItemsSource
- SelectedValue
- SelectedItem
- DisplayMemberPath
- StaticResource
- Static Data
- XML Binding
- XmlDataProvider
- x:Array
- CompositeCollection
- CollectionContainer
- DataGridComboBoxColumn
- DataGridTemplateColumn
- DataGridTextColumn
- CellEditingTemplate
- ElementStyle
- EditingElementStyle
## Updated
- 09/20/2012
## Description

<h1>Introduction</h1>
<div>This project covers everything you need to know about ComboBoxes and so much more! It covers populating data from many sources and types, as well as binding and generating list items with code-behind and MVVM style sources. This applies to any ItemsControl
 like ListBoxes and also DataGridComboBoxColumns.</div>
<div></div>
<div><img id="67001" src="http://i1.code.msdn.s-msft.com/best-combobox-tutorial-5cc27f82/image/file/67001/1/combos.png" alt="" width="613" height="273"></div>
<div>&nbsp;</div>
<h1><span>Building the Sample</span></h1>
<div>Just download, unzip, open and run!</div>
<div>&nbsp;</div>
<h1><span style="font-size:20px">Description</span></h1>
<div>This project contains 12 distinct examples of ComboBox creation.</div>
<div></div>
<h2>1. List&lt;string&gt; SelectedItem</h2>
<div>This ComboBox is simply populated with a string collection. As a string object is not a Class, SelectedItem and SelectedValue are the same. We bind SelectedItem to a property that is also shared with a label to show the result.</div>
<div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;TextBlock&nbsp;Text=<span class="js__string">&quot;Example&nbsp;1&quot;</span>&nbsp;VerticalAlignment=<span class="js__string">&quot;Center&quot;</span>/&gt;&nbsp;
&lt;ComboBox&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;MyStringOptions}&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;1&quot;</span>&nbsp;SelectedItem=<span class="js__string">&quot;{Binding&nbsp;SelectedOption1}&quot;</span>&nbsp;Margin=<span class="js__string">&quot;5&quot;</span>/&gt;&nbsp;
&lt;TextBlock&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;SelectedOption1}&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;2&quot;</span>&nbsp;Margin=<span class="js__string">&quot;10,5,5,0&quot;</span>&nbsp;VerticalAlignment=<span class="js__string">&quot;Center&quot;</span>/&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
</div>
<h2>2. List&lt;Class&gt; SelectedItem</h2>
<div>This ComboBox's itemsSource is a collection of MyClass, which has Name and Age properties. SelectedItem is again used, but as it is a class, we can now use all the properties of the SelectedItem. Notice we use DisplayMemberPath to define which property
 is shown in the list.</div>
<div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;TextBlock&nbsp;Grid.Row=<span class="js__string">&quot;1&quot;</span>&nbsp;Text=<span class="js__string">&quot;Example&nbsp;2&quot;</span>&nbsp;VerticalAlignment=<span class="js__string">&quot;Center&quot;</span>/&gt;&nbsp;
&lt;ComboBox&nbsp;Grid.Row=<span class="js__string">&quot;1&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;1&quot;</span>&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;MyClassOptions}&quot;</span>&nbsp;SelectedItem=<span class="js__string">&quot;{Binding&nbsp;SelectedClass}&quot;</span>&nbsp;DisplayMemberPath=<span class="js__string">&quot;Name&quot;</span>&nbsp;Margin=<span class="js__string">&quot;5&quot;</span>/&gt;&nbsp;
&lt;TextBlock&nbsp;Grid.Row=<span class="js__string">&quot;1&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;2&quot;</span>&nbsp;Margin=<span class="js__string">&quot;10,5,5,0&quot;</span>&nbsp;VerticalAlignment=<span class="js__string">&quot;Center&quot;</span>&gt;&lt;Run&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;SelectedClass.Name}&quot;</span><span class="js__reg_exp">/&gt;&lt;Run&nbsp;Text=&quot;&nbsp;-&nbsp;&quot;/</span>&gt;&lt;Run&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;SelectedClass.Age}&quot;</span><span class="js__reg_exp">/&gt;&lt;/</span>TextBlock&gt;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<h2 class="endscriptcode">3. List&lt;Class&gt; SelectedValue</h2>
</div>
<div>This example is similar to the previous, but captures one SelectedValue from the Class, instead of the whole object. When you use SelectedValue on a class object, you need to specify SelectedValuePath.</div>
<h2>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;TextBlock&nbsp;Grid.Row=<span class="js__string">&quot;2&quot;</span>&nbsp;Text=<span class="js__string">&quot;Example&nbsp;3&quot;</span>&nbsp;VerticalAlignment=<span class="js__string">&quot;Center&quot;</span>/&gt;&nbsp;
&lt;ComboBox&nbsp;Grid.Row=<span class="js__string">&quot;2&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;1&quot;</span>&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;MyClassOptions}&quot;</span>&nbsp;SelectedValuePath=<span class="js__string">&quot;Age&quot;</span>&nbsp;SelectedValue=<span class="js__string">&quot;{Binding&nbsp;SelectedAge}&quot;</span>&nbsp;DisplayMemberPath=<span class="js__string">&quot;Name&quot;</span>&nbsp;Margin=<span class="js__string">&quot;5&quot;</span>/&gt;&nbsp;
&lt;TextBlock&nbsp;Grid.Row=<span class="js__string">&quot;2&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;2&quot;</span>&nbsp;Margin=<span class="js__string">&quot;10,5,5,0&quot;</span>&nbsp;VerticalAlignment=<span class="js__string">&quot;Center&quot;</span>&gt;&lt;Run&nbsp;Text=<span class="js__string">&quot;Selected&nbsp;age:&nbsp;&quot;</span><span class="js__reg_exp">/&gt;&lt;Run&nbsp;Text=&quot;{Binding&nbsp;SelectedAge}&quot;/</span>&gt;&lt;/TextBlock&gt;&nbsp;
</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
4. ComboBox ItemTemplate</h2>
<div>What if you want to display more than one property? Instead of using DisplayMemberPath, you can define your own ItemTemplate, and build your list item however you want.</div>
<div>&nbsp;</div>
<div>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;ComboBox</span>&nbsp;.&nbsp;.&nbsp;.&nbsp;<span class="xaml__attr_name">ItemTemplate</span>=<span class="xaml__attr_value">&quot;{StaticResource&nbsp;Example4ItemTemplate}&quot;</span>&nbsp;<span class="xaml__tag_start">/&gt;</span></pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;DataTemplate&nbsp;x:Key=<span class="js__string">&quot;Example4ItemTemplate&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;StackPanel&nbsp;Orientation=<span class="js__string">&quot;Horizontal&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TextBlock&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;Name}&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TextBlock&nbsp;Text=<span class="js__string">&quot;,&nbsp;Aged&nbsp;&quot;</span>/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TextBlock&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;Age}&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;1&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/StackPanel&gt;&nbsp;
&lt;/DataTemplate&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<h2 class="endscriptcode">5. XAML Array - Static XAML Data</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">If your ComboBox options are limited, static and not worth coding, or if you are in a hurry, then you can just dump the data into the actual XAML.</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;ComboBox</span>&nbsp;.&nbsp;.&nbsp;.&nbsp;<span class="xaml__attr_name">ItemsSource</span>=<span class="xaml__attr_value">&quot;{StaticResource&nbsp;Example9_XamlArray}&quot;</span>&nbsp;<span class="xaml__tag_start">/&gt;</span></pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
</div>
<h2 class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;x:<span class="js__object">Array</span>&nbsp;x:Key=<span class="js__string">&quot;Example9_XamlArray&quot;</span>&nbsp;Type=<span class="js__string">&quot;sys:String&quot;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xmlns:sys=<span class="js__string">&quot;clr-namespace:System;assembly=mscorlib&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Bear&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Bird&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Cat&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Cow&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Dog&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Elephant&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Fish&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Goat&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;sys:<span class="js__object">String</span>&gt;Hamster&lt;/sys:<span class="js__object">String</span>&gt;&nbsp;
&lt;/x:<span class="js__object">Array</span>&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
6. XML Data - XmldataProvider</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">There are many reasons why your data may be in XML. ComboBoxes can consume your XMl through an XmlDataProvider.</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;ComboBox</span>&nbsp;.&nbsp;.&nbsp;.&nbsp;<span class="xaml__attr_name">ItemsSource</span>=<span class="xaml__attr_value">&quot;{Binding&nbsp;Source={StaticResource&nbsp;WorkmenData}}&quot;</span>&nbsp;<span class="xaml__attr_name">DisplayMemberPath</span>=<span class="xaml__attr_value">&quot;@Name&quot;</span>&nbsp;<span class="xaml__attr_name">SelectedValuePath</span>=<span class="xaml__attr_value">&quot;@Name&quot;</span>&nbsp;<span class="xaml__tag_start">/&gt;</span></pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;XmlDataProvider&nbsp;x:Key=<span class="js__string">&quot;WorkmenData&quot;</span>&nbsp;XPath=<span class="js__string">&quot;Workmen/Man&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;x:XData&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Workmen&nbsp;xmlns=<span class="js__string">&quot;&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Man&nbsp;Name=<span class="js__string">&quot;Bob&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Man&nbsp;Name=<span class="js__string">&quot;Charles&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Man&nbsp;Name=<span class="js__string">&quot;Harry&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Man&nbsp;Name=<span class="js__string">&quot;Mark&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Man&nbsp;Name=<span class="js__string">&quot;Nick&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Man&nbsp;Name=<span class="js__string">&quot;William&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/Workmen&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/x:XData&gt;&nbsp;
&lt;/XmlDataProvider&gt;</pre>
</div>
</div>
</div>
<h2 class="endscriptcode">7. Static Class Property</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">ItemSource binding can even target a static class property, which can either contain preformatted data, or could be used to retrieve data from database or file sources.</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<h2 class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;ComboBox&nbsp;Grid.Row=<span class="js__string">&quot;6&quot;</span>&nbsp;Grid.Column=<span class="js__string">&quot;1&quot;</span>&nbsp;DisplayMemberPath=<span class="js__string">&quot;Model&quot;</span>&nbsp;Margin=<span class="js__string">&quot;5&quot;</span>&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;Source={x:Static&nbsp;model:StaticData.MyCarsStatic}}&quot;</span>&nbsp;/&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
8. Composite Collection</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">Composite Collections allow you to group together any collections or objects of different types, into one listable collection.</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;CompositeCollection&nbsp;x:Key=<span class="js__string">&quot;Example7_CompositeCollection&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;CollectionContainer&nbsp;Collection=<span class="js__string">&quot;{Binding&nbsp;Source={StaticResource&nbsp;WorkmenData}}&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;CollectionContainer&nbsp;Collection=<span class="js__string">&quot;{Binding&nbsp;Source={StaticResource&nbsp;MyCarsCollection}}&quot;</span>/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;ListBoxItem&nbsp;Background=<span class="js__string">&quot;Yellow&quot;</span>&gt;Another&nbsp;ListBoxItem&lt;/ListBoxItem&gt;&nbsp;
&lt;/CompositeCollection&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">How does it know how to display each type of data? You define DataTemplates for each DataType.</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;ComboBox.Resources&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataTemplate&nbsp;DataType=<span class="js__string">&quot;Man&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TextBlock&nbsp;Background=<span class="js__string">&quot;LightBlue&quot;</span>&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;XPath=@Name}&quot;</span>/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataTemplate&nbsp;DataType=<span class="js__string">&quot;{x:Type&nbsp;model:MyCar}&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TextBlock&nbsp;Background=<span class="js__string">&quot;LightGreen&quot;</span>&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;Model}&quot;</span>/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataTemplate&gt;&nbsp;
&lt;/ComboBox.Resources&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
</div>
<h2 class="endscriptcode">9. DataGridTemplateColumn CellTemplate</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">With a CellTemplate, you can add your own physical ComboBox to a DataGrid column. This SHOWS the ComboBox, and allows single-click access.</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;DataGridTemplateColumn&nbsp;Header=<span class="js__string">&quot;Example&nbsp;9&quot;</span>&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataGridTemplateColumn.CellTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ComboBox&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;PartIds,&nbsp;RelativeSource={RelativeSource&nbsp;AncestorType=Window}}&quot;</span>&nbsp;SelectedItem=<span class="js__string">&quot;{Binding&nbsp;PartId,&nbsp;UpdateSourceTrigger=PropertyChanged}&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataGridTemplateColumn.CellTemplate&gt;&nbsp;
&lt;/DataGridTemplateColumn&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">Note the ItemsSource is pointing to a separate source, using RelativeSource AncestorType=Window to get back to the DataContext/ViewModel.</div>
<div class="endscriptcode">&nbsp;</div>
<h2 class="endscriptcode">10. DataGridTemplateColumn&nbsp;CellEditingTemplate</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">This example has both CellTemplate, for a custom label style, and CellEditingTemplate which shows the ComboBox, similar to the default DataGridComboBoxCoilumn, but customisable.</div>
<div class="endscriptcode">&nbsp;</div>
<h2 class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;DataGridTemplateColumn.CellTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;TextBlock&nbsp;Background=<span class="js__string">&quot;LightBlue&quot;</span>&nbsp;Foreground=<span class="js__string">&quot;BlueViolet&quot;</span>&nbsp;Text=<span class="js__string">&quot;{Binding&nbsp;PartId}&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataTemplate&gt;&nbsp;
&lt;/DataGridTemplateColumn.CellTemplate&gt;&nbsp;
&lt;DataGridTemplateColumn.CellEditingTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ComboBox&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;PartIds,&nbsp;RelativeSource={RelativeSource&nbsp;AncestorType=Window}}&quot;</span>&nbsp;SelectedItem=<span class="js__string">&quot;{Binding&nbsp;PartId,&nbsp;UpdateSourceTrigger=PropertyChanged}&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataTemplate&gt;&nbsp;
&lt;/DataGridTemplateColumn.CellEditingTemplate&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
11. DataGridComboBoxColumn</h2>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">This is the standard autogenerated ComboBox column of a DataGrid. CellTemplate defaults to a label, CellEditingTemplate is a ComboBox.</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;DataGridComboBoxColumn</span>&nbsp;<span class="xaml__attr_name">Header</span>=<span class="xaml__attr_value">&quot;Example&nbsp;11&quot;</span>&nbsp;<span class="xaml__attr_name">SelectedItemBinding</span>=<span class="xaml__attr_value">&quot;{Binding&nbsp;PartId,&nbsp;UpdateSourceTrigger=PropertyChanged}&quot;</span><span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;DataGridComboBoxColumn</span>.ElementStyle<span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Style</span>&nbsp;<span class="xaml__attr_name">TargetType</span>=<span class="xaml__attr_value">&quot;ComboBox&quot;</span><span class="xaml__tag_start">&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;<span class="css__element">Setter</span>&nbsp;<span class="css__element">Property</span>=&quot;<span class="css__element">ItemsSource</span>&quot;&nbsp;<span class="css__element">Value</span>=&quot;{Binding&nbsp;Path=PartIds,&nbsp;RelativeSource={RelativeSource&nbsp;AncestorType=Window}}&quot;&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_end">&lt;/Style&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataGridComboBoxColumn.ElementStyle&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;DataGridComboBoxColumn</span>.EditingElementStyle<span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Style</span>&nbsp;<span class="xaml__attr_name">TargetType</span>=<span class="xaml__attr_value">&quot;ComboBox&quot;</span><span class="xaml__tag_start">&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;<span class="css__element">Setter</span>&nbsp;<span class="css__element">Property</span>=&quot;<span class="css__element">ItemsSource</span>&quot;&nbsp;<span class="css__element">Value</span>=&quot;{Binding&nbsp;Path=PartIds,&nbsp;RelativeSource={RelativeSource&nbsp;AncestorType=Window}}&quot;&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_end">&lt;/Style&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataGridComboBoxColumn.EditingElementStyle&gt;&nbsp;
<span class="xaml__tag_end">&lt;/DataGridComboBoxColumn&gt;</span></pre>
</div>
</div>
</div>
<div class="endscriptcode">Note we have to help wire back in the&nbsp;ItemsSource,&nbsp;because DataGrid.Columns property doesn't have DataContext.</div>
<div class="endscriptcode">&nbsp;</div>
<h2 class="endscriptcode">12. Using an Object&nbsp;Collection&nbsp;for Options</h2>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">The previous DataGrid examples used a List&lt;string&gt; for the ComboBox Items. This&nbsp;final&nbsp;example assumes the options are themselves objects with properties.</div>
<div class="endscriptcode">&nbsp;</div>
<div class="endscriptcode">
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="js">&lt;DataGridTemplateColumn.CellTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;DataTemplate&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ComboBox&nbsp;ItemsSource=<span class="js__string">&quot;{Binding&nbsp;CarParts,&nbsp;RelativeSource={RelativeSource&nbsp;AncestorType=Window}}&quot;</span>&nbsp;DisplayMemberPath=<span class="js__string">&quot;PartName&quot;</span>&nbsp;SelectedValuePath=<span class="js__string">&quot;PartID&quot;</span>&nbsp;&nbsp;SelectedValue=<span class="js__string">&quot;{Binding&nbsp;PartId,&nbsp;UpdateSourceTrigger=PropertyChanged}&quot;</span>&nbsp;/&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataTemplate&gt;&nbsp;
&lt;/DataGridTemplateColumn.CellTemplate&gt;</pre>
</div>
</div>
</div>
<div class="endscriptcode">This final DataGrid also allows inputting new rows of data. When you add a new row of data, you will notice the Model and registration columns don't update with new values. This is because they do not implement INotifyPropertyChanged.</div>
</div>
<div class="endscriptcode">&nbsp;</div>
</div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><img src="http://213.163.64.28/aniThanks1.gif" alt="" style="margin-right:auto; margin-left:auto; display:block"></p>
