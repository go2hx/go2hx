package _internal.internal.zstd;
function newReader(_input:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : _internal.internal.zstd.Zstd_Reader.Reader)) : stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>);
        _r.reset(_input);
        return _r;
    }
