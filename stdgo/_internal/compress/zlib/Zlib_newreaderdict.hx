package stdgo._internal.compress.zlib;
function newReaderDict(_r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.zlib.Zlib_t_reader.T_reader)) : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader>);
        var _err = (_z.reset(_r, _dict) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/reader.go#L86"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/zlib/reader.go#L87"
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/zlib/reader.go#L89"
        return { _0 : stdgo.Go.asInterface(_z), _1 : (null : stdgo.Error) };
    }
