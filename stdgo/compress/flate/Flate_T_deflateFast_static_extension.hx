package stdgo.compress.flate;
class T_deflateFast_static_extension {
    static public function _shiftOffsets(_e:T_deflateFast):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>);
        stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._shiftOffsets(_e);
    }
    static public function _reset(_e:T_deflateFast):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>);
        stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._reset(_e);
    }
    static public function _matchLen(_e:T_deflateFast, _s:StdTypes.Int, _t:StdTypes.Int, _src:Array<std.UInt>):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>);
        final _s = (_s : stdgo.GoInt32);
        final _t = (_t : stdgo.GoInt32);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._matchLen(_e, _s, _t, _src);
    }
    static public function _encode(_e:T_deflateFast, _dst:Array<T_token>, _src:Array<std.UInt>):Array<T_token> {
        final _e = (_e : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>);
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.compress.flate.Flate_T_deflateFast_static_extension.T_deflateFast_static_extension._encode(_e, _dst, _src)) i];
    }
}
