package stdgo._internal.net.http;
function _readSetCookies(_h:stdgo._internal.net.http.Http_Header.Header):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        var _cookieCount = ((_h[("Set-Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)).length : stdgo.GoInt);
        if (_cookieCount == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        };
        var _cookies = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>((0 : stdgo.GoInt).toBasic(), _cookieCount) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        for (__132 => _line in (_h[("Set-Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            var _parts = stdgo._internal.strings.Strings_split.split(stdgo._internal.net.textproto.Textproto_trimString.trimString(_line?.__copy__())?.__copy__(), (";" : stdgo.GoString));
            if (((_parts.length == (1 : stdgo.GoInt)) && (_parts[(0 : stdgo.GoInt)] == stdgo.Go.str()) : Bool)) {
                continue;
            };
            _parts[(0 : stdgo.GoInt)] = stdgo._internal.net.textproto.Textproto_trimString.trimString(_parts[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_parts[(0 : stdgo.GoInt)]?.__copy__(), ("=" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                continue;
            };
            _name = stdgo._internal.net.textproto.Textproto_trimString.trimString(_name?.__copy__())?.__copy__();
            if (!stdgo._internal.net.http.Http__isCookieNameValid._isCookieNameValid(_name?.__copy__())) {
                continue;
            };
            {
                var __tmp__ = stdgo._internal.net.http.Http__parseCookieValue._parseCookieValue(_value?.__copy__(), true);
                _value = __tmp__._0?.__copy__();
                _ok = __tmp__._1;
            };
            if (!_ok) {
                continue;
            };
            var _c = (stdgo.Go.setRef(({ name : _name?.__copy__(), value : _value?.__copy__(), raw : _line?.__copy__() } : stdgo._internal.net.http.Http_Cookie.Cookie)) : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>);
            {
                var _i = (1 : stdgo.GoInt);
                while ((_i < (_parts.length) : Bool)) {
                    _parts[(_i : stdgo.GoInt)] = stdgo._internal.net.textproto.Textproto_trimString.trimString(_parts[(_i : stdgo.GoInt)].__copy__()).__copy__();
if ((_parts[(_i : stdgo.GoInt)].length) == ((0 : stdgo.GoInt))) {
                        {
                            _i++;
                            continue;
                        };
                    };
var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_parts[(_i : stdgo.GoInt)].__copy__(), ("=" : stdgo.GoString)), _attr:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1, __133:Bool = __tmp__._2;
var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_toLower.toLower(_attr.__copy__()), _lowerAttr:stdgo.GoString = __tmp__._0, _isASCII:Bool = __tmp__._1;
if (!_isASCII) {
                        {
                            _i++;
                            continue;
                        };
                    };
{
                        var __tmp__ = stdgo._internal.net.http.Http__parseCookieValue._parseCookieValue(_val.__copy__(), false);
                        _val = __tmp__._0.__copy__();
                        _ok = __tmp__._1;
                    };
if (!_ok) {
                        _c.unparsed = (_c.unparsed.__append__(_parts[(_i : stdgo.GoInt)].__copy__()));
                        {
                            _i++;
                            continue;
                        };
                    };
{
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _lowerAttr;
                                if (__value__ == (("samesite" : stdgo.GoString))) {
                                    var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_toLower.toLower(_val?.__copy__()), _lowerVal:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
                                    if (!_ascii) {
                                        _c.sameSite = (1 : stdgo._internal.net.http.Http_SameSite.SameSite);
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    {
                                        final __value__ = _lowerVal;
                                        if (__value__ == (("lax" : stdgo.GoString))) {
                                            _c.sameSite = (2 : stdgo._internal.net.http.Http_SameSite.SameSite);
                                        } else if (__value__ == (("strict" : stdgo.GoString))) {
                                            _c.sameSite = (3 : stdgo._internal.net.http.Http_SameSite.SameSite);
                                        } else if (__value__ == (("none" : stdgo.GoString))) {
                                            _c.sameSite = (4 : stdgo._internal.net.http.Http_SameSite.SameSite);
                                        } else {
                                            _c.sameSite = (1 : stdgo._internal.net.http.Http_SameSite.SameSite);
                                        };
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("secure" : stdgo.GoString))) {
                                    _c.secure = true;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("httponly" : stdgo.GoString))) {
                                    _c.httpOnly = true;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("domain" : stdgo.GoString))) {
                                    _c.domain = _val?.__copy__();
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("max-age" : stdgo.GoString))) {
                                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_val?.__copy__()), _secs:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (((_err != null) || (_secs != ((0 : stdgo.GoInt)) && _val[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) : Bool)) {
                                        break;
                                    };
                                    if ((_secs <= (0 : stdgo.GoInt) : Bool)) {
                                        _secs = (-1 : stdgo.GoInt);
                                    };
                                    _c.maxAge = _secs;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("expires" : stdgo.GoString))) {
                                    _c.rawExpires = _val?.__copy__();
                                    var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), _val?.__copy__()), _exptime:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        {
                                            var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon, 02-Jan-2006 15:04:05 MST" : stdgo.GoString), _val?.__copy__());
                                            _exptime = __tmp__._0?.__copy__();
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            _c.expires = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
                                            break;
                                        };
                                    };
                                    _c.expires = _exptime.utc()?.__copy__();
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("path" : stdgo.GoString))) {
                                    _c.path = _val?.__copy__();
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _i++;
                            continue;
                        };
                    };
_c.unparsed = (_c.unparsed.__append__(_parts[(_i : stdgo.GoInt)].__copy__()));
                    _i++;
                };
            };
            _cookies = (_cookies.__append__(_c));
        };
        return _cookies;
    }
