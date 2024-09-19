package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.PipeWriter_asInterface) class PipeWriter_static_extension {
    @:keep
    static public function closeWithError( _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>, _err:stdgo.Error):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = _w;
        return _w._p._closeWrite(_err);
    }
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = _w;
        return _w.closeWithError((null : stdgo.Error));
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._p._write(_data);
    }
}
