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
function marshal(_val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.encoding.asn1.Asn1_marshalWithParams.marshalWithParams(_val, stdgo.Go.str()?.__copy__());
    }
