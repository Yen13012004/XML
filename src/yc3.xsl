<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
			<head>
				<title>DANH SÁCH SẢN PHẨM</title>
				<style>
					h1{
					text-align: center;
					padding-top: 20px;
					}
					table{
					width: 100%;
					}
					.title-heading td{
					padding: 20px;
					}
					.title-heading{
					background:
					lightgreen;
					}
				</style>
			</head>
			<body>
				<h1>DANH SÁCH SẢN PHẨM</h1>
				<table border="1px" cellspacing="0" cellpadding="10">
					<tr class="title-heading">
						<td>Mã</td>
						<td>Tên sản phẩm</td>
						<td>Mã danh mục</td>
						<td>Mô tả</td>
						<td>Số lượng</td>
						<td>Giá tiền</td>
						<td>Kích thước</td>
						<td>Hình ảnh</td>
					</tr>
					<xsl:for-each select="Products/Product">
						<xsl:choose>
							<xsl:when test="contains(Name, 'Áo')">
								<tr style="background:#fff">
									<td>
										<xsl:value-of select="Id" />
									</td>
									<td>
										<xsl:value-of select="Name" />
									</td>
									<td>
										<xsl:value-of select="Category_Id" />
									</td>
									<td>
										<xsl:value-of select="Desscription" />
									</td>
									<td>
										<xsl:value-of select="Amount" />
									</td>
									<td>
										<xsl:value-of select="Price" />
									</td>
									<td>
										<xsl:value-of select="Size" />
									</td>
									<td>
										<xsl:value-of select="Image/@src" />
									</td>
								</tr>
							</xsl:when>
							
						</xsl:choose>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>