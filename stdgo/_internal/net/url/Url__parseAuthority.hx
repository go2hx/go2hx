package stdgo._internal.net.url;
function _parseAuthority(_authority:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _user = (null : stdgo.Ref<stdgo._internal.net.url.Url_Userinfo.Userinfo>), _host = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_authority?.__copy__(), ("@" : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.url.Url__parseHost._parseHost(_authority?.__copy__());
                _host = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.net.url.Url__parseHost._parseHost((_authority.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _host = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : null, _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
        };
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : _host?.__copy__(), _2 : (null : stdgo.Error) };
        };
        var _userinfo = ((_authority.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.net.url.Url__validUserinfo._validUserinfo(_userinfo?.__copy__())) {
            return { _0 : null, _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo._internal.errors.Errors_new_.new_(("net/url: invalid userinfo" : stdgo.GoString)) };
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_userinfo?.__copy__(), (":" : stdgo.GoString))) {
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_userinfo?.__copy__(), (5 : stdgo._internal.net.url.Url_T_encoding.T_encoding));
                    _userinfo = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                };
            };
            _user = stdgo._internal.net.url.Url_user.user(_userinfo?.__copy__());
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_userinfo?.__copy__(), (":" : stdgo.GoString)), _username:stdgo.GoString = __tmp__._0, _password:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_username?.__copy__(), (5 : stdgo._internal.net.url.Url_T_encoding.T_encoding));
                    _username = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                };
            };
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_password?.__copy__(), (5 : stdgo._internal.net.url.Url_T_encoding.T_encoding));
                    _password = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                };
            };
            _user = stdgo._internal.net.url.Url_userPassword.userPassword(_username?.__copy__(), _password?.__copy__());
        };
        return { _0 : _user, _1 : _host?.__copy__(), _2 : (null : stdgo.Error) };
    }
