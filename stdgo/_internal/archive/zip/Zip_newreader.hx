package stdgo._internal.archive.zip;
function newReader(_r:stdgo._internal.io.Io_readerat.ReaderAt, _size:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>; var _1 : stdgo.Error; } {
        if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("zip: size cannot be negative" : stdgo.GoString)) };
        };
        var _zr = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_reader.Reader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            _err = @:check2r _zr._init(_r, _size);
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath)) : Bool)) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _zr, _1 : _err };
    }
