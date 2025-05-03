package stdgo._internal.archive.zip;
function newReader(_r:stdgo._internal.io.Io_readerat.ReaderAt, _size:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L107"
        if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L108"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("zip: size cannot be negative" : stdgo.GoString)) };
        };
        var _zr = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_reader.Reader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L112"
        {
            _err = _zr._init(_r, _size);
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L113"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L115"
        return { _0 : _zr, _1 : _err };
    }
