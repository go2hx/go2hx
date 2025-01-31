package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _receiverType(_val:stdgo.AnyInterface):stdgo.GoString {
        var _t = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_val) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_t.name() != (stdgo.Go.str())) {
            return (_t.string() : stdgo.GoString)?.__copy__();
        };
        return ((("(" : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
