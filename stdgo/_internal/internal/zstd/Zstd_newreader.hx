package stdgo._internal.internal.zstd;
function newReader(_input:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.internal.zstd.Zstd_reader.Reader)) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        @:check2r _r.reset(_input);
        return _r;
    }
