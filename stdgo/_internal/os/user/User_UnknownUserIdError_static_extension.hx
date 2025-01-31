package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.os.user.User.UnknownUserIdError_asInterface) class UnknownUserIdError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.os.user.User_UnknownUserIdError.UnknownUserIdError):stdgo.GoString {
        @:recv var _e:stdgo._internal.os.user.User_UnknownUserIdError.UnknownUserIdError = _e;
        return (("user: unknown userid " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_e : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
