package stdgo._internal.os.user;
function _current():{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_User.User>; var _1 : stdgo.Error; } {
        var _uid = (stdgo._internal.os.user.User__currentUID._currentUID()?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.user.User__lookupUserId._lookupUserId(_uid?.__copy__()), _u:stdgo.Ref<stdgo._internal.os.user.User_User.User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return { _0 : _u, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.os.Os_userHomeDir.userHomeDir(), _homeDir:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        _u = (stdgo.Go.setRef(({ uid : _uid?.__copy__(), gid : stdgo._internal.os.user.User__currentGID._currentGID()?.__copy__(), username : stdgo._internal.os.Os_getenv.getenv(("USER" : stdgo.GoString))?.__copy__(), name : stdgo.Go.str()?.__copy__(), homeDir : _homeDir?.__copy__() } : stdgo._internal.os.user.User_User.User)) : stdgo.Ref<stdgo._internal.os.user.User_User.User>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString))) {
                if (_u.uid == (stdgo.Go.str())) {
                    _u.uid = ("1" : stdgo.GoString);
                };
                if (_u.username == (stdgo.Go.str())) {
                    _u.username = ("android" : stdgo.GoString);
                };
            };
        };
        if (((_u.uid != (stdgo.Go.str()) && _u.username != (stdgo.Go.str()) : Bool) && (_u.homeDir != stdgo.Go.str()) : Bool)) {
            return { _0 : _u, _1 : (null : stdgo.Error) };
        };
        var _missing:stdgo.GoString = ("" : stdgo.GoString);
        if (_u.username == (stdgo.Go.str())) {
            _missing = ("$USER" : stdgo.GoString);
        };
        if (_u.homeDir == (stdgo.Go.str())) {
            if (_missing != (stdgo.Go.str())) {
                _missing = (_missing + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _missing = (_missing + (("$HOME" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return { _0 : _u, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("user: Current requires cgo or %s set in environment" : stdgo.GoString), stdgo.Go.toInterface(_missing)) };
    }
