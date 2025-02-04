package stdgo._internal.crypto.ecdsa;
function _addASN1IntBytes(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        while ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && (_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            @:check2r _b.setError(stdgo._internal.errors.Errors_new_.new_(("invalid integer" : stdgo.GoString)));
            return;
        };
        @:check2r _b.addASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                @:check2r _c.addUint8((0 : stdgo.GoUInt8));
            };
            @:check2r _c.addBytes(_bytes);
        });
    }
