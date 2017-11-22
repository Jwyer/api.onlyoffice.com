<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">CreateInlineLvlSdt</span>
</h1>

<h4 class="header-gray" id="CreateInlineLvlSdt">CreateInlineLvlSdt() &rarr; {<a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt") %>">ApiInlineLvlSdt</a>}</h4>
<p class="dscr">Create an inline text content control.</p>

<h2>Returns:</h2>
<dl class="param-type">
    <dt>Type</dt>
    <dd>
        <a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt") %>">ApiInlineLvlSdt</a>
    </dd>
</dl>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun;
oParagraph = oDocument.GetElement(0);
oInlineLvlSdt = Api.CreateInlineLvlSdt();
oParagraph.AddInlineLvlSdt(oInlineLvlSdt);
oRun = Api.CreateRun();
oRun.AddText("This is an inline text content control.");
oInlineLvlSdt.AddElement(oRun, 0);
var oClassType = oInlineLvlSdt.GetClassType();
oParagraph.AddLineBreak();
oParagraph.AddText("Class Type = " + oClassType);
builder.SaveFile("docx", "CreateInlineLvlSdt.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547652&doc=Q0ZmQVlCSVc2M0E3OWY0V2Jyc3ZlYjZNbVlKNit4Q1U1NFdLZ1hqUWFTbz0_IjU1NDc2NTIi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
