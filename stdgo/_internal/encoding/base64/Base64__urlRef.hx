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
function _urlRef(_ref:stdgo.GoString):stdgo.GoString {
        _ref = stdgo._internal.strings.Strings_replaceAll.replaceAll(_ref?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString))?.__copy__();
        _ref = stdgo._internal.strings.Strings_replaceAll.replaceAll(_ref?.__copy__(), ("/" : stdgo.GoString), ("_" : stdgo.GoString))?.__copy__();
        return _ref?.__copy__();
    }
