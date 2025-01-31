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
function _parseBool(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _ret = false, _err = (null : stdgo.Error);
        if ((_bytes.length) != ((1 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("invalid boolean" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
            return { _0 : _ret, _1 : _err };
        };
        {
            final __value__ = _bytes[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _ret = false;
            } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                _ret = true;
            } else {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("invalid boolean" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
            };
        };
        return { _0 : _ret, _1 : _err };
    }
