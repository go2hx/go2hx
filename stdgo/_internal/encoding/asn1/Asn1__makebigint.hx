package stdgo._internal.encoding.asn1;
function _makeBigInt(_n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L198"
        if (({
            final value = _n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L199"
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L202"
        if ((_n.sign() < (0 : stdgo.GoInt) : Bool)) {
            var _nMinus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).neg(_n);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L208"
            _nMinus1.sub(_nMinus1, stdgo._internal.encoding.asn1.Asn1__bigone._bigOne);
            var _bytes = _nMinus1.bytes();
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L210"
            for (_i => _ in _bytes) {
                _bytes[(_i : stdgo.GoInt)] = (_bytes[(_i : stdgo.GoInt)] ^ ((255 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L213"
            if (((_bytes.length == (0 : stdgo.GoInt)) || ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L214"
                return { _0 : stdgo.Go.asInterface(((new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>(2, 2, ...[stdgo._internal.encoding.asn1.Asn1__byteffencoder._byteFFEncoder, stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder))]) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>) : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L216"
            return { _0 : stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
        } else if (_n.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L219"
            return { _0 : stdgo._internal.encoding.asn1.Asn1__byte00encoder._byte00Encoder, _1 : (null : stdgo.Error) };
        } else {
            var _bytes = _n.bytes();
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L222"
            if ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L225"
                return { _0 : stdgo.Go.asInterface(((new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>(2, 2, ...[stdgo._internal.encoding.asn1.Asn1__byte00encoder._byte00Encoder, stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder))]) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>) : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder)), _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L227"
            return { _0 : stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
        };
    }
