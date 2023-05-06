USE [Billetera]
GO
/****** Object:  StoredProcedure [dbo].[GetTarjetas]    Script Date: 04/05/2023 21:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTarjetas]
	
AS
BEGIN
SELECT 
	Id,
	Foto,
     Banco ,     
	 Emisor,
     Dueno,
     NTarjeta,
     CVV,
     fechaExp
	FROM BilleteraTabla
	
END
