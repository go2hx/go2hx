package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.URL_asInterface) class URL_static_extension {
    @:keep
    static public function joinPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _elem:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        _elem = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_u.escapedPath()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_elem : Array<stdgo.GoString>)));
        var _p:stdgo.GoString = ("" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_elem[(0 : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString))) {
            _elem[(0 : stdgo.GoInt)] = (("/" : stdgo.GoString) + _elem[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__();
            _p = (stdgo._internal.path.Path_join.join(...(_elem : Array<stdgo.GoString>)).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            _p = stdgo._internal.path.Path_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
        };
        if ((stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_elem[((_elem.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_p?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
            _p = (_p + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        var _url = ((_u : stdgo._internal.net.url.Url_URL.URL)?.__copy__() : stdgo._internal.net.url.Url_URL.URL);
        var _url__pointer__ = (stdgo.Go.setRef(_url) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        _url._setPath(_p?.__copy__());
        return _url__pointer__;
    }
    @:keep
    static public function unmarshalBinary( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse((_text : stdgo.GoString)?.__copy__()), _u1:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_u1 : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
            (_u : stdgo._internal.net.url.Url_URL.URL).scheme = __tmp__.scheme;
            (_u : stdgo._internal.net.url.Url_URL.URL).opaque = __tmp__.opaque;
            (_u : stdgo._internal.net.url.Url_URL.URL).user = __tmp__.user;
            (_u : stdgo._internal.net.url.Url_URL.URL).host = __tmp__.host;
            (_u : stdgo._internal.net.url.Url_URL.URL).path = __tmp__.path;
            (_u : stdgo._internal.net.url.Url_URL.URL).rawPath = __tmp__.rawPath;
            (_u : stdgo._internal.net.url.Url_URL.URL).omitHost = __tmp__.omitHost;
            (_u : stdgo._internal.net.url.Url_URL.URL).forceQuery = __tmp__.forceQuery;
            (_u : stdgo._internal.net.url.Url_URL.URL).rawQuery = __tmp__.rawQuery;
            (_u : stdgo._internal.net.url.Url_URL.URL).fragment = __tmp__.fragment;
            (_u : stdgo._internal.net.url.Url_URL.URL).rawFragment = __tmp__.rawFragment;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((_u.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function port( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__splitHostPort._splitHostPort(_u.host?.__copy__()), __0:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1;
        return _port?.__copy__();
    }
    @:keep
    static public function hostname( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__splitHostPort._splitHostPort(_u.host?.__copy__()), _host:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return _host?.__copy__();
    }
    @:keep
    static public function requestURI( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var _result = (_u.opaque?.__copy__() : stdgo.GoString);
        if (_result == (stdgo.Go.str())) {
            _result = _u.escapedPath()?.__copy__();
            if (_result == (stdgo.Go.str())) {
                _result = ("/" : stdgo.GoString);
            };
        } else {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_result?.__copy__(), ("//" : stdgo.GoString))) {
                _result = ((_u.scheme + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _result?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        if ((_u.forceQuery || (_u.rawQuery != stdgo.Go.str()) : Bool)) {
            _result = (_result + ((("?" : stdgo.GoString) + _u.rawQuery?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _result?.__copy__();
    }
    @:keep
    static public function query( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo._internal.net.url.Url_Values.Values {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parseQuery.parseQuery(_u.rawQuery?.__copy__()), _v:stdgo._internal.net.url.Url_Values.Values = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _v;
    }
    @:keep
    static public function resolveReference( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _ref:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var _url = ((_ref : stdgo._internal.net.url.Url_URL.URL)?.__copy__() : stdgo._internal.net.url.Url_URL.URL);
        var _url__pointer__ = (stdgo.Go.setRef(_url) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        if (_ref.scheme == (stdgo.Go.str())) {
            _url.scheme = _u.scheme?.__copy__();
        };
        if (((_ref.scheme != (stdgo.Go.str()) || _ref.host != (stdgo.Go.str()) : Bool) || (_ref.user != null && ((_ref.user : Dynamic).__nil__ == null || !(_ref.user : Dynamic).__nil__)) : Bool)) {
            _url._setPath(stdgo._internal.net.url.Url__resolvePath._resolvePath(_ref.escapedPath()?.__copy__(), stdgo.Go.str()?.__copy__())?.__copy__());
            return _url__pointer__;
        };
        if (_ref.opaque != (stdgo.Go.str())) {
            _url.user = null;
            _url.host = stdgo.Go.str()?.__copy__();
            _url.path = stdgo.Go.str()?.__copy__();
            return _url__pointer__;
        };
        if (((_ref.path == (stdgo.Go.str()) && !_ref.forceQuery : Bool) && (_ref.rawQuery == stdgo.Go.str()) : Bool)) {
            _url.rawQuery = _u.rawQuery?.__copy__();
            if (_ref.fragment == (stdgo.Go.str())) {
                _url.fragment = _u.fragment?.__copy__();
                _url.rawFragment = _u.rawFragment?.__copy__();
            };
        };
        _url.host = _u.host?.__copy__();
        _url.user = _u.user;
        _url._setPath(stdgo._internal.net.url.Url__resolvePath._resolvePath(_u.escapedPath()?.__copy__(), _ref.escapedPath()?.__copy__())?.__copy__());
        return _url__pointer__;
    }
    @:keep
    static public function parse( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _ref:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_ref?.__copy__()), _refURL:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : _u.resolveReference(_refURL), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function isAbs( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        return _u.scheme != (stdgo.Go.str());
    }
    @:keep
    static public function redacted( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        if ((_u == null || (_u : Dynamic).__nil__)) {
            return stdgo.Go.str()?.__copy__();
        };
        var _ru = ((_u : stdgo._internal.net.url.Url_URL.URL)?.__copy__() : stdgo._internal.net.url.Url_URL.URL);
        {
            var __tmp__ = _ru.user.password(), __0:stdgo.GoString = __tmp__._0, _has:Bool = __tmp__._1;
            if (_has) {
                _ru.user = stdgo._internal.net.url.Url_userPassword.userPassword(_ru.user.username()?.__copy__(), ("xxxxx" : stdgo.GoString));
            };
        };
        return (_ru.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        if (_u.scheme != (stdgo.Go.str())) {
            _buf.writeString(_u.scheme?.__copy__());
            _buf.writeByte((58 : stdgo.GoUInt8));
        };
        if (_u.opaque != (stdgo.Go.str())) {
            _buf.writeString(_u.opaque?.__copy__());
        } else {
            if (((_u.scheme != (stdgo.Go.str()) || _u.host != (stdgo.Go.str()) : Bool) || (_u.user != null && ((_u.user : Dynamic).__nil__ == null || !(_u.user : Dynamic).__nil__)) : Bool)) {
                if (((_u.omitHost && _u.host == (stdgo.Go.str()) : Bool) && (_u.user == null || (_u.user : Dynamic).__nil__) : Bool)) {} else {
                    if (((_u.host != (stdgo.Go.str()) || _u.path != (stdgo.Go.str()) : Bool) || (_u.user != null && ((_u.user : Dynamic).__nil__ == null || !(_u.user : Dynamic).__nil__)) : Bool)) {
                        _buf.writeString(("//" : stdgo.GoString));
                    };
                    {
                        var _ui = _u.user;
                        if ((_ui != null && ((_ui : Dynamic).__nil__ == null || !(_ui : Dynamic).__nil__))) {
                            _buf.writeString((_ui.string() : stdgo.GoString)?.__copy__());
                            _buf.writeByte((64 : stdgo.GoUInt8));
                        };
                    };
                    {
                        var _h = (_u.host?.__copy__() : stdgo.GoString);
                        if (_h != (stdgo.Go.str())) {
                            _buf.writeString(stdgo._internal.net.url.Url__escape._escape(_h?.__copy__(), (3 : stdgo._internal.net.url.Url_T_encoding.T_encoding))?.__copy__());
                        };
                    };
                };
            };
            var _path = (_u.escapedPath()?.__copy__() : stdgo.GoString);
            if (((_path != (stdgo.Go.str()) && _path[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8)) : Bool) && (_u.host != stdgo.Go.str()) : Bool)) {
                _buf.writeByte((47 : stdgo.GoUInt8));
            };
            if (_buf.len() == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_path?.__copy__(), ("/" : stdgo.GoString)), _segment:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                    if (stdgo._internal.strings.Strings_contains.contains(_segment?.__copy__(), (":" : stdgo.GoString))) {
                        _buf.writeString(("./" : stdgo.GoString));
                    };
                };
            };
            _buf.writeString(_path?.__copy__());
        };
        if ((_u.forceQuery || (_u.rawQuery != stdgo.Go.str()) : Bool)) {
            _buf.writeByte((63 : stdgo.GoUInt8));
            _buf.writeString(_u.rawQuery?.__copy__());
        };
        if (_u.fragment != (stdgo.Go.str())) {
            _buf.writeByte((35 : stdgo.GoUInt8));
            _buf.writeString(_u.escapedFragment()?.__copy__());
        };
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function escapedFragment( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        if (((_u.rawFragment != stdgo.Go.str()) && stdgo._internal.net.url.Url__validEncoded._validEncoded(_u.rawFragment?.__copy__(), (7 : stdgo._internal.net.url.Url_T_encoding.T_encoding)) : Bool)) {
            var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_u.rawFragment?.__copy__(), (7 : stdgo._internal.net.url.Url_T_encoding.T_encoding)), _f:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_f == _u.fragment) : Bool)) {
                return _u.rawFragment?.__copy__();
            };
        };
        return stdgo._internal.net.url.Url__escape._escape(_u.fragment?.__copy__(), (7 : stdgo._internal.net.url.Url_T_encoding.T_encoding))?.__copy__();
    }
    @:keep
    static public function _setFragment( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _f:stdgo.GoString):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_f?.__copy__(), (7 : stdgo._internal.net.url.Url_T_encoding.T_encoding)), _frag:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.fragment = _frag?.__copy__();
        {
            var _escf = (stdgo._internal.net.url.Url__escape._escape(_frag?.__copy__(), (7 : stdgo._internal.net.url.Url_T_encoding.T_encoding))?.__copy__() : stdgo.GoString);
            if (_f == (_escf)) {
                _u.rawFragment = stdgo.Go.str()?.__copy__();
            } else {
                _u.rawFragment = _f?.__copy__();
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function escapedPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        if (((_u.rawPath != stdgo.Go.str()) && stdgo._internal.net.url.Url__validEncoded._validEncoded(_u.rawPath?.__copy__(), (1 : stdgo._internal.net.url.Url_T_encoding.T_encoding)) : Bool)) {
            var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_u.rawPath?.__copy__(), (1 : stdgo._internal.net.url.Url_T_encoding.T_encoding)), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_p == _u.path) : Bool)) {
                return _u.rawPath?.__copy__();
            };
        };
        if (_u.path == (("*" : stdgo.GoString))) {
            return ("*" : stdgo.GoString);
        };
        return stdgo._internal.net.url.Url__escape._escape(_u.path?.__copy__(), (1 : stdgo._internal.net.url.Url_T_encoding.T_encoding))?.__copy__();
    }
    @:keep
    static public function _setPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _p:stdgo.GoString):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_p?.__copy__(), (1 : stdgo._internal.net.url.Url_T_encoding.T_encoding)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u.path = _path?.__copy__();
        {
            var _escp = (stdgo._internal.net.url.Url__escape._escape(_path?.__copy__(), (1 : stdgo._internal.net.url.Url_T_encoding.T_encoding))?.__copy__() : stdgo.GoString);
            if (_p == (_escp)) {
                _u.rawPath = stdgo.Go.str()?.__copy__();
            } else {
                _u.rawPath = _p?.__copy__();
            };
        };
        return (null : stdgo.Error);
    }
}
