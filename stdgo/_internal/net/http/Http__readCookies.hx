package stdgo._internal.net.http;
function _readCookies(_h:stdgo._internal.net.http.Http_Header.Header, _filter:stdgo.GoString):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        var _lines = (_h[("Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        if ((_lines.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        };
        var _cookies = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>((0 : stdgo.GoInt).toBasic(), ((_lines.length) + stdgo._internal.strings.Strings_count.count(_lines[(0 : stdgo.GoInt)]?.__copy__(), (";" : stdgo.GoString)) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        for (__143 => _line in _lines) {
            _line = stdgo._internal.net.textproto.Textproto_trimString.trimString(_line?.__copy__())?.__copy__();
            var _part:stdgo.GoString = ("" : stdgo.GoString);
            while (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (";" : stdgo.GoString));
                    _part = __tmp__._0?.__copy__();
                    _line = __tmp__._1?.__copy__();
                };
                _part = stdgo._internal.net.textproto.Textproto_trimString.trimString(_part?.__copy__())?.__copy__();
                if (_part == (stdgo.Go.str())) {
                    continue;
                };
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_part?.__copy__(), ("=" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1, __144:Bool = __tmp__._2;
                _name = stdgo._internal.net.textproto.Textproto_trimString.trimString(_name?.__copy__())?.__copy__();
                if (!stdgo._internal.net.http.Http__isCookieNameValid._isCookieNameValid(_name?.__copy__())) {
                    continue;
                };
                if (((_filter != stdgo.Go.str()) && (_filter != _name) : Bool)) {
                    continue;
                };
                var __tmp__ = stdgo._internal.net.http.Http__parseCookieValue._parseCookieValue(_val?.__copy__(), true), _val:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    continue;
                };
                _cookies = (_cookies.__append__((stdgo.Go.setRef(({ name : _name?.__copy__(), value : _val?.__copy__() } : stdgo._internal.net.http.Http_Cookie.Cookie)) : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>)));
            };
        };
        return _cookies;
    }
