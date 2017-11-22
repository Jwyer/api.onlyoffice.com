<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetLock</span>
</h1>

<h4 class="header-gray" id="SetLock">SetLock(sLockType)</h4>
<p class="dscr">
    Set the lock to the current inline text content control: either locks the content from editing, or from deleting the control, or both. 
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
            <td><em>sLockType</em></td>
            <td>
                <em><a href="<%= Url.Action("global") %>#SdtLock">SdtLock</a></em>
            </td>
            <td>The type of the lock applied to the inline text content control</td>
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
oRun.AddText("This is an inline text content control with the content lock set to it.");
oInlineLvlSdt.SetLock("sdtContentLocked");
oInlineLvlSdt.AddElement(oRun, 0);
builder.SaveFile("docx", "SetLock.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5548909&doc=RHZPWUVoVUMzV3BKc1crTEV4VThGTjN0RHlvV3BYdG5rSzkzeDllTWNoST0_IjU1NDg5MDki0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
