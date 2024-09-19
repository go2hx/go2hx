package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
function _parseProxy(_proxy:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        if (_proxy == (stdgo.Go.str())) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_proxy?.__copy__()), _proxyURL:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (((_proxyURL.scheme != (("http" : stdgo.GoString)) && _proxyURL.scheme != (("https" : stdgo.GoString)) : Bool) && (_proxyURL.scheme != ("socks5" : stdgo.GoString)) : Bool)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.url.Url_parse.parse((("http://" : stdgo.GoString) + _proxy?.__copy__() : stdgo.GoString)?.__copy__()), _proxyURL:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    return { _0 : _proxyURL, _1 : (null : stdgo.Error) };
                };
            };
        };
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid proxy address %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_proxy), stdgo.Go.toInterface(_err)) };
        };
        return { _0 : _proxyURL, _1 : (null : stdgo.Error) };
    }
