<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">UnMerge</span>
</h1>

<h4 class="header-gray" id="UnMerge">UnMerge()</h4>
<p class="dscr">
    Split the selected merged cell range into single cells.
</p>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("xlsx");
var oWorksheet = Api.GetActiveSheet();
oWorksheet.GetRange("A3:E8").Merge(true);
oWorksheet.GetRange("A5:E5").UnMerge();
builder.SaveFile("xlsx", "UnMerge.xlsx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5115555&doc=czF3NGZ2UUJObTRzZkNoOFAyYjMyYUlSSzZMSlRzY0hJbjdFZGVLaWdjQT0_IjUxMTU1NTUi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
