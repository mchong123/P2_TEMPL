(:: pragma bea:global-element-parameter parameter="$contratoTarjetatransaccionalReqParam1" element="ns1:ContratoTarjetatransaccionalReqParam" location="../Schemas/OSB_Contrato_Tarjetatransaccional_AsociarReq.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ContratoTarjetatransaccionalReqParam" location="../../../BCO_PE_AZ_Contrato_TarjetatransaccionalAsociar-v1_0_IMPL/Resources/Schemas/OSB_Contrato_Tarjetatransaccional_AsociarReq.xsd" ::)

declare namespace ns1 = "http://mdwcorp.falabella.com/OSB/schema/BCO/PE/contrato/tarjetatransaccional/asociar/Req-v2015.02";
declare namespace ns0 = "http://mdwcorp.falabella.com/OSB/schema/BCO/PE/Az/contrato/tarjetatransaccional/asociar/Req-v2015.02";
declare namespace xf = "http://mdwcorp.falabella.com/OSB/wsdl/BCO/PE/contrato/tarjetatransaccional/asociar-v1.0";

declare function xf:xq_IN_PX_PE_Contrato_TarjetatransaccionalAsociarExp_to_PX_PE_Contrato_TarjetatransaccionalAsociarImpl($contratoTarjetatransaccionalReqParam1 as element(ns1:ContratoTarjetatransaccionalReqParam))
    as element(ns0:ContratoTarjetatransaccionalReqParam) {
        <ns0:ContratoTarjetatransaccionalReqParam>
            {
                let $solicitudAsociacionTarjeta := $contratoTarjetatransaccionalReqParam1/ns1:solicitudAsociacionTarjeta
                return
                    <ns0:solicitudAsociacionTarjeta>
                        <ns0:tipoMensaje>{ data($solicitudAsociacionTarjeta/ns1:tipoMensaje) }</ns0:tipoMensaje>
                        <ns0:origen>{ data($solicitudAsociacionTarjeta/ns1:origen) }</ns0:origen>
                        <ns0:fechaHoraTransmision>{ data($solicitudAsociacionTarjeta/ns1:fechaHoraTransmision) }</ns0:fechaHoraTransmision>
                        <ns0:horaTransaccion>{ data($solicitudAsociacionTarjeta/ns1:horaTransaccion) }</ns0:horaTransaccion>
                        <ns0:numeroContratoTarjeta>{ data($solicitudAsociacionTarjeta/ns1:numeroContratoTarjeta) }</ns0:numeroContratoTarjeta>
                        <ns0:pvv>{ data($solicitudAsociacionTarjeta/ns1:pvv) }</ns0:pvv>
                        {
                            let $datosAdicionales := $solicitudAsociacionTarjeta/ns1:datosAdicionales
                            return
                                <ns0:datosAdicionales>
                                    <ns0:tipoDocumentoTitular>{ data($datosAdicionales/ns1:tipoDocumentoTitular) }</ns0:tipoDocumentoTitular>
                                    <ns0:identificadorPrincipalAdicional>{ data($datosAdicionales/ns1:identificadorPrincipalAdicional) }</ns0:identificadorPrincipalAdicional>
                                    <ns0:codigoClienteTitularContrato>{ data($datosAdicionales/ns1:codigoClienteTitularContrato) }</ns0:codigoClienteTitularContrato>
                                    <ns0:nombreCliente>{ data($datosAdicionales/ns1:nombreCliente) }</ns0:nombreCliente>
                                    <ns0:codigoCupo>{ data($datosAdicionales/ns1:codigoCupo) }</ns0:codigoCupo>
                                    <ns0:tipoDocumentoTarjeta>{ data($datosAdicionales/ns1:tipoDocumentoTarjeta) }</ns0:tipoDocumentoTarjeta>
                                    <ns0:codigoClienteTarjeta>{ data($datosAdicionales/ns1:codigoClienteTarjeta) }</ns0:codigoClienteTarjeta>
                                    <ns0:numeroContrato>{ data($datosAdicionales/ns1:numeroContrato) }</ns0:numeroContrato>
                                    <ns0:codigoSituacionCuenta>{ data($datosAdicionales/ns1:codigoSituacionCuenta) }</ns0:codigoSituacionCuenta>
                                    <ns0:codigoMoneda>{ data($datosAdicionales/ns1:codigoMoneda) }</ns0:codigoMoneda>
                                    <ns0:pivote>{ data($datosAdicionales/ns1:pivote) }</ns0:pivote>
                                    <ns0:indicadorEmpleado>{ data($datosAdicionales/ns1:indicadorEmpleado) }</ns0:indicadorEmpleado>
                                    <ns0:tipoSublineaDisponibleCompras>{ data($datosAdicionales/ns1:tipoSublineaDisponibleCompras) }</ns0:tipoSublineaDisponibleCompras>
                                    <ns0:disponibleCompras>{ data($datosAdicionales/ns1:disponibleCompras) }</ns0:disponibleCompras>
                                    <ns0:tipoSublineaDisponibleAvance>{ data($datosAdicionales/ns1:tipoSublineaDisponibleAvance) }</ns0:tipoSublineaDisponibleAvance>
                                    <ns0:disponibleAvance>{ data($datosAdicionales/ns1:disponibleAvance) }</ns0:disponibleAvance>
                                    <ns0:tipoSublineaDisponibleSuperAvance>{ data($datosAdicionales/ns1:tipoSublineaDisponibleSuperAvance) }</ns0:tipoSublineaDisponibleSuperAvance>
                                    <ns0:disponibleSuperAvance>{ data($datosAdicionales/ns1:disponibleSuperAvance) }</ns0:disponibleSuperAvance>
                                    <ns0:oficinaApertura>{ data($datosAdicionales/ns1:oficinaApertura) }</ns0:oficinaApertura>
                                    <ns0:fechaExpiracionTarjeta>{ data($datosAdicionales/ns1:fechaExpiracionTarjeta) }</ns0:fechaExpiracionTarjeta>
                                    <ns0:indicadorAvance>{ data($datosAdicionales/ns1:indicadorAvance) }</ns0:indicadorAvance>
                                    <ns0:indicadorSuperAvance>{ data($datosAdicionales/ns1:indicadorSuperAvance) }</ns0:indicadorSuperAvance>
                                    {
                                        for $tipoCredito in $datosAdicionales/ns1:tipoCredito
                                        return
                                            <ns0:tipoCredito>{ data($tipoCredito) }</ns0:tipoCredito>
                                    }
                                    {
                                        for $altaoReemision in $datosAdicionales/ns1:altaoReemision
                                        return
                                            <ns0:altaoReemision>{ data($altaoReemision) }</ns0:altaoReemision>
                                    }
                                    {
                                        for $motivoReemision in $datosAdicionales/ns1:motivoReemision
                                        return
                                            <ns0:motivoReemision>{ data($motivoReemision) }</ns0:motivoReemision>
                                    }
                                    {
                                        for $panAnterior in $datosAdicionales/ns1:panAnterior
                                        return
                                            <ns0:panAnterior>{ data($panAnterior) }</ns0:panAnterior>
                                    }
                                </ns0:datosAdicionales>
                        }
                    </ns0:solicitudAsociacionTarjeta>
            }
        </ns0:ContratoTarjetatransaccionalReqParam>
};

declare variable $contratoTarjetatransaccionalReqParam1 as element(ns1:ContratoTarjetatransaccionalReqParam) external;

xf:xq_IN_PX_PE_Contrato_TarjetatransaccionalAsociarExp_to_PX_PE_Contrato_TarjetatransaccionalAsociarImpl($contratoTarjetatransaccionalReqParam1)
