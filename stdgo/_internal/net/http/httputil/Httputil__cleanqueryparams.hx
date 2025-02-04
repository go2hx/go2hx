package stdgo._internal.net.http.httputil;
function _cleanQueryParams(_s:stdgo.GoString):stdgo.GoString {
        var _reencode = (function(_s:stdgo.GoString):stdgo.GoString {
            var __tmp__ = stdgo._internal.net.url.Url_parsequery.parseQuery(_s?.__copy__()), _v:stdgo._internal.net.url.Url_values.Values = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            return _v.encode()?.__copy__();
        } : stdgo.GoString -> stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((59 : stdgo.GoUInt8))) {
                        return _reencode(_s?.__copy__())?.__copy__();
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_s.length) : Bool) || !stdgo._internal.net.http.httputil.Httputil__ishex._ishex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || !stdgo._internal.net.http.httputil.Httputil__ishex._ishex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            return _reencode(_s?.__copy__())?.__copy__();
                        };
                        _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else {
                        _i++;
                    };
                };
            };
        };
        return _s?.__copy__();
    }
