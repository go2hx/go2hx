package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _toChar(_b:stdgo.GoUInt8):stdgo.GoUInt8 {
        if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (46 : stdgo.GoUInt8);
        };
        return _b;
    }
