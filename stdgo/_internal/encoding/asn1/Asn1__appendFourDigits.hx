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
function _appendFourDigits(_dst:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _bytes:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        for (_i => _ in _bytes) {
            _bytes[((3 : stdgo.GoInt) - _i : stdgo.GoInt)] = ((48 : stdgo.GoUInt8) + ((_v % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
            _v = (_v / ((10 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return (_dst.__append__(...((_bytes.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
