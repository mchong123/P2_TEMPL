(:: pragma bea:global-element-parameter parameter="$ContratoTarjetatransaccionalReqParam1" element="ns0:ContratoTarjetatransaccionalReqParam" location="../Schemas/OSB_Contrato_Tarjetatransaccional_AsociarReq.xsd" ::)
(:: pragma bea:global-element-return element="ns1:az0140acta" location="../WSDL/AZ7APECUENTA.wsdl" ::)

declare namespace ns1 = "http://az7apecuenta.wsbeans.iseries/xsd";
declare namespace ns0 = "http://mdwcorp.falabella.com/OSB/schema/BCO/PE/Az/contrato/tarjetatransaccional/asociar/Req-v2015.02";
declare namespace xf = "http://tempuri.org/PE_ContratoAZ_AsociarContratoTarjeta_COMP/Resources/XQuery/xq_IN_PX_PE_AsociarContratoTarjetaComp_to_PX_PE_AZCARD_AsociarContratoTarjetaServiceImpl2/";

declare namespace functx = "http://www.crossnet.ws/xquery";

declare function functx:mmddyyyy-to-string
  ( $dateString as xs:string? )  as xs:string? {
   if (empty($dateString)) then ()  
   else xs:string( fn:concat(fn:substring($dateString,1,4),fn:substring($dateString,6,2),fn:substring($dateString,9,2) ) )
 } ;
 
 
 declare function functx:mmddyyyy-to-hh
  ( $dateString as xs:string? )  as xs:string? { 
   if (empty($dateString)) then ()  
   else xs:string( fn:concat(fn:substring($dateString,1,2),fn:substring($dateString,4,2),fn:substring($dateString,7,2) ) )
 } ;
 



declare function xf:xq_IN_PX_PE_AsociarContratoTarjetaComp_to_PX_PE_AZCARD_AsociarContratoTarjetaServiceImpl($ContratoTarjetatransaccionalReqParam1 as element(ns0:ContratoTarjetatransaccionalReqParam),
$datosAdocionales as xs:string)
    as element(ns1:az0140acta) {
        <ns1:az0140acta>
            <ns1:args0>
                <ns1:CUENTA>{ data($ContratoTarjetatransaccionalReqParam1/ns0:solicitudAsociacionTarjeta/ns0:numeroContratoTarjeta) }</ns1:CUENTA>
                <ns1:DATOSADICIONAL>{$datosAdocionales}</ns1:DATOSADICIONAL> 
                <ns1:FECHATRANSAC>{ functx:mmddyyyy-to-string(($ContratoTarjetatransaccionalReqParam1/ns0:solicitudAsociacionTarjeta/ns0:fechaHoraTransmision)) }</ns1:FECHATRANSAC>
                <ns1:HORATRANSAC>{ functx:mmddyyyy-to-hh($ContratoTarjetatransaccionalReqParam1/ns0:solicitudAsociacionTarjeta/ns0:horaTransaccion) }</ns1:HORATRANSAC>
                <ns1:ORIGEN>{ data($ContratoTarjetatransaccionalReqParam1/ns0:solicitudAsociacionTarjeta/ns0:origen) }</ns1:ORIGEN>
                <ns1:PVV>{ data($ContratoTarjetatransaccionalReqParam1/ns0:solicitudAsociacionTarjeta/ns0:pvv) }</ns1:PVV>
                <ns1:TIPOMENSAJE>0300</ns1:TIPOMENSAJE>
                <ns1:TIPOSERVICIO>02</ns1:TIPOSERVICIO>
            </ns1:args0>
        </ns1:az0140acta>
};

declare variable $ContratoTarjetatransaccionalReqParam1 as element(ns0:ContratoTarjetatransaccionalReqParam) external;
declare variable $datosAdocionales as xs:string external;

xf:xq_IN_PX_PE_AsociarContratoTarjetaComp_to_PX_PE_AZCARD_AsociarContratoTarjetaServiceImpl($ContratoTarjetatransaccionalReqParam1,$datosAdocionales)
