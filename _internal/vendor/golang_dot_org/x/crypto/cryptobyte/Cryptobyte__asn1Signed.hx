package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
function _asn1Signed(_out:stdgo.Pointer<stdgo.GoInt64>, _n:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _length = (_n.length : stdgo.GoInt);
        if ((_length > (8 : stdgo.GoInt) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _length : Bool), _i++, {
                _out.value = (_out.value << ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
                _out.value = (_out.value | ((_n[(_i : stdgo.GoInt)] : stdgo.GoInt64)) : stdgo.GoInt64);
            });
        };
        _out.value = (_out.value << (((64 : stdgo.GoUInt8) - ((_length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        _out.value = (_out.value >> (((64 : stdgo.GoUInt8) - ((_length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        return true;
    }
