package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
function lookupGroupId(_gid:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_Group.Group>; var _1 : stdgo.Error; } {
        return stdgo._internal.os.user.User__lookupGroupId._lookupGroupId(_gid?.__copy__());
    }
