package stdgo._internal.os.user;
function _findUserId(_uid:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_uid?.__copy__()), _i:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L180"
        if (_e != null) {
            //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L181"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("user: invalid userid " : stdgo.GoString) + _uid?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L183"
        {
            var __tmp__ = stdgo._internal.os.user.User__readcolonfile._readColonFile(_r, stdgo._internal.os.user.User__matchuserindexvalue._matchUserIndexValue(_uid?.__copy__(), (2 : stdgo.GoInt)), (6 : stdgo.GoInt)), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L184"
                return { _0 : null, _1 : _err };
            } else if (_v != null) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L186"
                return { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.os.user.User_user.User>)) : stdgo.Ref<stdgo._internal.os.user.User_user.User>), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L188"
        return { _0 : null, _1 : stdgo.Go.asInterface((_i : stdgo._internal.os.user.User_unknownuseriderror.UnknownUserIdError)) };
    }
