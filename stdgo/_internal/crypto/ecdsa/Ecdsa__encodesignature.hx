package stdgo._internal.crypto.ecdsa;
function _encodeSignature(_r:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            stdgo._internal.crypto.ecdsa.Ecdsa__addasn1intbytes._addASN1IntBytes(_b, _r);
            stdgo._internal.crypto.ecdsa.Ecdsa__addasn1intbytes._addASN1IntBytes(_b, _s);
        });
        return @:check2 _b.bytes();
    }
