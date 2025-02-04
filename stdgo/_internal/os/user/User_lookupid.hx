package stdgo._internal.os.user;
function lookupId(_uid:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.os.user.User_current.current(), _u:stdgo.Ref<stdgo._internal.os.user.User_user.User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && ((@:checkr _u ?? throw "null pointer dereference").uid == _uid) : Bool)) {
                return { _0 : _u, _1 : _err };
            };
        };
        return stdgo._internal.os.user.User__lookupuserid._lookupUserId(_uid?.__copy__());
    }
