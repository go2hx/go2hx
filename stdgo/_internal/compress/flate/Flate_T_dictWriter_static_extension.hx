package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictWriter_asInterface) class T_dictWriter_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            var __tmp__ = _w._w.write(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
