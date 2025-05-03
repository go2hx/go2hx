package stdgo._internal.os.user;
function lookupId(_uid:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L49"
        {
            var __tmp__ = stdgo._internal.os.user.User_current.current(), _u:stdgo.Ref<stdgo._internal.os.user.User_user.User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && ((@:checkr _u ?? throw "null pointer dereference").uid == _uid) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L50"
                return { _0 : _u, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L52"
        return stdgo._internal.os.user.User__lookupuserid._lookupUserId(_uid?.__copy__());
    }
