<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">ApiPresetColor</span>
</h1>
<h4 class="header-gray" id="ApiPresetColor">new ApiPresetColor()</h4>
<p class="dscr">Class representing a preset color.</p>

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
                        <td><a href="<%= Url.Action("spreadsheetapi/apipresetcolor/getclasstype") %>">GetClassType</a></td>
                        <td>Get the type of this class.</td>
                    </tr>
                </tbody>
            </table>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("xlsx");
var oWorksheet = Api.GetActiveSheet();
var oGs1, oGs2, oFill, oStroke, oPresetColor;
oPresetColor = Api.CreatePresetColor("lightYellow");
oGs1 = Api.CreateGradientStop(oPresetColor, 0);
oGs2 = Api.CreateGradientStop(Api.CreateRGBColor(255, 164, 101), 100000);
oFill = Api.CreateLinearGradientFill([oGs1, oGs2], 5400000);
oStroke = Api.CreateStroke(0, Api.CreateNoFill());
oWorksheet.AddShape("flowChartOnlineStorage", 60 * 36000, 35 * 36000, oFill, oStroke, 0, 2 * 36000, 1, 3 * 36000);
var oClassType = oPresetColor.GetClassType();
oWorksheet.SetColumnWidth(0, 15);
oWorksheet.SetColumnWidth(1, 10);
oWorksheet.GetRange('A1').SetValue('Class Type = ');
oWorksheet.GetRange('B1').SetValue(oClassType);
builder.SaveFile("xlsx", "ApiPresetColor.xlsx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=5004573&doc=cFZUZDVFY2t6OSszd0U3SGpiT01tc2oyY0xxQWgyaXNJUXR0a0xsYWtiRT0_IjUwMDQ1NzMi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
