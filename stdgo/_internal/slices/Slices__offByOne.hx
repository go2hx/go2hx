package stdgo._internal.slices;
function _offByOne(_v1:stdgo.GoInt, _v2:stdgo.GoInt):Bool {
        return ((_v1 == (_v2 + (1 : stdgo.GoInt) : stdgo.GoInt)) || (_v1 == (_v2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool);
    }
