<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<span class="grupy">
					<h1>Grupa INF</h1>

					<table border="1">
						<tr bgcolor="#9acd32">

							<th>Imię</th>
							<th>Nazwisko</th>
						</tr>
						<xsl:for-each select="uczelnia/studenci/student[@grupa='INF']">
							<tr>

								<td>
									<xsl:value-of select="imie"/>
								</td>
								<td>
									<xsl:value-of select="nazwisko"/>
								</td>

							</tr>
						</xsl:for-each>
					</table>

					<h1>Grupa MAT</h1>

					<table border="1">
						<tr bgcolor="#9acd32">

							<th>Imię</th>
							<th>Nazwisko</th>
						</tr>
						<xsl:for-each select="uczelnia/studenci/student[@grupa='MAT']">
							<tr>

								<td>
									<xsl:value-of select="imie"/>
								</td>
								<td>
									<xsl:value-of select="nazwisko"/>
								</td>

							</tr>
						</xsl:for-each>




					</table>
				</span>

				<h2>
					<h1>
						Lista studentek posidających stronę internetową
					</h1>
					
					<table border="1">
						<tr bgcolor="#9acd32">

							<th>Imię</th>
							<th>Nazwisko</th>
							<th>WWW</th>
						</tr>
						<xsl:for-each select="uczelnia/studenci/student">
							<xsl:if test="(@plec='k') or (@plec='K')">
							<xsl:if test="strona_internetowa != ''">
							<tr>

								<td>
									<xsl:value-of select="imie"/>
								</td>
								<td>
									<xsl:value-of select="nazwisko"/>
								</td>
								<td>
									<xsl:value-of select="strona_internetowa"/>
								</td>
							</tr>
							</xsl:if>
							</xsl:if>
						</xsl:for-each>
						
					</table>

				</h2>



				<h3>
					<h1>
						Studenci posiadających adres email w domenie dobrystudent.pl
					</h1>

					<table border="1">
						<tr bgcolor="#9acd32">

							<th>Imię</th>
							<th>Nazwisko</th>
							<th>mail</th>
						</tr>
						<xsl:for-each select="uczelnia/studenci/student">
							<xsl:if test="contains(mail, '@dobrystudent.pl')">
									<tr>

										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td>
											<xsl:value-of select="nazwisko"/>
										</td>
										<td>
											<xsl:value-of select="mail"/>
										</td>
									</tr>
							</xsl:if>
						</xsl:for-each>

					</table>
					
					
					
				</h3>



				<h4>
					<xsl:for-each select="uczelnia/studenci/student">
						<xsl:sort order="descending" data-type="text" select="wiek"/>
						
						<xsl:if test="position() = 1">
							Wiek Najstarszego studenta: <xsl:value-of select="wiek" /><br />
						</xsl:if>
						
			
						
						
					</xsl:for-each>

					<xsl:for-each select="uczelnia/studenci/student">
						<xsl:sort order="ascending" data-type="text" select="wiek"/>

						<xsl:if test="position() = 1">
							Wiek Najmłodszego studenta: <xsl:value-of select="wiek" /><br/>
						</xsl:if>

					</xsl:for-each>


				Średni wiek studentów: <xsl:value-of select="sum(uczelnia/studenci/student/wiek) div count(uczelnia/studenci/student/wiek)"/>

					
				</h4>


				<Style>
					h1{
					font-size:17px;
					}

					h2{

					width: 370px;
					height: 400px;

					border: 3px solid brown;

					position:absolute;
					top:1px;
					left:400px;

					}

					h3{
					width: 370px;
					height: 400px;

					border: 3px solid brown;

					position:absolute;
					top:1px;
					left:800px;
					}



					.grupy{

					width: 370px;
					height: 400px;
					position:absolute;
					top:20px;
					border: 3px solid brown;
					}

					h4{
					position:absolute;
					top:420px;
					}

					tr:nth-of-type(odd) {
					background-color:#ccc;
					}



				</Style>

			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
