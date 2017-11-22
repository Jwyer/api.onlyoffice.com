<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetLabel</span>
</h1>

<h4 class="header-gray" id="SetLabel">SetLabel(sLabel)</h4>
<p class="dscr">
    Add a string label to the current inline text content control.
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
            <td><em>sLabel</em></td>
            <td>
                <em>string</em>
            </td>
            <td>The label which will be added to the current inline text content control. Can be a positive or negative integer from <b>-2147483647</b> to <b>2147483647</b></td>
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
oRun.AddText("This is an inline text content control with a label set to it.");
oInlineLvlSdt.SetLabel("2147483647");
oInlineLvlSdt.AddElement(oRun, 0);
builder.SaveFile("docx", "SetLabel.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547778&doc=YTNkZUZwM1Nzemt5VmtoSTRVOFJlbEhrYUcyWFpNZldSYlNmdUIvdGIvQT0_IjU1NDc3Nzgi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
