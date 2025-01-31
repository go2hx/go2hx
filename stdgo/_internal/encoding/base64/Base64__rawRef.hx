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
function _rawRef(_ref:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_trimRight.trimRight(_ref?.__copy__(), ("=" : stdgo.GoString))?.__copy__();
    }
