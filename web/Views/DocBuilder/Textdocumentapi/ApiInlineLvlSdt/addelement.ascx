<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">AddElement</span>
</h1>

<h4 class="header-gray" id="AddElement">AddElement(oElement, nPos)</h4>
<p class="dscr">
    Add an element to the inline text content control.
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
            <td><em>oElement</em></td>
            <td>
                <em><a href="<%= Url.Action("global") %>#ParagraphContent">ParagraphContent</a></em>
            </td>
            <td>The document element which will be added at the position specified. Returns <em>false</em> if the type of <em>oElement</em> is not supported by an inline text content control.</td>
        </tr>
    </tbody>
    <tbody>
        <tr class="tablerow">
            <td><em>nPos</em></td>
            <td>
                <em>number</em>
            </td>
            <td>The position of the element where it will be added to the current inline text content control. If this value is not specified then the element will be added to the end of the current inline text content control.</td>
        </tr>
    </tbody>
</table>

<h2>Returns:</h2>
<dl class="param-type">
    <dt>Type</dt>
    <dd>
        <em>boolean</em>
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
oRun.AddText("This is an inline text content control with a text run in it.");
oInlineLvlSdt.AddElement(oRun, 0);
builder.SaveFile("docx", "AddElement.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5548927&doc=NHdrV0VDMWlHTm9vUTVueGVXMTNuazdpUlRXc0hMbDNJNXNkcC9uczFCWT0_IjU1NDg5Mjci0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
