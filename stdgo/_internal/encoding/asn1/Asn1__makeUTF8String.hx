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
function _makeUTF8String(_s:stdgo.GoString):stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder {
        return stdgo.Go.asInterface((_s : stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder));
    }
