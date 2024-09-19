package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
function _checkASN1Integer(_bytes:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        if ((_bytes.length) == ((1 : stdgo.GoInt))) {
            return true;
        };
        if (((_bytes[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) && (_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8)) : Bool) || (_bytes[(0 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) && (_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8)) : Bool) : Bool)) {
            return false;
        };
        return true;
    }
