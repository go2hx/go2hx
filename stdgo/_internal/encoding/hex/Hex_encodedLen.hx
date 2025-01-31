package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function encodedLen(_n:stdgo.GoInt):stdgo.GoInt {
        return (_n * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
