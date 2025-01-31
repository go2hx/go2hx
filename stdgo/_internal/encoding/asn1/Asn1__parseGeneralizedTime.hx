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
function _parseGeneralizedTime(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.time.Time_Time.Time), _err = (null : stdgo.Error);
        {};
        var _s = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(("20060102150405.999999999Z0700" : stdgo.GoString), _s?.__copy__());
                _ret = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
        };
        {
            var _serialized = (_ret.format(("20060102150405.999999999Z0700" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_serialized != (_s)) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("asn1: time did not serialize back to the original value and may be invalid: given %q, but serialized as %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_serialized));
            };
        };
        return { _0 : _ret, _1 : _err };
    }
