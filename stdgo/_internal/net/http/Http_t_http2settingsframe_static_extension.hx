package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2SettingsFrame_asInterface) class T_http2SettingsFrame_static_extension {
    @:keep
    @:tdfield
    static public function foreachSetting( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _fn:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting -> stdgo.Error):stdgo.Error throw "T_http2SettingsFrame:net.http.foreachSetting is not yet implemented";
    @:keep
    @:tdfield
    static public function hasDuplicates( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):Bool throw "T_http2SettingsFrame:net.http.hasDuplicates is not yet implemented";
    @:keep
    @:tdfield
    static public function numSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.GoInt throw "T_http2SettingsFrame:net.http.numSettings is not yet implemented";
    @:keep
    @:tdfield
    static public function setting( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _i:stdgo.GoInt):stdgo._internal.net.http.Http_t_http2setting.T_http2Setting throw "T_http2SettingsFrame:net.http.setting is not yet implemented";
    @:keep
    @:tdfield
    static public function value( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _id:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } throw "T_http2SettingsFrame:net.http.value is not yet implemented";
    @:keep
    @:tdfield
    static public function isAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):Bool throw "T_http2SettingsFrame:net.http.isAck is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_5 __self__.header();
}
