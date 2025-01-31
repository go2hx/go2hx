package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
function lookup(_username:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_User.User>; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.os.user.User_current.current(), _u:stdgo.Ref<stdgo._internal.os.user.User_User.User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && ((@:checkr _u ?? throw "null pointer dereference").username == _username) : Bool)) {
                return { _0 : _u, _1 : _err };
            };
        };
        return stdgo._internal.os.user.User__lookupUser._lookupUser(_username?.__copy__());
    }
