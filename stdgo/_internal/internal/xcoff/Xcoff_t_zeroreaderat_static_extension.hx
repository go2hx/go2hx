package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.T_zeroReaderAt_asInterface) class T_zeroReaderAt_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _w:stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.internal.xcoff.Xcoff_t_zeroreaderat.T_zeroReaderAt = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _ in _p) {
            _p[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
