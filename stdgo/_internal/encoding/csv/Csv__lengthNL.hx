package stdgo._internal.encoding.csv;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _lengthNL(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
