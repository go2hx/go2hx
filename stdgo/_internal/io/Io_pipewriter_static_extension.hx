package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.PipeWriter_asInterface) class PipeWriter_static_extension {
    @:keep
    @:tdfield
    static public function closeWithError( _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>, _err:stdgo.Error):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = _w;
        return @:check2r (@:checkr _w ?? throw "null pointer dereference")._p._closeWrite(_err);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = _w;
        return @:check2r _w.closeWithError((null : stdgo.Error));
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r (@:checkr _w ?? throw "null pointer dereference")._p._write(_data);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}
