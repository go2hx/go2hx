package stdgo._internal.os.user;
function current():{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L22"
        stdgo._internal.os.user.User__cache._cache.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.user.User__current._current();
                stdgo._internal.os.user.User__cache._cache._u = @:tmpset0 __tmp__._0;
                stdgo._internal.os.user.User__cache._cache._err = @:tmpset0 __tmp__._1;
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L23"
        if (stdgo._internal.os.user.User__cache._cache._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L24"
            return { _0 : null, _1 : stdgo._internal.os.user.User__cache._cache._err };
        };
        var _u = ((stdgo._internal.os.user.User__cache._cache._u : stdgo._internal.os.user.User_user.User)?.__copy__() : stdgo._internal.os.user.User_user.User);
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup.go#L27"
        return { _0 : (stdgo.Go.setRef(_u) : stdgo.Ref<stdgo._internal.os.user.User_user.User>), _1 : (null : stdgo.Error) };
    }
