package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.URL_asInterface) class URL_static_extension {
    @:keep
    @:tdfield
    static public function joinPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _elem:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        _elem = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[@:check2r _u.escapedPath()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_elem : Array<stdgo.GoString>)));
        var _p:stdgo.GoString = ("" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_elem[(0 : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString))) {
            _elem[(0 : stdgo.GoInt)] = (("/" : stdgo.GoString) + _elem[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__();
            _p = (stdgo._internal.path.Path_join.join(...(_elem : Array<stdgo.GoString>)).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            _p = stdgo._internal.path.Path_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
        };
        if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_elem[((_elem.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_p?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
            _p = (_p + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        var _url = ((_u : stdgo._internal.net.url.Url_url.URL)?.__copy__() : stdgo._internal.net.url.Url_url.URL);
        @:check2 _url._setPath(_p?.__copy__());
        return (stdgo.Go.setRef(_url) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse((_text : stdgo.GoString)?.__copy__()), _u1:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_u1 : stdgo._internal.net.url.Url_url.URL)?.__copy__();
            var x = (_u : stdgo._internal.net.url.Url_url.URL);
            x.scheme = __tmp__?.scheme;
            x.opaque = __tmp__?.opaque;
            x.user = __tmp__?.user;
            x.host = __tmp__?.host;
            x.path = __tmp__?.path;
            x.rawPath = __tmp__?.rawPath;
            x.omitHost = __tmp__?.omitHost;
            x.forceQuery = __tmp__?.forceQuery;
            x.rawQuery = __tmp__?.rawQuery;
            x.fragment = __tmp__?.fragment;
            x.rawFragment = __tmp__?.rawFragment;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : ((@:check2r _u.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function port( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__splithostport._splitHostPort((@:checkr _u ?? throw "null pointer dereference").host?.__copy__()), __0:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1;
        return _port?.__copy__();
    }
    @:keep
    @:tdfield
    static public function hostname( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__splithostport._splitHostPort((@:checkr _u ?? throw "null pointer dereference").host?.__copy__()), _host:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1;
        return _host?.__copy__();
    }
    @:keep
    @:tdfield
    static public function requestURI( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _result = ((@:checkr _u ?? throw "null pointer dereference").opaque?.__copy__() : stdgo.GoString);
        if (_result == ((stdgo.Go.str() : stdgo.GoString))) {
            _result = @:check2r _u.escapedPath()?.__copy__();
            if (_result == ((stdgo.Go.str() : stdgo.GoString))) {
                _result = ("/" : stdgo.GoString);
            };
        } else {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_result?.__copy__(), ("//" : stdgo.GoString))) {
                _result = (((@:checkr _u ?? throw "null pointer dereference").scheme + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _result?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        if (((@:checkr _u ?? throw "null pointer dereference").forceQuery || ((@:checkr _u ?? throw "null pointer dereference").rawQuery != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _result = (_result + ((("?" : stdgo.GoString) + (@:checkr _u ?? throw "null pointer dereference").rawQuery?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _result?.__copy__();
    }
    @:keep
    @:tdfield
    static public function query( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo._internal.net.url.Url_values.Values {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parsequery.parseQuery((@:checkr _u ?? throw "null pointer dereference").rawQuery?.__copy__()), _v:stdgo._internal.net.url.Url_values.Values = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _v;
    }
    @:keep
    @:tdfield
    static public function resolveReference( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _ref:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _url = ((_ref : stdgo._internal.net.url.Url_url.URL)?.__copy__() : stdgo._internal.net.url.Url_url.URL);
        if ((@:checkr _ref ?? throw "null pointer dereference").scheme == ((stdgo.Go.str() : stdgo.GoString))) {
            _url.scheme = (@:checkr _u ?? throw "null pointer dereference").scheme?.__copy__();
        };
        if ((((@:checkr _ref ?? throw "null pointer dereference").scheme != ((stdgo.Go.str() : stdgo.GoString)) || (@:checkr _ref ?? throw "null pointer dereference").host != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((@:checkr _ref ?? throw "null pointer dereference").user != null && (((@:checkr _ref ?? throw "null pointer dereference").user : Dynamic).__nil__ == null || !((@:checkr _ref ?? throw "null pointer dereference").user : Dynamic).__nil__)) : Bool)) {
            @:check2 _url._setPath(stdgo._internal.net.url.Url__resolvepath._resolvePath(@:check2r _ref.escapedPath()?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__());
            return (stdgo.Go.setRef(_url) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        };
        if ((@:checkr _ref ?? throw "null pointer dereference").opaque != ((stdgo.Go.str() : stdgo.GoString))) {
            _url.user = null;
            _url.host = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            _url.path = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            return (stdgo.Go.setRef(_url) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        };
        if ((((@:checkr _ref ?? throw "null pointer dereference").path == ((stdgo.Go.str() : stdgo.GoString)) && !(@:checkr _ref ?? throw "null pointer dereference").forceQuery : Bool) && ((@:checkr _ref ?? throw "null pointer dereference").rawQuery == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _url.rawQuery = (@:checkr _u ?? throw "null pointer dereference").rawQuery?.__copy__();
            if ((@:checkr _ref ?? throw "null pointer dereference").fragment == ((stdgo.Go.str() : stdgo.GoString))) {
                _url.fragment = (@:checkr _u ?? throw "null pointer dereference").fragment?.__copy__();
                _url.rawFragment = (@:checkr _u ?? throw "null pointer dereference").rawFragment?.__copy__();
            };
        };
        _url.host = (@:checkr _u ?? throw "null pointer dereference").host?.__copy__();
        _url.user = (@:checkr _u ?? throw "null pointer dereference").user;
        @:check2 _url._setPath(stdgo._internal.net.url.Url__resolvepath._resolvePath(@:check2r _u.escapedPath()?.__copy__(), @:check2r _ref.escapedPath()?.__copy__())?.__copy__());
        return (stdgo.Go.setRef(_url) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    }
    @:keep
    @:tdfield
    static public function parse( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _ref:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_ref?.__copy__()), _refURL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : @:check2r _u.resolveReference(_refURL), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function isAbs( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):Bool {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        return (@:checkr _u ?? throw "null pointer dereference").scheme != ((stdgo.Go.str() : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function redacted( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        if ((_u == null || (_u : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _ru = ((_u : stdgo._internal.net.url.Url_url.URL)?.__copy__() : stdgo._internal.net.url.Url_url.URL);
        {
            var __tmp__ = @:check2r _ru.user.password(), __0:stdgo.GoString = __tmp__._0, _has:Bool = __tmp__._1;
            if (_has) {
                _ru.user = stdgo._internal.net.url.Url_userpassword.userPassword(@:check2r _ru.user.username()?.__copy__(), ("xxxxx" : stdgo.GoString));
            };
        };
        return (@:check2 _ru.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        if ((@:checkr _u ?? throw "null pointer dereference").scheme != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2 _buf.writeString((@:checkr _u ?? throw "null pointer dereference").scheme?.__copy__());
            @:check2 _buf.writeByte((58 : stdgo.GoUInt8));
        };
        if ((@:checkr _u ?? throw "null pointer dereference").opaque != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2 _buf.writeString((@:checkr _u ?? throw "null pointer dereference").opaque?.__copy__());
        } else {
            if ((((@:checkr _u ?? throw "null pointer dereference").scheme != ((stdgo.Go.str() : stdgo.GoString)) || (@:checkr _u ?? throw "null pointer dereference").host != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((@:checkr _u ?? throw "null pointer dereference").user != null && (((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__ == null || !((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__)) : Bool)) {
                if ((((@:checkr _u ?? throw "null pointer dereference").omitHost && (@:checkr _u ?? throw "null pointer dereference").host == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _u ?? throw "null pointer dereference").user == null || ((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__) : Bool)) {} else {
                    if ((((@:checkr _u ?? throw "null pointer dereference").host != ((stdgo.Go.str() : stdgo.GoString)) || (@:checkr _u ?? throw "null pointer dereference").path != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((@:checkr _u ?? throw "null pointer dereference").user != null && (((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__ == null || !((@:checkr _u ?? throw "null pointer dereference").user : Dynamic).__nil__)) : Bool)) {
                        @:check2 _buf.writeString(("//" : stdgo.GoString));
                    };
                    {
                        var _ui = (@:checkr _u ?? throw "null pointer dereference").user;
                        if ((_ui != null && ((_ui : Dynamic).__nil__ == null || !(_ui : Dynamic).__nil__))) {
                            @:check2 _buf.writeString((@:check2r _ui.string() : stdgo.GoString)?.__copy__());
                            @:check2 _buf.writeByte((64 : stdgo.GoUInt8));
                        };
                    };
                    {
                        var _h = ((@:checkr _u ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
                        if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                            @:check2 _buf.writeString(stdgo._internal.net.url.Url__escape._escape(_h?.__copy__(), (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__());
                        };
                    };
                };
            };
            var _path = (@:check2r _u.escapedPath()?.__copy__() : stdgo.GoString);
            if (((_path != ((stdgo.Go.str() : stdgo.GoString)) && _path[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8)) : Bool) && ((@:checkr _u ?? throw "null pointer dereference").host != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                @:check2 _buf.writeByte((47 : stdgo.GoUInt8));
            };
            if (@:check2 _buf.len() == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_path?.__copy__(), ("/" : stdgo.GoString)), _segment:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                    if (stdgo._internal.strings.Strings_contains.contains(_segment?.__copy__(), (":" : stdgo.GoString))) {
                        @:check2 _buf.writeString(("./" : stdgo.GoString));
                    };
                };
            };
            @:check2 _buf.writeString(_path?.__copy__());
        };
        if (((@:checkr _u ?? throw "null pointer dereference").forceQuery || ((@:checkr _u ?? throw "null pointer dereference").rawQuery != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            @:check2 _buf.writeByte((63 : stdgo.GoUInt8));
            @:check2 _buf.writeString((@:checkr _u ?? throw "null pointer dereference").rawQuery?.__copy__());
        };
        if ((@:checkr _u ?? throw "null pointer dereference").fragment != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2 _buf.writeByte((35 : stdgo.GoUInt8));
            @:check2 _buf.writeString(@:check2r _u.escapedFragment()?.__copy__());
        };
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function escapedFragment( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        if ((((@:checkr _u ?? throw "null pointer dereference").rawFragment != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.net.url.Url__validencoded._validEncoded((@:checkr _u ?? throw "null pointer dereference").rawFragment?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
            var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((@:checkr _u ?? throw "null pointer dereference").rawFragment?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _f:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_f == (@:checkr _u ?? throw "null pointer dereference").fragment) : Bool)) {
                return (@:checkr _u ?? throw "null pointer dereference").rawFragment?.__copy__();
            };
        };
        return stdgo._internal.net.url.Url__escape._escape((@:checkr _u ?? throw "null pointer dereference").fragment?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setFragment( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _f:stdgo.GoString):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_f?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _frag:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _u ?? throw "null pointer dereference").fragment = _frag?.__copy__();
        {
            var _escf = (stdgo._internal.net.url.Url__escape._escape(_frag?.__copy__(), (7 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__() : stdgo.GoString);
            if (_f == (_escf)) {
                (@:checkr _u ?? throw "null pointer dereference").rawFragment = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else {
                (@:checkr _u ?? throw "null pointer dereference").rawFragment = _f?.__copy__();
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function escapedPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        if ((((@:checkr _u ?? throw "null pointer dereference").rawPath != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.net.url.Url__validencoded._validEncoded((@:checkr _u ?? throw "null pointer dereference").rawPath?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
            var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((@:checkr _u ?? throw "null pointer dereference").rawPath?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_p == (@:checkr _u ?? throw "null pointer dereference").path) : Bool)) {
                return (@:checkr _u ?? throw "null pointer dereference").rawPath?.__copy__();
            };
        };
        if ((@:checkr _u ?? throw "null pointer dereference").path == (("*" : stdgo.GoString))) {
            return ("*" : stdgo.GoString);
        };
        return stdgo._internal.net.url.Url__escape._escape((@:checkr _u ?? throw "null pointer dereference").path?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _setPath( _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _p:stdgo.GoString):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = _u;
        var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_p?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        (@:checkr _u ?? throw "null pointer dereference").path = _path?.__copy__();
        {
            var _escp = (stdgo._internal.net.url.Url__escape._escape(_path?.__copy__(), (1 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__() : stdgo.GoString);
            if (_p == (_escp)) {
                (@:checkr _u ?? throw "null pointer dereference").rawPath = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else {
                (@:checkr _u ?? throw "null pointer dereference").rawPath = _p?.__copy__();
            };
        };
        return (null : stdgo.Error);
    }
}
