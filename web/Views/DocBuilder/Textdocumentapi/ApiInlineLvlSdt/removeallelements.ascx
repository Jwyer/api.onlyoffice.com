<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">RemoveAllElements</span>
</h1>

<h4 class="header-gray" id="RemoveAllElements">RemoveAllElements()</h4>
<p class="dscr">
    Remove all the elements from the current inline text content control.
</p>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun, oRun1;
oParagraph = oDocument.GetElement(0);
oInlineLvlSdt = Api.CreateInlineLvlSdt();
oParagraph.AddInlineLvlSdt(oInlineLvlSdt);
oParagraph.AddLineBreak();
oInlineLvlSdtCount = oInlineLvlSdt.RemoveAllElements();
oInlineLvlSdtCount = oInlineLvlSdt.GetElementsCount();
oParagraph.AddText("Number of elements in oInlineLvlSdt (with all the elements removed) = " + oInlineLvlSdtCount);
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
builder.SaveFile("docx", "RemoveAllElements.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547730&doc=eXFCM0s1SWlsQ2NHYWl6cXhQV0JDVHdDdHJ5ZGMzTlJQdExuTWpRcm5VOD0_IjU1NDc3MzAi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
