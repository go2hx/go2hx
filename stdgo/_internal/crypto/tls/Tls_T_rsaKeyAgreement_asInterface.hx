package stdgo._internal.crypto.tls;
class T_rsaKeyAgreement_asInterface {
    @:keep
    public dynamic function _generateClientKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>; var _2 : stdgo.Error; } return __self__.value._generateClientKeyExchange(_config, _clientHello, _cert);
    @:keep
    public dynamic function _processServerKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>):stdgo.Error return __self__.value._processServerKeyExchange(_config, _clientHello, _serverHello, _cert, _skx);
    @:keep
    public dynamic function _processClientKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>, _version:stdgo.GoUInt16):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._processClientKeyExchange(_config, _cert, _ckx, _version);
    @:keep
    public dynamic function _generateServerKeyExchange(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg>; var _1 : stdgo.Error; } return __self__.value._generateServerKeyExchange(_config, _cert, _clientHello, _hello);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_rsaKeyAgreement.T_rsaKeyAgreement>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
