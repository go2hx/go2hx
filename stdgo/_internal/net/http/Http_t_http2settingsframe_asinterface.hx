package stdgo._internal.net.http;
class T_http2SettingsFrame_asInterface {
    @:keep
    @:tdfield
    public dynamic function foreachSetting(_fn:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting -> stdgo.Error):stdgo.Error return @:_0 __self__.value.foreachSetting(_fn);
    @:keep
    @:tdfield
    public dynamic function hasDuplicates():Bool return @:_0 __self__.value.hasDuplicates();
    @:keep
    @:tdfield
    public dynamic function numSettings():stdgo.GoInt return @:_0 __self__.value.numSettings();
    @:keep
    @:tdfield
    public dynamic function setting(_i:stdgo.GoInt):stdgo._internal.net.http.Http_t_http2setting.T_http2Setting return @:_0 __self__.value.setting(_i);
    @:keep
    @:tdfield
    public dynamic function value(_id:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } return @:_0 __self__.value.value(_id);
    @:keep
    @:tdfield
    public dynamic function isAck():Bool return @:_0 __self__.value.isAck();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeDebug(_0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void @:_0 __self__.value._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _invalidate():Void @:_0 __self__.value._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _checkValid():Void @:_0 __self__.value._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function header():stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_0 __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2settingsframepointer.T_http2SettingsFramePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
