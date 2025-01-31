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
function _outsideUTCRange(_t:stdgo._internal.time.Time_Time.Time):Bool {
        var _year = (_t.year() : stdgo.GoInt);
        return ((_year < (1950 : stdgo.GoInt) : Bool) || (_year >= (2050 : stdgo.GoInt) : Bool) : Bool);
    }
