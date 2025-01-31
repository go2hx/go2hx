package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.base64.Base64_CorruptInputError.CorruptInputError = _e;
        return (("illegal base64 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
