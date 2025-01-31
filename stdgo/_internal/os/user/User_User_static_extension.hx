package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.os.user.User.User_asInterface) class User_static_extension {
    @:keep
    @:tdfield
    static public function groupIds( _u:stdgo.Ref<stdgo._internal.os.user.User_User.User>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.os.user.User_User.User> = _u;
        return stdgo._internal.os.user.User__listGroups._listGroups(_u);
    }
}
