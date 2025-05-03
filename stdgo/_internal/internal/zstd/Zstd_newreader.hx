package stdgo._internal.internal.zstd;
function newReader(_input:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.internal.zstd.Zstd_reader.Reader)) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L91"
        _r.reset(_input);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L92"
        return _r;
    }
