<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">ApiInlineLvlSdt</span>
</h1>

<h4 class="header-gray" id="ApiInlineLvlSdt">new ApiInlineLvlSdt()</h4>
<p class="dscr">Class representing inline text content control.</p>
            
<h2>Methods</h2>
            <table class="table table-classlist">
                <thead>
                    <tr class="tablerow">
                        <td class="table-classlist-name">Name</td>
                        <td>Description</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/addelement") %>">AddElement</a></td>
                        <td> Add an element to the inline text content control.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/getclasstype") %>">GetClassType</a></td>
                        <td>Get the type of this class.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/getelement") %>">GetElement</a></td>
                        <td>Get the element of the current inline text content control using the position specified.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/getelementscount") %>">GetElementsCount</a></td>
                        <td>Get the number of elements in the current inline text content control. The text content control is created with one text run present in it by default, so any even without any element added this method will return the value of '1'.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/removeallelements") %>">RemoveAllElements</a></td>
                        <td>Remove all the elements from the current inline text content control.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/removeelement") %>">RemoveElement</a></td>
                        <td>Remove the element using the position specified from the current inline text content control.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/setlabel") %>">SetLabel</a></td>
                        <td>Add a string label to the current inline text content control.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/setlock") %>">SetLock</a></td>
                        <td>Set the lock to the current inline text content control: either locks the content from editing, or from deleting the control, or both.</td>
                    </tr>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apiinlinelvlsdt/settag") %>">SetTag</a></td>
                        <td>Add a string tag to the current inline text content control.</td>
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
oRun.AddText("This is an inline text content control.");
oInlineLvlSdt.AddElement(oRun, 0);
var oClassType = oInlineLvlSdt.GetClassType();
oParagraph.AddLineBreak();
oParagraph.AddText("Class Type = " + oClassType);
builder.SaveFile("docx", "ApiInlineLvlSdt.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5547652&doc=Q0ZmQVlCSVc2M0E3OWY0V2Jyc3ZlYjZNbVlKNit4Q1U1NFdLZ1hqUWFTbz0_IjU1NDc2NTIi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
