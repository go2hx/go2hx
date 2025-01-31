package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
function _findGroupId(_id:stdgo.GoString, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.os.user.User__readColonFile._readColonFile(_r, stdgo._internal.os.user.User__matchGroupIndexValue._matchGroupIndexValue(_id?.__copy__(), (2 : stdgo.GoInt)), (3 : stdgo.GoInt)), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            } else if (_v != null) {
                return { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>)) : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : null, _1 : stdgo.Go.asInterface((_id : stdgo._internal.os.user.User_UnknownGroupIdError.UnknownGroupIdError)) };
    }
