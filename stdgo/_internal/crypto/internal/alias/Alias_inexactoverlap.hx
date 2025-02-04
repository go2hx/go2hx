package stdgo._internal.crypto.internal.alias;
function inexactOverlap(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((((_x.length) == ((0 : stdgo.GoInt)) || (_y.length) == ((0 : stdgo.GoInt)) : Bool) || (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]) == stdgo.Go.pointer(_y[(0 : stdgo.GoInt)])) : Bool)) {
            return false;
        };
        return stdgo._internal.crypto.internal.alias.Alias_anyoverlap.anyOverlap(_x, _y);
    }
