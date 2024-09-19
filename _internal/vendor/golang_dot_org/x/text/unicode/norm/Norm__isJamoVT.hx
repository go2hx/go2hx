package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _isJamoVT(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return ((_b[(0 : stdgo.GoInt)] == (225 : stdgo.GoUInt8)) && ((_b[(1 : stdgo.GoInt)] & (252 : stdgo.GoUInt8) : stdgo.GoUInt8) == (132 : stdgo.GoUInt8)) : Bool);
    }
