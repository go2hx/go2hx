package stdgo.internal.coverage.cmerge;
var modeMergeStrict : ModeMergePolicy = 0i64;
var modeMergeRelaxed : ModeMergePolicy = 1i64;
typedef Merger = stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger;
typedef ModeMergePolicy = stdgo._internal.internal.coverage.cmerge.Cmerge_modemergepolicy.ModeMergePolicy;
typedef MergerPointer = stdgo._internal.internal.coverage.cmerge.Cmerge_mergerpointer.MergerPointer;
typedef ModeMergePolicyPointer = stdgo._internal.internal.coverage.cmerge.Cmerge_modemergepolicypointer.ModeMergePolicyPointer;
class Cmerge {
    /**
        * Saturating add does a saturating addition of 'dst' and 'src',
        * returning added value or math.MaxUint32 plus an overflow flag.
    **/
    static public inline function saturatingAdd(_dst:stdgo.GoUInt32, _src:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } return stdgo._internal.internal.coverage.cmerge.Cmerge_saturatingadd.saturatingAdd(_dst, _src);
}
