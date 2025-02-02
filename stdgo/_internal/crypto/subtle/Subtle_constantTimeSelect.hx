package stdgo._internal.crypto.subtle;
function constantTimeSelect(_v:stdgo.GoInt, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        return (((-1 ^ (_v - (1 : stdgo.GoInt) : stdgo.GoInt)) & _x : stdgo.GoInt) | (((_v - (1 : stdgo.GoInt) : stdgo.GoInt)) & _y : stdgo.GoInt) : stdgo.GoInt);
    }
