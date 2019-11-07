# Calculator F sharp  WPF  (F# only)
## Requires
- Visual Studio 2017
## License
- MIT
## Technologies
- WPF
- XAML
- F#
- F sharp
## Topics
- Calculator Application
- XAML Styles
- F sharp only
## Updated
- 09/04/2018
## Description

<h1>Introduction</h1>
<p>Install dot.Net 4.7.2&nbsp; <a href="https://www.microsoft.com/net/download/thank-you/net472-developer-pack">
https://www.microsoft.com/net/download/thank-you/net472-developer-pack&nbsp;</a></p>
<p><span style="color:#ff0000">Built base on new F# NuGet approaches.</span></p>
<p><span style="color:#ff0000">When a new version of the F# language ships, the major and minor versions will be updated appropriately.<br>
</span></p>
<p>Standard Calculator F# only - Example.</p>
<p>What You can find here - &nbsp;the sample to show beginners how much easy it is to develop applications using NET Framework with F# only language. Through this example, you will see some most useful functional algorithmic approach. Also, you will understand
 how to program buttons and use its properties, especially the&nbsp;object sender which is the first parameter of any click event. In fact, the sender object encapsulates all the control's button properties. Just a casting operation to a Button control will
 give you access to these properties.</p>
<p><em style="font-size:x-small"><br>
</em></p>
<h1><span>Building the Sample</span></h1>
<p><em><em>You will need to have Visual Studio 2015&nbsp; installed or higher, which you can download them from</em></em></p>
<p>https://www.visualstudio.com/vs/release-notes/ OR</p>
<p><em><em>https://www.microsoft.com/en-us/download/details.aspx?id=48146<br>
</em></em></p>
<p><span style="font-size:20px; font-weight:bold">Description</span></p>
<p>It is Standard Calculator which was written with using only F# language.</p>
<p>It works with any Windows Operation System.&nbsp;</p>
<p><em><img id="162493" src="162493-calc1.png" alt="" width="319" height="513">&nbsp;</em></p>
<p>&nbsp;</p>
<div class="scriptcode">
<div class="pluginEditHolder">
<div class="title"><span>XAML</span><span>F#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span><span class="hidden">fsharp</span>
<pre class="hidden">&lt;UserControl  
        xmlns=&quot;http://schemas.microsoft.com/winfx/2006/xaml/presentation&quot; 
        xmlns:x=&quot;http://schemas.microsoft.com/winfx/2006/xaml&quot;  
        &gt;
    &lt;Grid Width=&quot;206&quot; Height=&quot;304&quot; RenderTransformOrigin=&quot;0.5,0.5&quot; Background=&quot;#FFF6F7F9&quot; &gt;
        &lt;Button x:Name=&quot;btnMC&quot; Content=&quot;MC&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,75,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnMR&quot; Content=&quot;MR&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;48,75,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnMS&quot; Content=&quot;MS&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;86,75,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnMPlus&quot; Content=&quot;M&#43;&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;124,75,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnMMinus&quot; Content=&quot;M-&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;162,75,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnBack&quot; Content=&quot;&szlig;&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,113,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot; FontFamily=&quot;Wingdings&quot;/&gt;
        &lt;Button x:Name=&quot;btnCE&quot; Content=&quot;CE&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;48,113,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnC&quot; Content=&quot;C&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;86,113,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnPM&quot; Content=&quot;&plusmn;&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;124,113,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnSqRt&quot; Content=&quot;&radic;&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;162,113,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnDiv&quot; Content=&quot;/&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;124,151,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnPercent&quot; Content=&quot;%&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;162,151,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot; IsCancel=&quot;True&quot;/&gt;
        &lt;Button x:Name=&quot;btnMult&quot; Content=&quot;*&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;125,189,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnReciproc&quot; Content=&quot;1/x&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;163,189,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnMinus&quot; Content=&quot;-&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;125,227,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnEqual&quot; Content=&quot;=&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;163,227,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;71&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btnPlus&quot; Content=&quot;&#43;&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;125,265,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFF4F7F9&quot;/&gt;
        &lt;Button x:Name=&quot;btn7&quot; Content=&quot;7&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,151,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn8&quot; Content=&quot;8&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;48,151,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn9&quot; Content=&quot;9&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;86,151,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn4&quot; Content=&quot;4&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,189,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn5&quot; Content=&quot;5&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;48,189,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn6&quot; Content=&quot;6&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;86,189,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn1&quot; Content=&quot;1&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,227,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn2&quot; Content=&quot;2&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;48,227,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn3&quot; Content=&quot;3&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;86,227,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btn0&quot; Content=&quot;0&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,265,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;71&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;Button x:Name=&quot;btnDot&quot; Content=&quot;.&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;86,265,0,0&quot; VerticalAlignment=&quot;Top&quot; Width=&quot;33&quot; Height=&quot;33&quot; Background=&quot;#FFFBFBFB&quot;/&gt;
        &lt;TextBlock x:Name=&quot;txtResult&quot; TextAlignment=&quot;Right&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;26,29,0,0&quot; TextWrapping=&quot;NoWrap&quot; Text=&quot;TextBlock &quot; VerticalAlignment=&quot;Top&quot; Height=&quot;41&quot; Width=&quot;169&quot; Background=&quot;#FFF6F7F9&quot; FontSize=&quot;27&quot;/&gt;
        &lt;TextBlock x:Name=&quot;txtMemo&quot; TextAlignment=&quot;Right&quot;  HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,29,0,0&quot; TextWrapping=&quot;Wrap&quot; Text=&quot;M&quot; VerticalAlignment=&quot;Top&quot; Height=&quot;41&quot; Width=&quot;17&quot; Background=&quot;#FFF6F7F9&quot; FontSize=&quot;17&quot;/&gt;

        &lt;TextBlock x:Name=&quot;txtHelper&quot; TextAlignment=&quot;Right&quot; HorizontalAlignment=&quot;Left&quot; Margin=&quot;10,10,0,0&quot; TextWrapping=&quot;NoWrap&quot; Text=&quot;TextBlock &quot; VerticalAlignment=&quot;Top&quot; Height=&quot;19&quot; Width=&quot;185&quot; Background=&quot;#FFF6F7F9&quot; /&gt;



    &lt;/Grid&gt;
