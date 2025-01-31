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
function unmarshal(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = stdgo._internal.encoding.asn1.Asn1_unmarshalWithParams.unmarshalWithParams(_b, _val, stdgo.Go.str()?.__copy__());
            _rest = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
