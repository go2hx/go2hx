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
function _invalidLength(_offset:stdgo.GoInt, _length:stdgo.GoInt, _sliceLength:stdgo.GoInt):Bool {
        return (((_offset + _length : stdgo.GoInt) < _offset : Bool) || ((_offset + _length : stdgo.GoInt) > _sliceLength : Bool) : Bool);
    }
