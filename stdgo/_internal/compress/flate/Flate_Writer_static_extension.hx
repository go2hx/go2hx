package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function reset( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>, _dst:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer> = _w;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._d._w._writer) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter>)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter>), _1 : false };
            }, _dw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _dw._w = _dst;
                _w._d._reset(stdgo.Go.asInterface(_dw));
                _w._d._fillWindow(_w._dict);
            } else {
                _w._d._reset(_dst);
            };
        };
    }
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer> = _w;
        return _w._d._close();
    }
    @:keep
    static public function flush( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer> = _w;
        return _w._d._syncFlush();
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._d._write(_data);
    }
}
