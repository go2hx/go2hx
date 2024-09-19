package _internal.vendor.golang_dot_org.x.net.idna;
function _decodeDigit(_x:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _digit = (0 : stdgo.GoInt32), _ok = false;
        if ((((48 : stdgo.GoUInt8) <= _x : Bool) && (_x <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return { _0 : ((_x - (22 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32), _1 : true };
        } else if ((((65 : stdgo.GoUInt8) <= _x : Bool) && (_x <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            return { _0 : ((_x - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32), _1 : true };
        } else if ((((97 : stdgo.GoUInt8) <= _x : Bool) && (_x <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
            return { _0 : ((_x - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32), _1 : true };
        };
        return { _0 : (0 : stdgo.GoInt32), _1 : false };
    }
