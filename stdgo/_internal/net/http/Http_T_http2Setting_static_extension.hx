package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Setting_asInterface) class T_http2Setting_static_extension {
    @:keep
    static public function valid( _s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error {
        @:recv var _s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting = _s?.__copy__();
        {
            final __value__ = _s.id;
            if (__value__ == ((2 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                if (((_s.val != (1u32 : stdgo.GoUInt32)) && (_s.val != (0u32 : stdgo.GoUInt32)) : Bool)) {
                    return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                };
            } else if (__value__ == ((4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                if ((_s.val > (2147483647u32 : stdgo.GoUInt32) : Bool)) {
                    return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                };
            } else if (__value__ == ((5 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID))) {
                if (((_s.val < (16384u32 : stdgo.GoUInt32) : Bool) || (_s.val > (16777215u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                    return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.GoString {
        @:recv var _s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting = _s?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%v = %d]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.id)), stdgo.Go.toInterface(_s.val))?.__copy__();
    }
}