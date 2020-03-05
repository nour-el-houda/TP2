<?xml version='1.0' encoding='UTF-8'?>
<?xml-stylesheet type='text/css' href='etudiants.css'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'>
<xsl:output method='html' encoding='utf-8' doctype-public='-//w3c//DTDXHTML 1.0 Transitional//EN' doctype-system='http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'/>
<xsl:template match='/etudiants'>
<html xmlns='http://www.w3.org/1999/xhtml'>
    <head><link type='text/css' rel='stylesheet' href='etudiants.css' /></head>
	<body>
	   <center><br/><br/><h2>La Liste des Etudiants</h2><br/>
		    <table class='tb_liste'>
			    <tr class='th_liste'>				    
					<td id='td3'>Matrucile</td>
					<td id='td3'>Nom</td>
					<td id='td3'>Prenom</td>
					<td id='td3'>Moy-S1</td>
					<td id='td3'>Moy-S2</td>
					<td id='td3'>Moy-annuel</td>
					<td id='td3'>Credit-S1</td>
					<td id='td3'>Credit-S2</td>
					<td id='td5'>Unite-acuise</td>
				</tr>
				<xsl:for-each select='etudiant'>
				<xsl:choose>
				<xsl:when test="position() = 0">
				<tr class='max'>				
					<td ><xsl:value-of select='matricule'/></td>
					<td ><xsl:value-of select='nom'/></td>
					<td ><xsl:value-of select='prenom'/></td>
					<td ><xsl:value-of select='moy-S1'/></td>
					<td ><xsl:value-of select='moy-S2'/></td>
					<td ><xsl:value-of select='moy-annuel'/></td>
					<td ><xsl:value-of select='credit-S1'/></td>
					<td ><xsl:value-of select='credit-S2'/></td>
					<td ><xsl:value-of select='Unite-acuise'/></td>
					<xsl:choose>
					<xsl:when test='moy-S1 >= 10 and moy-S2 >= 10'>
					    <td class='maximum'>Admis</td>
					</xsl:when>
					<xsl:when test='format-number((credit-S1+credit-S2)div 2) >= 45'>
					    <td class='entre'>Admis avec Dettes</td>
					</xsl:when>
					<xsl:otherwise>
                        <td class='minimum'>Ajourneee</td>
                    </xsl:otherwise>
                    </xsl:choose>
				</tr>
				</xsl:when>
					</center>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>