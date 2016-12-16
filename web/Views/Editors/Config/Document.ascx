﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
    <a class="up" href="<%= Url.Action("config/") %>"></a>
    <span class="hdr">Document</span>
</h1>

<div class="header-gray">Description</div>
<p class="dscr">The document section allows to change all the parameters pertaining to the document (title, url, file type, etc.)</p>

<div class="header-gray">Parameters</div>
<table class="table">
    <colgroup>
        <col class="table-name" />
        <col />
        <col class="table-type" />
        <col class="table-example" />
    </colgroup>
    <thead>
        <tr class="tablerow">
            <td>Name</td>
            <td>Description</td>
            <td>Type</td>
            <td>Example</td>
        </tr>
    </thead>
    <tbody>
        <tr class="tablerow">
            <td id="fileType">fileType<span class="required">*</span></td>
            <td>defines the type of the file for the source viewed or edited document</td>
            <td>string</td>
            <td>"docx", "xlsx", "pptx", "ppsx",<br />
                "doc", "xls", "ppt", "pps",<br />
                "odt", "ods", "odp",<br />
                "txt", "rtf", "csv",<br />
                "mht", "html", "htm", "epub",<br />
                "pdf", "djvu", "xps"</td>
        </tr>
        <tr class="tablerow">
            <td id="key">key<span class="required">*</span></td>
            <td>defines the unique document identifier used for document recognition by the service. In case the known key is sent the document will be taken from the cache. Every time the document is edited and saved, the key must be generated anew. The document url can be used as the <b>key</b> but without the special characters and the length is limited to 20 symbols</td>
            <td>string</td>
            <td>"Khirz6zTPdfd7"</td>
        </tr>
        <tr class="tablerow">
            <td id="title">title<span class="required">*</span></td>
            <td>defines the desired file name for the viewed or edited document which will also be used as file name when the document is downloaded</td>
            <td>string</td>
            <td>"Example Document Title.docx"</td>
        </tr>
        <tr class="tablerow">
            <td id="url">url<span class="required">*</span></td>
            <td>defines the URL where the source viewed or edited document is stored</td>
            <td>string</td>
            <td>"http://example.com/url-to-example-document.docx"</td>
        </tr>
    </tbody>
</table>

<span class="required-descr"><span class="required">*</span><em> - required field</em></span>

<div class="header-gray">Example</div>
<pre>
var docEditor = new DocsAPI.DocEditor("placeholder", {
    "document": {
        "fileType": "docx",
        "key": "Khirz6zTPdfd7",
        "title": "Example Document Title.docx",
        "url": "http://example.com/url-to-example-document.docx",
    },
    ...
});
</pre>

<div class="note">The key characters can be used: <b>0-9</b>, <b>a-z</b>, <b>A-Z</b>, <b>-._=</b>. The maximal key length is <b>20</b> characters.</div>
