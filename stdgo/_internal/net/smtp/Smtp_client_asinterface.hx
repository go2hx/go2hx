package stdgo._internal.net.smtp;
class Client_asInterface {
    @:keep
    @:tdfield
    public dynamic function quit():stdgo.Error return @:_0 __self__.value.quit();
    @:keep
    @:tdfield
    public dynamic function noop():stdgo.Error return @:_0 __self__.value.noop();
    @:keep
    @:tdfield
    public dynamic function reset():stdgo.Error return @:_0 __self__.value.reset();
    @:keep
    @:tdfield
    public dynamic function extension(_ext:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } return @:_0 __self__.value.extension(_ext);
    @:keep
    @:tdfield
    public dynamic function data():{ var _0 : stdgo._internal.io.Io_writecloser.WriteCloser; var _1 : stdgo.Error; } return @:_0 __self__.value.data();
    @:keep
    @:tdfield
    public dynamic function rcpt(_to:stdgo.GoString):stdgo.Error return @:_0 __self__.value.rcpt(_to);
    @:keep
    @:tdfield
    public dynamic function mail(_from:stdgo.GoString):stdgo.Error return @:_0 __self__.value.mail(_from);
    @:keep
    @:tdfield
    public dynamic function auth(_a:stdgo._internal.net.smtp.Smtp_auth.Auth):stdgo.Error return @:_0 __self__.value.auth(_a);
    @:keep
    @:tdfield
    public dynamic function verify(_addr:stdgo.GoString):stdgo.Error return @:_0 __self__.value.verify(_addr);
    @:keep
    @:tdfield
    public dynamic function tLSConnectionState():{ var _0 : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState; var _1 : Bool; } return @:_0 __self__.value.tLSConnectionState();
    @:keep
    @:tdfield
    public dynamic function startTLS(_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Error return @:_0 __self__.value.startTLS(_config);
    @:keep
    @:tdfield
    public dynamic function _ehlo():stdgo.Error return @:_0 __self__.value._ehlo();
    @:keep
    @:tdfield
    public dynamic function _helo():stdgo.Error return @:_0 __self__.value._helo();
    @:keep
    @:tdfield
    public dynamic function _cmd(_expectCode:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value._cmd(_expectCode, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function hello(_localName:stdgo.GoString):stdgo.Error return @:_0 __self__.value.hello(_localName);
    @:keep
    @:tdfield
    public dynamic function _hello():stdgo.Error return @:_0 __self__.value._hello();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.smtp.Smtp_clientpointer.ClientPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
