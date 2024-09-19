package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _isHangul(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if (((_b.length) < (3 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _b0 = (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_b0 < (234 : stdgo.GoUInt8) : Bool)) {
            return false;
        };
        var _b1 = (_b[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (_b0 == ((234 : stdgo.GoUInt8))) {
            return (_b1 >= (176 : stdgo.GoUInt8) : Bool);
        } else if ((_b0 < (237 : stdgo.GoUInt8) : Bool)) {
            return true;
        } else if ((_b0 > (237 : stdgo.GoUInt8) : Bool)) {
            return false;
        } else if ((_b1 < (158 : stdgo.GoUInt8) : Bool)) {
            return true;
        };
        return ((_b1 == (158 : stdgo.GoUInt8)) && (_b[(2 : stdgo.GoInt)] < (164 : stdgo.GoUInt8) : Bool) : Bool);
    }
