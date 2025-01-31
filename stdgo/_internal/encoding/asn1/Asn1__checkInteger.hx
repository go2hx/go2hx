package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _checkInteger(_bytes:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
        };
        if ((_bytes.length) == ((1 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        if (((((_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) || (((_bytes[(0 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("integer not minimally-encoded" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
        };
        return (null : stdgo.Error);
    }
