package stdgo._internal.net.http;
function redirect(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _url:stdgo.GoString, _code:stdgo.GoInt):Void {
        {
            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_url?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                if (((_u.scheme == stdgo.Go.str()) && (_u.host == stdgo.Go.str()) : Bool)) {
                    var _oldpath = (_r.url.path?.__copy__() : stdgo.GoString);
                    if (_oldpath == (stdgo.Go.str())) {
                        _oldpath = ("/" : stdgo.GoString);
                    };
                    if (((_url == stdgo.Go.str()) || (_url[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        var __tmp__ = stdgo._internal.path.Path_split.split(_oldpath?.__copy__()), _olddir:stdgo.GoString = __tmp__._0, __132:stdgo.GoString = __tmp__._1;
                        _url = (_olddir + _url?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                    var _query:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var _i = (stdgo._internal.strings.Strings_index.index(_url?.__copy__(), ("?" : stdgo.GoString)) : stdgo.GoInt);
                        if (_i != ((-1 : stdgo.GoInt))) {
                            {
                                final __tmp__0 = (_url.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                                final __tmp__1 = (_url.__slice__(_i) : stdgo.GoString)?.__copy__();
                                _url = __tmp__0;
                                _query = __tmp__1;
                            };
                        };
                    };
                    var _trailing = (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_url?.__copy__(), ("/" : stdgo.GoString)) : Bool);
                    _url = stdgo._internal.path.Path_clean.clean(_url?.__copy__())?.__copy__();
                    if ((_trailing && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_url?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
                        _url = (_url + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _url = (_url + (_query)?.__copy__() : stdgo.GoString);
                };
            };
        };
        var _h = (_w.header() : stdgo._internal.net.http.Http_Header.Header);
        var __tmp__ = (_h != null && _h.exists(("Content-Type" : stdgo.GoString)) ? { _0 : _h[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __132:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hadCT:Bool = __tmp__._1;
        _h.set(("Location" : stdgo.GoString), stdgo._internal.net.http.Http__hexEscapeNonASCII._hexEscapeNonASCII(_url?.__copy__())?.__copy__());
        if ((!_hadCT && (((_r.method == ("GET" : stdgo.GoString)) || (_r.method == ("HEAD" : stdgo.GoString)) : Bool)) : Bool)) {
            _h.set(("Content-Type" : stdgo.GoString), ("text/html; charset=utf-8" : stdgo.GoString));
        };
        _w.writeHeader(_code);
        if ((!_hadCT && (_r.method == ("GET" : stdgo.GoString)) : Bool)) {
            var _body = (((((("<a href=\"" : stdgo.GoString) + stdgo._internal.net.http.Http__htmlEscape._htmlEscape(_url?.__copy__())?.__copy__() : stdgo.GoString) + ("\">" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.net.http.Http_statusText.statusText(_code)?.__copy__() : stdgo.GoString) + ("</a>.\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(_body));
        };
    }
