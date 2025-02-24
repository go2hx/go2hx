package stdgo._internal.crypto.tls;
@:interface typedef T_keyAgreement = stdgo.StructType & {
    @:interfacetypeffun
    function _generateServerKeyExchange(_0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _3:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function _processClientKeyExchange(_0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>, _3:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function _processServerKeyExchange(_0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _3:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _4:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>):stdgo.Error;
    @:interfacetypeffun
    function _generateClientKeyExchange(_0:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _2:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; };
};
