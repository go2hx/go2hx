package stdgo._internal.net.http;
class T_http2SettingsFrame_asInterface {
    @:keep
    public dynamic function foreachSetting(_fn:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting -> stdgo.Error):stdgo.Error return __self__.value.foreachSetting(_fn);
    @:keep
    public dynamic function hasDuplicates():Bool return __self__.value.hasDuplicates();
    @:keep
    public dynamic function numSettings():stdgo.GoInt return __self__.value.numSettings();
    @:keep
    public dynamic function setting(_i:stdgo.GoInt):stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting return __self__.value.setting(_i);
    @:keep
    public dynamic function value(_id:stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } return __self__.value.value(_id);
    @:keep
    public dynamic function isAck():Bool return __self__.value.isAck();
    @:embedded
    public dynamic function _writeDebug(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void __self__.value._writeDebug(_buf);
    @:embedded
    public dynamic function _invalidate():Void __self__.value._invalidate();
    @:embedded
    public dynamic function _checkValid():Void __self__.value._checkValid();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function header():stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
