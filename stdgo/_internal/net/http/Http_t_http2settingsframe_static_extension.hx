package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2SettingsFrame_asInterface) class T_http2SettingsFrame_static_extension {
    @:keep
    @:tdfield
    static public function foreachSetting( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _fn:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting -> stdgo.Error):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        @:check2r _f._checkValid();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < @:check2r _f.numSettings() : Bool)) {
                {
                    var _err = (_fn(@:check2r _f.setting(_i).__copy__()) : stdgo.Error);
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
    @:tdfield
    static public function hasDuplicates( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        var _num = (@:check2r _f.numSettings() : stdgo.GoInt);
        if (_num == ((0 : stdgo.GoInt))) {
            return false;
        };
        if ((_num < (10 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _num : Bool)) {
                    var _idi = (@:check2r _f.setting(_i).iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
{
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _num : Bool)) {
                            var _idj = (@:check2r _f.setting(_j).iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
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
        } : stdgo.GoMap<stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID, Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _num : Bool)) {
                var _id = (@:check2r _f.setting(_i).iD : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID);
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
    @:tdfield
    static public function numSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        return (((@:checkr _f ?? throw "null pointer dereference")._p.length) / (6 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function setting( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _i:stdgo.GoInt):stdgo._internal.net.http.Http_t_http2setting.T_http2Setting {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        var _buf = (@:checkr _f ?? throw "null pointer dereference")._p;
        return ({ iD : (stdgo._internal.net.http.Http__binary._binary.bigEndian.uint16((_buf.__slice__((_i * (6 : stdgo.GoInt) : stdgo.GoInt), ((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : stdgo._internal.net.http.Http__binary._binary.bigEndian.uint32((_buf.__slice__(((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), ((_i * (6 : stdgo.GoInt) : stdgo.GoInt) + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting);
    }
    @:keep
    @:tdfield
    static public function value( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>, _id:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        var _v = (0 : stdgo.GoUInt32), _ok = false;
        @:check2r _f._checkValid();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < @:check2r _f.numSettings() : Bool)) {
                {
                    var _s = (@:check2r _f.setting(_i).__copy__() : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting);
                    if (_s.iD == (_id)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : _s.val, _1 : true };
                            _v = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                _i++;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
            _v = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function isAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.flags.has((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags));
    }
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
