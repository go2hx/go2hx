package stdgo._internal.archive.zip;
function _findSignatureInBlock(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        {
            var _i = ((_b.length) - (22 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if ((((_b[(_i : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) && _b[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((75 : stdgo.GoUInt8)) : Bool) && _b[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == ((5 : stdgo.GoUInt8)) : Bool) && (_b[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] == (6 : stdgo.GoUInt8)) : Bool)) {
                    var _n = ((_b[((_i + (22 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) | ((_b[((_i + (22 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
                    if ((((_n + (22 : stdgo.GoInt) : stdgo.GoInt) + _i : stdgo.GoInt) <= (_b.length) : Bool)) {
                        return _i;
                    };
                };
                _i--;
            };
        };
        return (-1 : stdgo.GoInt);
    }
