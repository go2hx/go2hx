package stdgo._internal.crypto.ecdsa;
function _addASN1IntBytes(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        while ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && (_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            _b.setError(stdgo._internal.errors.Errors_new_.new_(("invalid integer" : stdgo.GoString)));
            return;
        };
        _b.addASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _c.addUint8((0 : stdgo.GoUInt8));
            };
            _c.addBytes(_bytes);
        });
    }
