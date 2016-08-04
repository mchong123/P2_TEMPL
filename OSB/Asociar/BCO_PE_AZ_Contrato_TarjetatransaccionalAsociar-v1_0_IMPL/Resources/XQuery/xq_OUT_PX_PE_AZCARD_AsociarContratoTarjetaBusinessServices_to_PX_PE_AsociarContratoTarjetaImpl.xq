(:: pragma bea:global-element-parameter parameter="$az0140actaResponse1" element="ns1:az0140actaResponse" location="../WSDL/AZ7APECUENTA.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:ContratoTarjetatransaccionalRespParam" location="../Schemas/OSB_Contrato_Tarjetatransaccional_AsociarResp.xsd" ::)

declare namespace ns1 = "http://az7apecuenta.wsbeans.iseries/xsd";
declare namespace ns0 = "http://mdwcorp.falabella.com/OSB/schema/BCO/PE/Az/contrato/tarjetatransaccional/asociar/Resp-v2015.02";
declare namespace xf = "http://mdwcorp.falabella.com/OSB/wsdl/BCO/PE/Az/contrato/tarjetatransaccional/asociar-v1.0/IMPL";

declare function xf:xq_OUT_PX_PE_AZCARD_AsociarContratoTarjetaServiceImpl_to_PX_PE_AsociarContratoTarjetaImpl($az0140actaResponse1 as element(ns1:az0140actaResponse))
    as element(ns0:ContratoTarjetatransaccionalRespParam) {
        <ns0:ContratoTarjetatransaccionalRespParam>
            <ns0:asociacionTarjeta>
                <ns0:numeroAutorizacion>{ data($az0140actaResponse1/ns1:return/ns1:AUTORIZACION) }</ns0:numeroAutorizacion>
            </ns0:asociacionTarjeta>
            <ns0:retorno>
                <ns0:codigo>{ data($az0140actaResponse1/ns1:return/ns1:CODIGORTA) }</ns0:codigo>
            </ns0:retorno>
        </ns0:ContratoTarjetatransaccionalRespParam>
};

declare variable $az0140actaResponse1 as element(ns1:az0140actaResponse) external;

xf:xq_OUT_PX_PE_AZCARD_AsociarContratoTarjetaServiceImpl_to_PX_PE_AsociarContratoTarjetaImpl($az0140actaResponse1)
