<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">RemoveElement</span>
</h1>

<h4 class="header-gray" id="RemoveElement">RemoveElement(nPos)</h4>
<p class="dscr">
    Remove the element using the position specified from the current inline text content control.
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
            <td><em>nPos</em></td>
            <td>
                <em>number</em>
            </td>
            <td>The position of the element which we want to remove from the current inline text content control.</td>
        </tr>
    </tbody>
</table>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun, oRun1;
oParagraph = oDocument.GetElement(0);
oInlineLvlSdt = Api.CreateInlineLvlSdt();
oParagraph.AddInlineLvlSdt(oInlineLvlSdt);
oParagraph.AddLineBreak();
oInlineLvlSdtCount = oInlineLvlSdt.RemoveElement(0);
oInlineLvlSdtCount = oInlineLvlSdt.GetElementsCount();
oParagraph.AddText("Number of elements in oInlineLvlSdt (with the default first element removed) = " + oInlineLvlSdtCount);
oRun = Api.CreateRun();
oRun.AddText("This is an inline text content control. ");
oInlineLvlSdt.AddElement(oRun, 0);
oParagraph.AddLineBreak();
oInlineLvlSdtCount = oInlineLvlSdt.GetElementsCount();
oParagraph.AddText("Number of elements in oInlineLvlSdt (after adding one element) = " + oInlineLvlSdtCount);
oRun1 = Api.CreateRun();
oRun1.AddText("One more element of the inline text content control.");
oInlineLvlSdt.AddElement(oRun1, 1);
oInlineLvlSdtCount = oInlineLvlSdt.GetElementsCount();
oParagraph.AddLineBreak();
oParagraph.AddText("Number of elements in oInlineLvlSdt (after adding one more element) = " + oInlineLvlSdtCount);
builder.SaveFile("docx", "RemoveElement.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547758&doc=VVh6Z1ZXRnF2ZDU0YTZ4Q2wya3BkMU5ZaUozOHJmeEpmQ21RRk9aMTRxZz0_IjU1NDc3NTgi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
