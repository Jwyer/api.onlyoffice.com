<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">GetElementsCount</span>
</h1>

<h4 class="header-gray" id="GetElementsCount">GetElementsCount() &rarr; {number}</h4>
<p class="dscr">
     Get the number of elements in the current inline text content control. The text content control is created with one text run present in it by default, so any even without any element added this method will return the value of '1'.
</p>

<h2>Returns:</h2>
<dl class="param-type">
    <dt>Type</dt>
    <dd>
        <em>number</em>
    </dd>
</dl>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun, oRun1;
oParagraph = oDocument.GetElement(0);
oInlineLvlSdt = Api.CreateInlineLvlSdt();
oParagraph.AddInlineLvlSdt(oInlineLvlSdt);
oParagraph.AddLineBreak();
oInlineLvlSdtCount = oInlineLvlSdt.GetElementsCount();
oParagraph.AddText("Number of elements in oInlineLvlSdt (before adding anything) = " + oInlineLvlSdtCount);
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
builder.SaveFile("docx", "GetElementsCount.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547691&doc=cWFsZ1MzVFg0cUNBTmMzQzA3NjdUbSs4RC9UcnhsQUF0NUg3cld4R0FqMD0_IjU1NDc2OTEi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
