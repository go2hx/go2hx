package stdgo._internal.net.http.internal.ascii;
function _lower(_b:stdgo.GoUInt8):stdgo.GoUInt8 {
        if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (_b + (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        return _b;
    }
