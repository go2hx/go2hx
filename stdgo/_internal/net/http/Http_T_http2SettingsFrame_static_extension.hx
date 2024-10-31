package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2SettingsFrame_asInterface) class T_http2SettingsFrame_static_extension {
    @:keep
    static public function foreachSetting( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>, _fn:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting -> stdgo.Error):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = _f;
        _f._checkValid();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _f.numSettings() : Bool)) {
                {
                    var _err = (_fn(_f.setting(_i).__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                _i++;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function hasDuplicates( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = _f;
        var _num = (_f.numSettings() : stdgo.GoInt);
        if (_num == ((0 : stdgo.GoInt))) {
            return false;
        };
        if ((_num < (10 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _num : Bool)) {
                    var _idi = (_f.setting(_i).id : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID);
{
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _num : Bool)) {
                            var _idj = (_f.setting(_j).id : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID);
if (_idi == (_idj)) {
                                return true;
                            };
                            _j++;
                        };
                    };
                    _i++;
                };
            };
            return false;
        };
        var _seen = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID, Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _num : Bool)) {
                var _id = (_f.setting(_i).id : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID);
if ((_seen[_id] ?? false)) {
                    return true;
                };
_seen[_id] = true;
                _i++;
            };
        };
        return false;
    }
    @:keep
    static public function numSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = _f;
        return ((_f._p.length) / (6 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function setting( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>, _i:stdgo.GoInt):stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = _f;
        var _buf = _f._p;
        return ({ id : (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint16((_buf.__slice__((_i * (6 : stdgo.GoInt) : stdgo.GoInt), ((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID), val : stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_buf.__slice__(((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), ((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) } : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting);
    }
    @:keep
    static public function value( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>, _id:stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = _f;
        var _v = (0 : stdgo.GoUInt32), _ok = false;
        _f._checkValid();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _f.numSettings() : Bool)) {
                {
                    var _s = (_f.setting(_i).__copy__() : stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting);
                    if (_s.id == (_id)) {
                        return { _0 : _s.val, _1 : true };
                    };
                };
                _i++;
            };
        };
        return { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
    }
    @:keep
    static public function isAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = _f;
        return _f._http2FrameHeader.flags.has((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags));
    }
    @:embedded
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) __self__._writeDebug(_buf);
    @:embedded
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame) __self__._invalidate();
    @:embedded
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame) __self__._checkValid();
    @:embedded
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):stdgo.GoString return __self__.string();
    @:embedded
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.header();
}
