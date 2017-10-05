<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetTableCellMarginRight</span>
</h1>
<h4 class="header-gray" id="SetTableCellMarginRight">SetTableCellMarginRight(nValue)</h4>
                
<p class="dscr">Specify the amount of space which will be present between the right extent of the cell contents and the right
border of all table cells within the parent table (or table row).</p>

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
                        <td><em>nValue</em></td>
                        <td>
                        <a href="<%= Url.Action("global") %>#twips">twips</a>
                        </td>
                        <td>The value for the amount of space to the right extent of the cell measured in twentieths of a point (1/1440 of an inch).</td>
                    </tr>
                </tbody>
                </table>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oTable, oTableStyle, oTablePr;
oParagraph = oDocument.GetElement(0);
oParagraph.AddText("We set the right margin for the cells in the table to be half an inch:");
oTableStyle = oDocument.CreateStyle("CustomTableStyle", "table");
oTableStyle.SetBasedOn(oDocument.GetStyle("Bordered - Accent 5"));
oTablePr = oTableStyle.GetTablePr();
oTable = Api.CreateTable(3, 3);
oTable.SetWidth("percent", 100);
oTablePr.SetTableCellMarginRight(720);
oTable.SetTableLook(true, true, true, true, false, false);
oTable.SetStyle(oTableStyle);
oDocument.Push(oTable);
builder.SaveFile("docx", "SetTableCellMarginRight.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4896659&doc=L3FpWlVReDYrTXpMMXVTMzRVM3pjVnpIZGhPclFCdHFZbk0vM2laRU4yZz0_IjQ4OTY2NTki0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
