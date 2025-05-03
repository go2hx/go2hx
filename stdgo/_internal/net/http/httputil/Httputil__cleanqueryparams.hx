package stdgo._internal.net.http.httputil;
function _cleanQueryParams(_s:stdgo.GoString):stdgo.GoString {
        var _reencode = (function(_s:stdgo.GoString):stdgo.GoString {
            var __tmp__ = stdgo._internal.net.url.Url_parsequery.parseQuery(_s?.__copy__()), _v:stdgo._internal.net.url.Url_values.Values = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L806"
            return _v.encode()?.__copy__();
        } : stdgo.GoString -> stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L808"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L809"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((59 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L811"
                        return _reencode(_s?.__copy__())?.__copy__();
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L813"
                        if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_s.length) : Bool) || !stdgo._internal.net.http.httputil.Httputil__ishex._ishex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || !stdgo._internal.net.http.httputil.Httputil__ishex._ishex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L814"
                            return _reencode(_s?.__copy__())?.__copy__();
                        };
                        _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L818"
                        _i++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L821"
        return _s?.__copy__();
    }
