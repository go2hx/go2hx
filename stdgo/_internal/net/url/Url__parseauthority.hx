package stdgo._internal.net.url;
function _parseAuthority(_authority:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _user = (null : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>), _host = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_authority?.__copy__(), ("@" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L581"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.url.Url__parsehost._parseHost(_authority?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.net.url.Url__parsehost._parseHost((_authority.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L586"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L587"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                _user = __tmp__._0;
                _host = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L589"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L590"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : _host?.__copy__(), _2 : (null : stdgo.Error) };
                _user = __tmp__._0;
                _host = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _userinfo = ((_authority.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L593"
        if (!stdgo._internal.net.url.Url__validuserinfo._validUserinfo(_userinfo?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L594"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo._internal.errors.Errors_new_.new_(("net/url: invalid userinfo" : stdgo.GoString)) };
                _user = __tmp__._0;
                _host = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L596"
        if (!stdgo._internal.strings.Strings_contains.contains(_userinfo?.__copy__(), (":" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L597"
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_userinfo?.__copy__(), (5 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
                    _userinfo = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L598"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                        _user = __tmp__._0;
                        _host = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            _user = stdgo._internal.net.url.Url_user.user(_userinfo?.__copy__());
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_userinfo?.__copy__(), (":" : stdgo.GoString)), _username:stdgo.GoString = __tmp__._0, _password:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L603"
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_username?.__copy__(), (5 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
                    _username = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L604"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                        _user = __tmp__._0;
                        _host = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L606"
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_password?.__copy__(), (5 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
                    _password = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L607"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : null, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                        _user = __tmp__._0;
                        _host = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            _user = stdgo._internal.net.url.Url_userpassword.userPassword(_username?.__copy__(), _password?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L611"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _user, _1 : _host?.__copy__(), _2 : (null : stdgo.Error) };
            _user = __tmp__._0;
            _host = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
