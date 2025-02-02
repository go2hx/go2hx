package stdgo._internal.encoding.csv;
function _lengthNL(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
