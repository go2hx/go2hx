package stdgo._internal.os.user;
function current():{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_User.User>; var _1 : stdgo.Error; } {
        stdgo._internal.os.user.User__cache._cache.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.user.User__current._current();
                stdgo._internal.os.user.User__cache._cache._u = __tmp__._0;
                stdgo._internal.os.user.User__cache._cache._err = __tmp__._1;
            };
        });
        if (stdgo._internal.os.user.User__cache._cache._err != null) {
            return { _0 : null, _1 : stdgo._internal.os.user.User__cache._cache._err };
        };
        var _u = ((stdgo._internal.os.user.User__cache._cache._u : stdgo._internal.os.user.User_User.User)?.__copy__() : stdgo._internal.os.user.User_User.User);
        return { _0 : (stdgo.Go.setRef(_u) : stdgo.Ref<stdgo._internal.os.user.User_User.User>), _1 : (null : stdgo.Error) };
    }