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
function _makeNumericString(_s:stdgo.GoString):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (!stdgo._internal.encoding.asn1.Asn1__isNumeric._isNumeric(_s[(_i : stdgo.GoInt)])) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("NumericString contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_s : stdgo._internal.encoding.asn1.Asn1_T_stringEncoder.T_stringEncoder)), _1 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
