package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
function _asn1Unsigned(_out:stdgo.Pointer<stdgo.GoUInt64>, _n:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _length = (_n.length : stdgo.GoInt);
        if (((_length > (9 : stdgo.GoInt) : Bool) || (_length == ((9 : stdgo.GoInt)) && _n[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) : Bool)) {
            return false;
        };
        if ((_n[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _length : Bool), _i++, {
                _out.value = (_out.value << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _out.value = (_out.value | ((_n[(_i : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
            });
        };
        return true;
    }
