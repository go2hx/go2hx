package stdgo.internal.coverage.cmerge;
class Cmerge {
    /**
        Saturating add does a saturating addition of 'dst' and 'src',
        returning added value or math.MaxUint32 plus an overflow flag.
    **/
    static public inline function saturatingAdd(_dst:std.UInt, _src:std.UInt):stdgo.Tuple<std.UInt, Bool> {
        final _dst = (_dst : stdgo.GoUInt32);
        final _src = (_src : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.internal.coverage.cmerge.Cmerge_saturatingAdd.saturatingAdd(_dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
