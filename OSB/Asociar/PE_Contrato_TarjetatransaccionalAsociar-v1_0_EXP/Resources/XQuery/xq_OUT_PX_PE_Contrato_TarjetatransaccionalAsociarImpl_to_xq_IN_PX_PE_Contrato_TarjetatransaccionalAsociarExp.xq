(:: pragma bea:global-element-parameter parameter="$ContratoTarjetatransaccionalRespParam1" element="ns0:ContratoTarjetatransaccionalRespParam" location="../../../BCO_PE_AZ_Contrato_TarjetatransaccionalAsociar-v1_0_IMPL/Resources/Schemas/OSB_Contrato_Tarjetatransaccional_AsociarResp.xsd" ::)
(:: pragma bea:global-element-return element="ns1:ContratoTarjetatransaccionalRespParam" location="../Schemas/OSB_Contrato_Tarjetatransaccional_AsociarResp.xsd" ::)

declare namespace ns1 = "http://mdwcorp.falabella.com/OSB/schema/BCO/PE/contrato/tarjetatransaccional/asociar/Resp-v2015.02";
declare namespace ns0 = "http://mdwcorp.falabella.com/OSB/schema/BCO/PE/Az/contrato/tarjetatransaccional/asociar/Resp-v2015.02";
declare namespace xf = "http://tempuri.org/PE_Contrato_TarjetatransaccionalAsociar-v1_0_EXP/Resources/XQuery/xq_OUT_PX_PE_Contrato_TarjetatransaccionalAsociarImpl_to_xq_IN_PX_PE_Contrato_TarjetatransaccionalAsociarExp/";

declare function xf:xq_OUT_PX_PE_Contrato_TarjetatransaccionalAsociarImpl_to_xq_IN_PX_PE_Contrato_TarjetatransaccionalAsociarExp($ContratoTarjetatransaccionalRespParam1 as element(ns0:ContratoTarjetatransaccionalRespParam))
    as element(ns1:ContratoTarjetatransaccionalRespParam) {
        <ns1:ContratoTarjetatransaccionalRespParam>
            {
                let $asociacionTarjeta := $ContratoTarjetatransaccionalRespParam1/ns0:asociacionTarjeta
                return
                    <ns1:asociacionTarjeta>
                        <ns1:numeroAutorizacion>{ data($asociacionTarjeta/ns0:numeroAutorizacion) }</ns1:numeroAutorizacion>
                    </ns1:asociacionTarjeta>
            }
            {
                let $retorno := $ContratoTarjetatransaccionalRespParam1/ns0:retorno
                return
                    <ns1:retorno>
                        <ns1:codigo>{ data($retorno/ns0:codigo) }</ns1:codigo>
                        {
                            for $mensaje in $retorno/ns0:mensaje
                            return
                                <ns1:mensaje>{ data($mensaje) }</ns1:mensaje>
                        }
                    </ns1:retorno>
            }
        </ns1:ContratoTarjetatransaccionalRespParam>
};

declare variable $ContratoTarjetatransaccionalRespParam1 as element(ns0:ContratoTarjetatransaccionalRespParam) external;

xf:xq_OUT_PX_PE_Contrato_TarjetatransaccionalAsociarImpl_to_xq_IN_PX_PE_Contrato_TarjetatransaccionalAsociarExp($ContratoTarjetatransaccionalRespParam1)
