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
function _makeUTCTime(_t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (18 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__appendUTCTime._appendUTCTime(_dst, _t?.__copy__());
            _dst = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_dst : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
