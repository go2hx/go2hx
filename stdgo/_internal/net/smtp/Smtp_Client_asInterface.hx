package stdgo._internal.net.smtp;
class Client_asInterface {
    @:keep
    public dynamic function quit():stdgo.Error return __self__.value.quit();
    @:keep
    public dynamic function noop():stdgo.Error return __self__.value.noop();
    @:keep
    public dynamic function reset():stdgo.Error return __self__.value.reset();
    @:keep
    public dynamic function extension(_ext:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } return __self__.value.extension(_ext);
    @:keep
    public dynamic function data():{ var _0 : stdgo._internal.io.Io_WriteCloser.WriteCloser; var _1 : stdgo.Error; } return __self__.value.data();
    @:keep
    public dynamic function rcpt(_to:stdgo.GoString):stdgo.Error return __self__.value.rcpt(_to);
    @:keep
    public dynamic function mail(_from:stdgo.GoString):stdgo.Error return __self__.value.mail(_from);
    @:keep
    public dynamic function auth(_a:stdgo._internal.net.smtp.Smtp_Auth.Auth):stdgo.Error return __self__.value.auth(_a);
    @:keep
    public dynamic function verify(_addr:stdgo.GoString):stdgo.Error return __self__.value.verify(_addr);
    @:keep
    public dynamic function tlsconnectionState():{ var _0 : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState; var _1 : Bool; } return __self__.value.tlsconnectionState();
    @:keep
    public dynamic function startTLS(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Error return __self__.value.startTLS(_config);
    @:keep
    public dynamic function _ehlo():stdgo.Error return __self__.value._ehlo();
    @:keep
    public dynamic function _helo():stdgo.Error return __self__.value._helo();
    @:keep
    public dynamic function _cmd(_expectCode:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._cmd(_expectCode, _format, ..._args);
    @:keep
    public dynamic function hello(_localName:stdgo.GoString):stdgo.Error return __self__.value.hello(_localName);
    @:keep
    public dynamic function _hello():stdgo.Error return __self__.value._hello();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.smtp.Smtp_Client.Client>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
