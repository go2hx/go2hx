package stdgo.net.http;
class T_http2SettingsFrame_static_extension {
    static public function foreachSetting(_f:T_http2SettingsFrame, _fn:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting -> stdgo.Error):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        final _fn = _fn;
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.foreachSetting(_f, _fn);
    }
    static public function hasDuplicates(_f:T_http2SettingsFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.hasDuplicates(_f);
    }
    static public function numSettings(_f:T_http2SettingsFrame):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.numSettings(_f);
    }
    static public function setting(_f:T_http2SettingsFrame, _i:StdTypes.Int):T_http2Setting {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.setting(_f, _i);
    }
    static public function value(_f:T_http2SettingsFrame, _id:T_http2SettingID):stdgo.Tuple<std.UInt, Bool> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.value(_f, _id);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isAck(_f:T_http2SettingsFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.isAck(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):Void {
        stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):Void {
        stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):String {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.header(__self__);
    }
}
