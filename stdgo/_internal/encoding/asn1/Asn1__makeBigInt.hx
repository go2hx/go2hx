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
function _makeBigInt(_n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        if ((_n == null || (_n : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        if ((@:check2r _n.sign() < (0 : stdgo.GoInt) : Bool)) {
            var _nMinus1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).neg(_n);
            @:check2r _nMinus1.sub(_nMinus1, stdgo._internal.encoding.asn1.Asn1__bigOne._bigOne);
            var _bytes = @:check2r _nMinus1.bytes();
            for (_i => _ in _bytes) {
                _bytes[(_i : stdgo.GoInt)] = (_bytes[(_i : stdgo.GoInt)] ^ ((255 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (((_bytes.length == (0 : stdgo.GoInt)) || ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : stdgo.Go.asInterface(((new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>(2, 2, ...[stdgo._internal.encoding.asn1.Asn1__byteFFEncoder._byteFFEncoder, stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder))]) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>) : stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
            };
            return { _0 : stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
        } else if (@:check2r _n.sign() == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo._internal.encoding.asn1.Asn1__byte00Encoder._byte00Encoder, _1 : (null : stdgo.Error) };
        } else {
            var _bytes = @:check2r _n.bytes();
            if ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : stdgo.Go.asInterface(((new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>(2, 2, ...[stdgo._internal.encoding.asn1.Asn1__byte00Encoder._byte00Encoder, stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder))]) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder>) : stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
            };
            return { _0 : stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
        };
    }
