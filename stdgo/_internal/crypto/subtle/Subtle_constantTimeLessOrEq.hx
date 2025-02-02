package stdgo._internal.crypto.subtle;
function constantTimeLessOrEq(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        var _x32 = (_x : stdgo.GoInt32);
        var _y32 = (_y : stdgo.GoInt32);
        return (((((((_x32 - _y32 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32)) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32)) & (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
    }
