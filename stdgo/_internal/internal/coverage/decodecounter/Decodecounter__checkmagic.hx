package stdgo._internal.internal.coverage.decodecounter;
function _checkMagic(_v:stdgo.GoArray<stdgo.GoUInt8>):Bool {
        var _g = stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic?.__copy__();
        return (((_v[(0 : stdgo.GoInt)] == (_g[((0 : stdgo.GoInt) : stdgo.GoInt)]) && _v[(1 : stdgo.GoInt)] == (_g[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _v[(2 : stdgo.GoInt)] == (_g[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && (_v[(3 : stdgo.GoInt)] == _g[(3 : stdgo.GoInt)]) : Bool);
    }
