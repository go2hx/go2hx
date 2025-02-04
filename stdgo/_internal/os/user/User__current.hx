package stdgo._internal.os.user;
function _current():{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } {
        var _uid = (stdgo._internal.os.user.User__currentuid._currentUID()?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.user.User__lookupuserid._lookupUserId(_uid?.__copy__()), _u:stdgo.Ref<stdgo._internal.os.user.User_user.User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return { _0 : _u, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.os.Os_userhomedir.userHomeDir(), _homeDir:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        _u = (stdgo.Go.setRef(({ uid : _uid?.__copy__(), gid : stdgo._internal.os.user.User__currentgid._currentGID()?.__copy__(), username : stdgo._internal.os.Os_getenv.getenv(("USER" : stdgo.GoString))?.__copy__(), name : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), homeDir : _homeDir?.__copy__() } : stdgo._internal.os.user.User_user.User)) : stdgo.Ref<stdgo._internal.os.user.User_user.User>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString))) {
                if ((@:checkr _u ?? throw "null pointer dereference").uid == ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _u ?? throw "null pointer dereference").uid = ("1" : stdgo.GoString);
                };
                if ((@:checkr _u ?? throw "null pointer dereference").username == ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _u ?? throw "null pointer dereference").username = ("android" : stdgo.GoString);
                };
            };
        };
        if ((((@:checkr _u ?? throw "null pointer dereference").uid != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _u ?? throw "null pointer dereference").username != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _u ?? throw "null pointer dereference").homeDir != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return { _0 : _u, _1 : (null : stdgo.Error) };
        };
        var _missing:stdgo.GoString = ("" : stdgo.GoString);
        if ((@:checkr _u ?? throw "null pointer dereference").username == ((stdgo.Go.str() : stdgo.GoString))) {
            _missing = ("$USER" : stdgo.GoString);
        };
        if ((@:checkr _u ?? throw "null pointer dereference").homeDir == ((stdgo.Go.str() : stdgo.GoString))) {
            if (_missing != ((stdgo.Go.str() : stdgo.GoString))) {
                _missing = (_missing + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _missing = (_missing + (("$HOME" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return { _0 : _u, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("user: Current requires cgo or %s set in environment" : stdgo.GoString), stdgo.Go.toInterface(_missing)) };
    }
