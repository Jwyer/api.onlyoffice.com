<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetTag</span>
</h1>

<h4 class="header-gray" id="SetTag">SetTag(sTag)</h4>
<p class="dscr">
    Add a string tag to the current inline text content control.
</p>

<h2>Parameters:</h2>
<table class="table">
    <thead>
        <tr class="tablerow">
            <td>Name</td>
            <td>Type</td>
            <td>Description</td>
        </tr>
    </thead>
    <tbody>
        <tr class="tablerow">
            <td><em>sTag</em></td>
            <td>
                <em>string</em>
            </td>
            <td>The tag which will be added to the current inline text content control.</td>
        </tr>
    </tbody>
</table>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun;
oParagraph = oDocument.GetElement(0);
oInlineLvlSdt = Api.CreateInlineLvlSdt();
oParagraph.AddInlineLvlSdt(oInlineLvlSdt);
oRun = Api.CreateRun();
oRun.AddText("This is an inline text content control with a tag set to it.");
oInlineLvlSdt.SetTag("This is a tag");
oInlineLvlSdt.AddElement(oRun, 0);
builder.SaveFile("docx", "SetTag.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547761&doc=UnNkOHdybHg0Ym5JL1JtUEp4aFNxeU9RMVV0K3BraElnR0RwWkRKMTc3ND0_IjU1NDc3NjEi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
