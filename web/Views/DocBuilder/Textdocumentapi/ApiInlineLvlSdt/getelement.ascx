<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">GetElement</span>
</h1>

<h4 class="header-gray" id="GetElement">GetElement(nPos) &rarr; (nullable) {<a href="<%= Url.Action("global") %>#ParagraphContent">ParagraphContent</a>}</h4>
<p class="dscr">
    Get the element of the current inline text content control using the position specified.
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
            <td>The position where the element which content we want to get must be located.</td>
        </tr>
    </tbody>
</table>

<h2>Returns:</h2>
<dl class="param-type">
    <dt>Type</dt>
    <dd>
        <a href="<%= Url.Action("global") %>#ParagraphContent">ParagraphContent</a>
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
for (var nPos = 0; nPos < 10; ++nPos) {
var curRun = oRun + nPos;
curRun = Api.CreateRun();
curRun.AddText("This is text run " + (nPos + 1) + ". ");
oInlineLvlSdt.AddElement(curRun);
}
var changeRun = oInlineLvlSdt.GetElement(4);
changeRun.SetBold(true);
oParagraph.AddLineBreak();
oParagraph.AddLineBreak();
oParagraph.AddLineBreak();
oParagraph.AddText("We added 10 text runs to the above inline text content control. Then we changed the fifth run, so it is different from the others.");
builder.SaveFile("docx", "GetElement.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5549055&doc=WTFYd2lhV0tFMi9BbEpSWmQ0UjVaZmIwajJFc21iOXdHbFJUZW1oVnIyWT0_IjU1NDkwNTUi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
