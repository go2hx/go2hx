package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.PipeReader_asInterface) class PipeReader_static_extension {
    @:keep
    @:tdfield
    static public function closeWithError( _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = _r;
        return @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._closeRead(_err);
    }
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = _r;
        return @:check2r _r.closeWithError((null : stdgo.Error));
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._read(_data);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}
