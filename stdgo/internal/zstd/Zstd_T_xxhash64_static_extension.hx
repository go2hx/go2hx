package stdgo.internal.zstd;
class T_xxhash64_static_extension {
    static public function _mergeRound(_xh:T_xxhash64, _v:haxe.UInt64, _n:haxe.UInt64):haxe.UInt64 {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>);
        final _v = (_v : stdgo.GoUInt64);
        final _n = (_n : stdgo.GoUInt64);
        return stdgo._internal.internal.zstd.Zstd_T_xxhash64_static_extension.T_xxhash64_static_extension._mergeRound(_xh, _v, _n);
    }
    static public function _round(_xh:T_xxhash64, _v:haxe.UInt64, _n:haxe.UInt64):haxe.UInt64 {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>);
        final _v = (_v : stdgo.GoUInt64);
        final _n = (_n : stdgo.GoUInt64);
        return stdgo._internal.internal.zstd.Zstd_T_xxhash64_static_extension.T_xxhash64_static_extension._round(_xh, _v, _n);
    }
    static public function _digest(_xh:T_xxhash64):haxe.UInt64 {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>);
        return stdgo._internal.internal.zstd.Zstd_T_xxhash64_static_extension.T_xxhash64_static_extension._digest(_xh);
    }
    static public function _update(_xh:T_xxhash64, _b:Array<std.UInt>):Void {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.zstd.Zstd_T_xxhash64_static_extension.T_xxhash64_static_extension._update(_xh, _b);
    }
    static public function _reset(_xh:T_xxhash64):Void {
        final _xh = (_xh : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>);
        stdgo._internal.internal.zstd.Zstd_T_xxhash64_static_extension.T_xxhash64_static_extension._reset(_xh);
    }
}
