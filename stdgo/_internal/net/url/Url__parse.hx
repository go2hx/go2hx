package stdgo._internal.net.url;
function _parse(_rawURL:stdgo.GoString, _viaRequest:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        var _rest:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (stdgo._internal.net.url.Url__stringcontainsctlbyte._stringContainsCTLByte(_rawURL?.__copy__())) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/url: invalid control character in URL" : stdgo.GoString)) };
        };
        if (((_rawURL == (stdgo.Go.str() : stdgo.GoString)) && _viaRequest : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("empty url" : stdgo.GoString)) };
        };
        var _url = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_url.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        if (_rawURL == (("*" : stdgo.GoString))) {
            (@:checkr _url ?? throw "null pointer dereference").path = ("*" : stdgo.GoString);
            return { _0 : _url, _1 : (null : stdgo.Error) };
        };
        {
            {
                var __tmp__ = stdgo._internal.net.url.Url__getscheme._getScheme(_rawURL?.__copy__());
                (@:checkr _url ?? throw "null pointer dereference").scheme = @:tmpset0 __tmp__._0?.__copy__();
                _rest = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _url ?? throw "null pointer dereference").scheme = stdgo._internal.strings.Strings_tolower.toLower((@:checkr _url ?? throw "null pointer dereference").scheme?.__copy__())?.__copy__();
        if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_rest?.__copy__(), ("?" : stdgo.GoString)) && (stdgo._internal.strings.Strings_count.count(_rest?.__copy__(), ("?" : stdgo.GoString)) == (1 : stdgo.GoInt)) : Bool)) {
            (@:checkr _url ?? throw "null pointer dereference").forceQuery = true;
            _rest = (_rest.__slice__(0, ((_rest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rest?.__copy__(), ("?" : stdgo.GoString));
                _rest = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _url ?? throw "null pointer dereference").rawQuery = @:tmpset0 __tmp__._1?.__copy__();
            };
        };
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString))) {
            if ((@:checkr _url ?? throw "null pointer dereference").scheme != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _url ?? throw "null pointer dereference").opaque = _rest?.__copy__();
                return { _0 : _url, _1 : (null : stdgo.Error) };
            };
            if (_viaRequest) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid URI for request" : stdgo.GoString)) };
            };
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rest?.__copy__(), ("/" : stdgo.GoString)), _segment:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                if (stdgo._internal.strings.Strings_contains.contains(_segment?.__copy__(), (":" : stdgo.GoString))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("first path segment in URL cannot contain colon" : stdgo.GoString)) };
                };
            };
        };
        if ((((((@:checkr _url ?? throw "null pointer dereference").scheme != (stdgo.Go.str() : stdgo.GoString)) || (!_viaRequest && !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("///" : stdgo.GoString)) : Bool) : Bool)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("//" : stdgo.GoString)) : Bool)) {
            var _authority:stdgo.GoString = ("" : stdgo.GoString);
            {
                final __tmp__0 = (_rest.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                _authority = __tmp__0;
                _rest = __tmp__1;
            };
            {
                var _i = (stdgo._internal.strings.Strings_index.index(_authority?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = (_authority.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_authority.__slice__(_i) : stdgo.GoString)?.__copy__();
                        _authority = __tmp__0;
                        _rest = __tmp__1;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.net.url.Url__parseauthority._parseAuthority(_authority?.__copy__());
                (@:checkr _url ?? throw "null pointer dereference").user = @:tmpset0 __tmp__._0;
                (@:checkr _url ?? throw "null pointer dereference").host = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        } else if ((((@:checkr _url ?? throw "null pointer dereference").scheme != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
            (@:checkr _url ?? throw "null pointer dereference").omitHost = true;
        };
        {
            var _err = (@:check2r _url._setPath(_rest?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _url, _1 : (null : stdgo.Error) };
    }
