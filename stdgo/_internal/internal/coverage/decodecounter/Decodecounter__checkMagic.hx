package stdgo._internal.internal.coverage.decodecounter;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.slicereader.Slicereader;
import stdgo._internal.internal.coverage.stringtab.Stringtab;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
function _checkMagic(_v:stdgo.GoArray<stdgo.GoUInt8>):Bool {
        var _g = stdgo._internal.internal.coverage.Coverage_covCounterMagic.covCounterMagic?.__copy__();
        return (((_v[(0 : stdgo.GoInt)] == (_g[((0 : stdgo.GoInt) : stdgo.GoInt)]) && _v[(1 : stdgo.GoInt)] == (_g[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _v[(2 : stdgo.GoInt)] == (_g[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && (_v[(3 : stdgo.GoInt)] == _g[(3 : stdgo.GoInt)]) : Bool);
    }
