package stdgo._internal.crypto.ecdsa;
function _encodeSignature(_r:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L340"
        _b.addASN1((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L341"
            stdgo._internal.crypto.ecdsa.Ecdsa__addasn1intbytes._addASN1IntBytes(_b, _r);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L342"
            stdgo._internal.crypto.ecdsa.Ecdsa__addasn1intbytes._addASN1IntBytes(_b, _s);
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L344"
        return _b.bytes();
    }
