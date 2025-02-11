package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function reset( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, _dst:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._d._w ?? throw "null pointer dereference")._writer) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>)) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>), _1 : false };
            }, _dw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _dw ?? throw "null pointer dereference")._w = _dst;
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._d._reset(stdgo.Go.asInterface(_dw));
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._d._fillWindow((@:checkr _w ?? throw "null pointer dereference")._dict);
            } else {
                @:check2 (@:checkr _w ?? throw "null pointer dereference")._d._reset(_dst);
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        return @:check2 (@:checkr _w ?? throw "null pointer dereference")._d._close();
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        return @:check2 (@:checkr _w ?? throw "null pointer dereference")._d._syncFlush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2 (@:checkr _w ?? throw "null pointer dereference")._d._write(_data);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}
