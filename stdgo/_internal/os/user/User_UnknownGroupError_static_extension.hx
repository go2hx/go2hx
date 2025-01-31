package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.os.user.User.UnknownGroupError_asInterface) class UnknownGroupError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.os.user.User_UnknownGroupError.UnknownGroupError):stdgo.GoString {
        @:recv var _e:stdgo._internal.os.user.User_UnknownGroupError.UnknownGroupError = _e;
        return (("group: unknown group " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
