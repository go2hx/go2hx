package stdgo._internal.os.user;
function lookup(_username:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_User.User>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.os.user.User_current.current(), _u:stdgo.Ref<stdgo._internal.os.user.User_User.User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_u.username == _username) : Bool)) {
                return { _0 : _u, _1 : _err };
            };
        };
        return stdgo._internal.os.user.User__lookupUser._lookupUser(_username?.__copy__());
    }