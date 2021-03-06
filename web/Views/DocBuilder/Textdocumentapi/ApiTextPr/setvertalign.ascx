<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetVertAlign</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/ApiTextPr/SetVertAlign", "textdocumentapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oTextPr;
oTextPr = oDocument.GetDefaultTextPr();
oTextPr.SetVertAlign("subscript");
oParagraph = oDocument.GetElement(0);
oParagraph.AddText("A sample text aligned below the baseline vertically.");
builder.SaveFile("docx", "SetVertAlign.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4898208&doc=S0VkS2VUc2U5ZVhIL0tzaXppMitiR0JFQWNiVG5UbDU5SGZwTVlmWFRxdz0_IjQ4OTgyMDgi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
