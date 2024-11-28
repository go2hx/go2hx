package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.PipeReader_asInterface) class PipeReader_static_extension {
    @:keep
    static public function closeWithError( _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = _r;
        return _r._p._closeRead(_err);
    }
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = _r;
        return _r.closeWithError((null : stdgo.Error));
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            var __tmp__ = _r._p._read(_data);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
