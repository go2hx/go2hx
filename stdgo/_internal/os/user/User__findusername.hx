package stdgo._internal.os.user;
function _findUsername(_name:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L192"
        {
            var __tmp__ = stdgo._internal.os.user.User__readcolonfile._readColonFile(_r, stdgo._internal.os.user.User__matchuserindexvalue._matchUserIndexValue(_name?.__copy__(), (0 : stdgo.GoInt)), (6 : stdgo.GoInt)), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L193"
                return { _0 : null, _1 : _err };
            } else if (_v != null) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L195"
                return { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.os.user.User_user.User>)) : stdgo.Ref<stdgo._internal.os.user.User_user.User>), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L197"
        return { _0 : null, _1 : stdgo.Go.asInterface((_name : stdgo._internal.os.user.User_unknownusererror.UnknownUserError)) };
    }
