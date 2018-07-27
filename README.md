# OWASP_XSLT

This is an XSLT file which displays the OWASP reports in XML format nicely in modern browsers.

## Installation

Just copy the file in the folder where you have the OWASP report in XML format and include the reference to it in the XML file:

```xml
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="owasp.xsl"?>
<OWASPZAPReport version="2.6.0" generated="Tue, 24 Jul 2018 07:48:40">
[...]
</OWASPZAPReport>
```

## Use

Open the OWASP XML report file in Mozilla / EDGE. Enjoy.