&lt;/UserControl&gt;</pre>
<pre class="hidden">namespace MyUserControl.RectModul

open System
open System.Windows.Controls
open System.IO
open System.Windows.Markup
open System.Reflection
open Utilities 

type Calculator() as this  = 
    inherit UserControl() 
    let mySr = new StreamReader(Assembly.Load(&quot;MyUserControl&quot;).GetManifestResourceStream(&quot;Calculator.xaml&quot;))   // XAML - MUST be Embedded Resource  
    do this.Content &lt;- XamlReader.Load(mySr.BaseStream):?&gt; UserControl  // Load XAML
    
    // FIND ALL OBJECTS IN THIS.CONTENT - like partition class

    let mutable txtResult : TextBlock = (this.Content)?txtResult  
    let mutable txtHelper : TextBlock = (this.Content)?txtHelper                
    let mutable btnMC : Button = (this.Content)?btnMC         // MC = Memory Clear sets the memory to 0      
    let mutable btnMR : Button = (this.Content)?btnMR         // MR = Memory Recall uses the number in memory 
    let mutable btnMS : Button = (this.Content)?btnMS         // MS = Memory Store puts the number on the display into the memory 
    let mutable btnMPlus  : Button = (this.Content)?btnMPlus  // M&#43; = Adds the number shown on the display to the number stored in the memory      
    let mutable btnMMinus : Button = (this.Content)?btnMMinus // M- = Subtracts the number shown on the display to the number stored in the memory. 
    let mutable btnBack   : Button = (this.Content)?btnBack       
    let mutable btnCE : Button = (this.Content)?btnCE       
    let mutable btnC  : Button = (this.Content)?btnC  
    let mutable btnPM : Button = (this.Content)?btnPM         // Change sign &#43;/-
    let mutable btnSqRt   : Button = (this.Content)?btnSqRt   // SQRT      
    let mutable btnDiv     : Button = (this.Content)?btnDiv  
    let mutable btnPercent : Button = (this.Content)?btnPercent  // %       
    let mutable btnMult  : Button = (this.Content)?btnMult       
    let mutable btnReciproc: Button = (this.Content)?btnReciproc // 1/x 
    let mutable btnMinus : Button = (this.Content)?btnMinus 
    let mutable btnEqual : Button = (this.Content)?btnEqual       
    let mutable btnPlus  : Button = (this.Content)?btnPlus  
    let mutable btn7 : Button = (this.Content)?btn7       
    let mutable btn8 : Button = (this.Content)?btn8       
    let mutable btn9 : Button = (this.Content)?btn9  
    let mutable btn4 : Button = (this.Content)?btn4 
    let mutable btn5 : Button = (this.Content)?btn5       
    let mutable btn6 : Button = (this.Content)?btn6  
    let mutable btn1 : Button = (this.Content)?btn1      
    let mutable btn2 : Button = (this.Content)?btn2 
    let mutable btn3 : Button = (this.Content)?btn3       
    let mutable btn0 : Button = (this.Content)?btn0  
    let mutable btnDot : Button = (this.Content)?btnDot       
    let mutable txtMemo : TextBlock = (this.Content)?txtMemo  

   
    do txtResult.Text &lt;- &quot;0&quot;
       txtHelper.Text &lt;- &quot;&quot;
       txtMemo.Text &lt;- &quot;&quot;    //  &quot;M&quot; or &quot;&quot; (Blank)
 
    // ADD CLICK EVENT TO EACH BUTTON ...   

    // MEMORY COMMAND
    let memoCommand (oper : string) = 
        match txtResult.Text with
        | &quot;NaN&quot; | &quot;&infin;&quot;-&gt; ignore()    
        | _ -&gt;    match oper with
                  | &quot;MS&quot; -&gt; Perform.memo &lt;- txtResult.Text    // Memory Store puts the number on the display into the memory 
                            txtMemo.Text &lt;- &quot;M&quot;
                  | &quot;MR&quot; -&gt; txtResult.Text &lt;- Perform.memo    // Memory Recall uses the number in memory
                            Perform.memo &lt;- &quot;0.0&quot;
                            txtMemo.Text &lt;- &quot;&quot;
                  | &quot;MC&quot; -&gt; Perform.memo &lt;- &quot;0.0&quot;             // Memory Clear
                            txtMemo.Text &lt;- &quot;&quot;
                  | &quot;M&#43;&quot; -&gt; Perform.memo &lt;- (Double.Parse(Perform.memo) &#43; Double.Parse(txtResult.Text)).ToString()
                            txtMemo.Text &lt;- &quot;M&quot;
                  | &quot;M-&quot; -&gt; Perform.memo &lt;- (Double.Parse(Perform.memo) - Double.Parse(txtResult.Text)).ToString() 
                            txtMemo.Text &lt;- &quot;M&quot;
                  | _    -&gt; Perform.memo &lt;- (&quot;0&quot;)
                            txtMemo.Text &lt;- &quot;&quot;
                  Perform.blnCommand &lt;- true
                  txtMemo.ToolTip &lt;- Perform.memo
            
    do btnMS.Click.Add(fun _ -&gt; memoCommand(&quot;MS&quot;))
       btnMR.Click.Add(fun _ -&gt; memoCommand(&quot;MR&quot;))
       btnMC.Click.Add(fun _ -&gt;  memoCommand(&quot;MC&quot;))  
       btnMPlus.Click.Add(fun _ -&gt; memoCommand(&quot;M&#43;&quot;))
       btnMMinus.Click.Add(fun _ -&gt; memoCommand(&quot;M-&quot;))
    
    // COMMANDS { = &#43; - / * % 1/x SqRt }
    let clickCommand(oper:string) = match txtResult.Text with
                                    | &quot;NaN&quot; | &quot;&infin;&quot;-&gt; ignore() 
                                    | _ -&gt;  Perform.perform(txtResult.Text, txtHelper.Text, oper )  // update Perform.hr
                                            txtResult.Text &lt;- fst(Perform.rh)                        
                                            txtHelper.Text &lt;-snd(Perform.rh)                                

    do btnEqual.Click.Add(fun _ -&gt; clickCommand(&quot;=&quot;))
       btnPlus.Click.Add (fun _ -&gt; clickCommand(&quot;&#43;&quot;))
       btnMinus.Click.Add(fun _ -&gt; clickCommand(&quot;-&quot;))
       btnDiv.Click.Add(fun _ -&gt; clickCommand(&quot;/&quot;))
       btnMult.Click.Add(fun _ -&gt; clickCommand(&quot;*&quot;)) 
       btnPercent.Click.Add(fun _ -&gt; clickCommand(&quot;%&quot;))
       btnReciproc.Click.Add(fun _ -&gt; clickCommand(&quot;1/x&quot;))
       btnSqRt.Click.Add(fun _ -&gt; clickCommand(&quot;SqRt&quot;))
       btnPM.Click.Add(fun _ -&gt; clickCommand(&quot;&#43;-&quot;))

    // CLICK NUMBER 
    let clickNumPad(numChar:string) =  match txtResult.Text with
                                       | &quot;NaN&quot; | &quot;&infin;&quot;-&gt; ignore() 
                                       | &quot;0&quot; -&gt; txtResult.Text &lt;- numChar 
                                       | _ when Perform.blnCommand -&gt; txtResult.Text &lt;- numChar                                                                                        
                                       | _ -&gt; txtResult.Text &lt;- txtResult.Text &#43; numChar
                                       Perform.blnCommand &lt;- false

    do btn0.Click.Add(fun _ -&gt; clickNumPad(&quot;0&quot;))
       btn1.Click.Add(fun _ -&gt; clickNumPad(&quot;1&quot;))
       btn2.Click.Add(fun _ -&gt; clickNumPad(&quot;2&quot;))
       btn3.Click.Add(fun _ -&gt; clickNumPad(&quot;3&quot;))
       btn4.Click.Add(fun _ -&gt; clickNumPad(&quot;4&quot;))
       btn5.Click.Add(fun _ -&gt; clickNumPad(&quot;5&quot;))
       btn6.Click.Add(fun _ -&gt; clickNumPad(&quot;6&quot;))
       btn7.Click.Add(fun _ -&gt; clickNumPad(&quot;7&quot;))
       btn8.Click.Add(fun _ -&gt; clickNumPad(&quot;8&quot;))
       btn9.Click.Add(fun _ -&gt; clickNumPad(&quot;9&quot;))

    
    // SPECIAL COMMAND   | &quot;NaN&quot; | &quot;Infinity&quot; | &quot;Error&quot; | &quot;&infin;&quot; -&gt; rh &lt;- (result,helper)

    do btnBack.Click.Add(fun _ -&gt; match txtResult.Text with
                                  | &quot;NaN&quot; | &quot;&infin;&quot;-&gt; ignore() 
                                  | _ -&gt; match txtResult.Text.Length with 
                                         | 1 -&gt; txtResult.Text &lt;- &quot;0&quot;
                                         | _ -&gt; txtResult.Text &lt;- txtResult.Text.Substring(0, txtResult.Text.Length - 1)
                                         Perform.blnCommand &lt;- false )

    do btnDot.Click.Add(fun _ -&gt; match txtResult.Text with
                                  | &quot;NaN&quot; | &quot;&infin;&quot;-&gt; ignore() 
                                  | _ -&gt; if txtResult.Text.IndexOf(&quot;.&quot;) = -1 then
                                             txtResult.Text &lt;- txtResult.Text &#43; &quot;.&quot;
                                         Perform.blnCommand &lt;- false )

    do btnC.Click.Add(fun _ -&gt; txtResult.Text &lt;- &quot;0&quot;
                               Perform.blnCommand &lt;- false
                               txtHelper.Text &lt;- &quot;&quot;
                               txtMemo.Text &lt;- &quot;&quot;
                               Perform.memo &lt;- &quot;0.0&quot;
                               Perform.prevResult &lt;- 0.0
                               Perform.prevOper &lt;- &quot;&quot;
                               txtMemo.ToolTip &lt;- &quot;0&quot; )

    do btnCE.Click.Add(fun _ -&gt; txtResult.Text &lt;- &quot;0&quot;
                                if txtHelper.Text = &quot;&quot; then Perform.prevResult &lt;- 0.0
                                Perform.blnCommand &lt;- false)

</pre>
<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;UserControl</span>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__attr_name">xmlns</span>=<span class="xaml__attr_value">&quot;http://schemas.microsoft.com/winfx/2006/xaml/presentation&quot;</span>&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__keyword">xmlns</span>:<span class="xaml__attr_name">x</span>=<span class="xaml__attr_value">&quot;http://schemas.microsoft.com/winfx/2006/xaml&quot;</span>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Grid</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;206&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;304&quot;</span>&nbsp;<span class="xaml__attr_name">RenderTransformOrigin</span>=<span class="xaml__attr_value">&quot;0.5,0.5&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF6F7F9&quot;</span>&nbsp;<span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMC&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;MC&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,75,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMR&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;MR&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;48,75,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMS&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;MS&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;86,75,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMPlus&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;M&#43;&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;124,75,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMMinus&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;M-&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;162,75,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnBack&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;&szlig;&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,113,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span>&nbsp;<span class="xaml__attr_name">FontFamily</span>=<span class="xaml__attr_value">&quot;Wingdings&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnCE&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;CE&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;48,113,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnC&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;C&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;86,113,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnPM&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;&plusmn;&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;124,113,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnSqRt&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;&radic;&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;162,113,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnDiv&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;/&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;124,151,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnPercent&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;%&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;162,151,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span>&nbsp;<span class="xaml__attr_name">IsCancel</span>=<span class="xaml__attr_value">&quot;True&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMult&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;*&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;125,189,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnReciproc&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;1/x&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;163,189,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnMinus&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;-&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;125,227,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnEqual&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;=&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;163,227,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;71&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnPlus&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;&#43;&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;125,265,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF4F7F9&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn7&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;7&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,151,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn8&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;8&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;48,151,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn9&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;9&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;86,151,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn4&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;4&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,189,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn5&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;5&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;48,189,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn6&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;6&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;86,189,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn1&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;1&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,227,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn2&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;2&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;48,227,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn3&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;3&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;86,227,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btn0&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;0&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,265,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;71&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;Button</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;btnDot&quot;</span>&nbsp;<span class="xaml__attr_name">Content</span>=<span class="xaml__attr_value">&quot;.&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;86,265,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;33&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFFBFBFB&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;TextBlock</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;txtResult&quot;</span>&nbsp;<span class="xaml__attr_name">TextAlignment</span>=<span class="xaml__attr_value">&quot;Right&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;26,29,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">TextWrapping</span>=<span class="xaml__attr_value">&quot;NoWrap&quot;</span>&nbsp;<span class="xaml__attr_name">Text</span>=<span class="xaml__attr_value">&quot;TextBlock&nbsp;&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;41&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;169&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF6F7F9&quot;</span>&nbsp;<span class="xaml__attr_name">FontSize</span>=<span class="xaml__attr_value">&quot;27&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;TextBlock</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;txtMemo&quot;</span>&nbsp;<span class="xaml__attr_name">TextAlignment</span>=<span class="xaml__attr_value">&quot;Right&quot;</span>&nbsp;&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,29,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">TextWrapping</span>=<span class="xaml__attr_value">&quot;Wrap&quot;</span>&nbsp;<span class="xaml__attr_name">Text</span>=<span class="xaml__attr_value">&quot;M&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;41&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;17&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF6F7F9&quot;</span>&nbsp;<span class="xaml__attr_name">FontSize</span>=<span class="xaml__attr_value">&quot;17&quot;</span><span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;TextBlock</span>&nbsp;x:<span class="xaml__attr_name">Name</span>=<span class="xaml__attr_value">&quot;txtHelper&quot;</span>&nbsp;<span class="xaml__attr_name">TextAlignment</span>=<span class="xaml__attr_value">&quot;Right&quot;</span>&nbsp;<span class="xaml__attr_name">HorizontalAlignment</span>=<span class="xaml__attr_value">&quot;Left&quot;</span>&nbsp;<span class="xaml__attr_name">Margin</span>=<span class="xaml__attr_value">&quot;10,10,0,0&quot;</span>&nbsp;<span class="xaml__attr_name">TextWrapping</span>=<span class="xaml__attr_value">&quot;NoWrap&quot;</span>&nbsp;<span class="xaml__attr_name">Text</span>=<span class="xaml__attr_value">&quot;TextBlock&nbsp;&quot;</span>&nbsp;<span class="xaml__attr_name">VerticalAlignment</span>=<span class="xaml__attr_value">&quot;Top&quot;</span>&nbsp;<span class="xaml__attr_name">Height</span>=<span class="xaml__attr_value">&quot;19&quot;</span>&nbsp;<span class="xaml__attr_name">Width</span>=<span class="xaml__attr_value">&quot;185&quot;</span>&nbsp;<span class="xaml__attr_name">Background</span>=<span class="xaml__attr_value">&quot;#FFF6F7F9&quot;</span>&nbsp;<span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_end">&lt;/Grid&gt;</span>&nbsp;
<span class="xaml__tag_end">&lt;/UserControl&gt;</span></pre>
</div>
</div>
</div>
<h1><span>Source Code Files</span></h1>
<ul>
<li><em>Calculator.xaml - XAML code file.</em> </li><li><em><em>Calculator.xaml.fs- f# code file.</em></em> </li><li><em><em>Utilities.fs - utility F# file<br>
</em></em></li><li><em><em>Perform.fs - main logic file<br>
</em></em></li></ul>
<h1>More Information</h1>
<p><em>More F# samples you can find here on my page&nbsp;https://code.msdn.microsoft.com/windowsapps/site/search?f%5B0%5D.Type=User&amp;f%5B0%5D.Value=Vasily%20Kalugin</em></p>
<p><em><br>
</em></p>