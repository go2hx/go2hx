package stdgo._internal.os.user;
function _findGroupId(_id:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_group.Group>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L121"
        {
            var __tmp__ = stdgo._internal.os.user.User__readcolonfile._readColonFile(_r, stdgo._internal.os.user.User__matchgroupindexvalue._matchGroupIndexValue(_id?.__copy__(), (2 : stdgo.GoInt)), (3 : stdgo.GoInt)), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L122"
                return { _0 : null, _1 : _err };
            } else if (_v != null) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L124"
                return { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.os.user.User_group.Group>)) : stdgo.Ref<stdgo._internal.os.user.User_group.Group>), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_unix.go#L126"
        return { _0 : null, _1 : stdgo.Go.asInterface((_id : stdgo._internal.os.user.User_unknowngroupiderror.UnknownGroupIdError)) };
    }
