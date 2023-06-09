USE [Billetera]
GO
/****** Object:  StoredProcedure [dbo].[spGuardarTarjeta]    Script Date: 05/05/2023 2:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[spGuardarTarjeta]
		@Foto		NVARCHAR(MAX),
		@Banco		NVARCHAR(50),
		@Emisor		NVARCHAR(50),
		@Dueno		NVARCHAR(50),
		@NTarjeta	NVARCHAR(16),
		@CVV		NVARCHAR(3),
		@fechaExp	DATE

AS
BEGIN
	INSERT INTO BilleteraTabla
		(Foto,
      Banco,
      Emisor,
      Dueno,
      NTarjeta,
      CVV,
      fechaExp)

	VALUES (@Foto,
      @Banco,
      @Emisor,
      @Dueno,
      @NTarjeta,
      @CVV,
      @fechaExp)

	
END
