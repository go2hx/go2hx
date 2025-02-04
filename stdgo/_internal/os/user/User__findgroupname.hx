package stdgo._internal.os.user;
function _findGroupName(_name:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_group.Group>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.os.user.User__readcolonfile._readColonFile(_r, stdgo._internal.os.user.User__matchgroupindexvalue._matchGroupIndexValue(_name?.__copy__(), (0 : stdgo.GoInt)), (3 : stdgo.GoInt)), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            } else if (_v != null) {
                return { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.os.user.User_group.Group>)) : stdgo.Ref<stdgo._internal.os.user.User_group.Group>), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : null, _1 : stdgo.Go.asInterface((_name : stdgo._internal.os.user.User_unknowngrouperror.UnknownGroupError)) };
    }
