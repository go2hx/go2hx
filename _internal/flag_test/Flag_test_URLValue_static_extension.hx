package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:keep @:allow(_internal.flag_test.Flag_test.URLValue_asInterface) class URLValue_static_extension {
    @:keep
    static public function set( _v:_internal.flag_test.Flag_test_URLValue.URLValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _v:_internal.flag_test.Flag_test_URLValue.URLValue = _v?.__copy__();
        {
            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_s?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            } else {
                {
                    var __tmp__ = (_u : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).scheme = __tmp__.scheme;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).opaque = __tmp__.opaque;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).user = __tmp__.user;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).host = __tmp__.host;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).path = __tmp__.path;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).rawPath = __tmp__.rawPath;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).omitHost = __tmp__.omitHost;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).forceQuery = __tmp__.forceQuery;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).rawQuery = __tmp__.rawQuery;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).fragment = __tmp__.fragment;
                    (_v.url : stdgo._internal.net.url.Url_URL.URL).rawFragment = __tmp__.rawFragment;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _v:_internal.flag_test.Flag_test_URLValue.URLValue):stdgo.GoString {
        @:recv var _v:_internal.flag_test.Flag_test_URLValue.URLValue = _v?.__copy__();
        if (_v.url != null && ((_v.url : Dynamic).__nil__ == null || !(_v.url : Dynamic).__nil__)) {
            return (_v.url.string() : stdgo.GoString)?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
}
