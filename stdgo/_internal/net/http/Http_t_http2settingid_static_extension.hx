package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2SettingID_asInterface) class T_http2SettingID_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID):stdgo.GoString {
        @:recv var _s:stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID = _s;
        {
            var __tmp__ = (stdgo._internal.net.http.Http__http2settingname._http2settingName != null && stdgo._internal.net.http.Http__http2settingname._http2settingName.__exists__(_s) ? { _0 : stdgo._internal.net.http.Http__http2settingname._http2settingName[_s], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _v?.__copy__();
            };
        };
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("UNKNOWN_SETTING_%d" : stdgo.GoString), stdgo.Go.toInterface((_s : stdgo.GoUInt16)))?.__copy__();
    }
}
