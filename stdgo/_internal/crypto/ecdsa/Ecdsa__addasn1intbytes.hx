package stdgo._internal.crypto.ecdsa;
function _addASN1IntBytes(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L350"
        while ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && (_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L353"
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L354"
            _b.setError(stdgo._internal.errors.Errors_new_.new_(("invalid integer" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L355"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L357"
        _b.addASN1((2 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L358"
            if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L359"
                _c.addUint8((0 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L361"
            _c.addBytes(_bytes);
        });
    }
