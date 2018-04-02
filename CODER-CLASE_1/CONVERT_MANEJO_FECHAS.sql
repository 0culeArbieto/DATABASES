use Northwind
go
--CAST
select 'El producto '+ProductName+
' Tiene el Valor de $: '+CAST(UnitPrice AS VARCHAR(150))+
' Cantidad de Productos : '+ CAST(UnitsInStock AS varchar(150)) AS DETALLE_PRODUCTS
from Products

--CONVERT
select 'El producto '+ProductName+
' Tiene el Valor de $: '+CONVERT(VARCHAR(150),UnitPrice)+
'Cantidad de Productos: '+CONVERT(VARCHAR(150),UnitsInStock) as DETALLE_PRODUCTS
 from Products

 --CONVERT FECHA TYPE VARCHAR
 SELECT top(10)OrderID,
 CONVERT(nvarchar(50),OrderDate,100) AS VALOR_PREDETERMINADO,
 CONVERT(nvarchar(50),OrderDate,101) AS EE_UU_SLACH,
 CONVERT(nvarchar(50),OrderDate,102) AS ANSI,
 CONVERT(nvarchar(50),OrderDate,103) AS Británico_Francés,
 CONVERT(nvarchar(50),OrderDate,104) AS ALEMAN,
 CONVERT(nvarchar(50),OrderDate,105) AS Italiano,
 CONVERT(nvarchar(50),OrderDate,106) AS dd_mes_aa,
 CONVERT(nvarchar(50),OrderDate,107) AS Mes_dd_aa,
 CONVERT(nvarchar(50),OrderDate,108) AS hh_mi_ss,
 CONVERT(nvarchar(50),OrderDate,109) AS Valor_predeterminado_MILISEGUNDOS,
 CONVERT(nvarchar(50),OrderDate,110) AS EE_UU_GUION,
 CONVERT(nvarchar(50),OrderDate,111) AS JAPÓN_SLACH,
 CONVERT(nvarchar(50),OrderDate,112) AS ISO,
 CONVERT(nvarchar(50),OrderDate,113) AS EUROPEO_aLEMAN_SEGUNDOS,
 CONVERT(nvarchar(50),OrderDate,14) AS hh_mi_ss_mmm_24h,
 CONVERT(nvarchar(50),OrderDate,120) AS ODBC_canónico,
 CONVERT(nvarchar(50),OrderDate,21) AS ODBC_canónico_SEGUNDOS,
 CONVERT(nvarchar(50),OrderDate,126) AS ISO8601,
 CONVERT(nvarchar(50),OrderDate,127) AS ISO8601_ZonaHoraria,
 CONVERT(nvarchar(50),OrderDate,130) AS Hijri_separado,
 CONVERT(nvarchar(50),OrderDate,131) AS Hijri_slach
 FROM Orders

--date format
SELECT 
FORMAT(OrderDate, 'dd/MMM/yyyy') AS DATE_SLACH,
FORMAT(OrderDate, 'dd/MMM/yyyy,hh:mm:ss') AS DATE_SLACH_HORA,
FORMAT(OrderDate, 'dddd,MMMM,yyyy') AS DATE_NOMBRE,
FORMAT(OrderDate, 'MMM dd yyyy') AS DATE_nomMes,
FORMAT(OrderDate, 'MM.dd.yy') AS DATE_SEPARADOxPUNTOS,
FORMAT(OrderDate, 'MM-dd-yy') AS DATE_SEPARADOxGUION,
FORMAT(OrderDate, 'MM/dd/yy') AS DATE_SEPARADOSLACH,
FORMAT(OrderDate, 'hh:mm:ss tt') AS HoraMinutoSegundoMarcador,
FORMAT(OrderDate, 'dd','af') AS DATE
FROM Orders

--desintegrar fecha
SELECT 
 DATENAME(DAY,OrderDate) as DIA,
 DATENAME(MONTH,OrderDate) AS MES,
 DATENAME(YEAR,OrderDate) AS ANIO
from Orders

--OTRA FORMA -- desintegrar fecha
SELECT (DAY(OrderDate)) AS FECHA,
       (MONTH(OrderDate)) AS FECHA,
	   (YEAR(OrderDate)) AS ANIO
FROM Orders

--LIMITAR BUSQUEDA DE FECHAS BETWEEN
SELECT * FROM Orders 
WHERE OrderDate BETWEEN  FORMAT('1996-08-01', 'MM-dd-yy')  AND FORMAT('1996-09-30' , 'MM-dd-yy')
