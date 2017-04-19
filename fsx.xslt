<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	 <html>
		  <body>
			  <h2>Aircrafts</h2>
				  <table border="1">
				    <tr bgcolor="#9acd32">
				      <th>Callsign</th>
				      <th>Aircraft type</th>
				      <th>Aircraft position</th>
				      <th>Aircraft heading</th>
				      <th>Aircraft speed</th>
				      <th>Aircraft altitude</th>
				    </tr>
				    <xsl:for-each select="konfigurace_fsx/gameSave/nearAircraftPositions/aircraft">
				    <tr>
				      <td><xsl:value-of select="@code"/></td>
				      <td><xsl:value-of select="type"/></td>
				      <td><xsl:value-of select="position"/></td>
				      <td><xsl:value-of select="heading"/></td>
				      <td><xsl:value-of select="speed"/></td>
				      <td><xsl:value-of select="altitude"/></td>
				    </tr>
				    </xsl:for-each>
				  </table>
		  </body>
	  </html>
	</xsl:template>
</xsl:stylesheet>