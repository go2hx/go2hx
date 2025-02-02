package stdgo._internal.internal.zstd;
function newReader(_input:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.internal.zstd.Zstd_Reader.Reader)) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>);
        @:check2r _r.reset(_input);
        return _r;
    }
