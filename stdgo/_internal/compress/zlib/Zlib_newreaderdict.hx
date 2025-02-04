package stdgo._internal.compress.zlib;
function newReaderDict(_r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.zlib.Zlib_t_reader.T_reader)) : stdgo.Ref<stdgo._internal.compress.zlib.Zlib_t_reader.T_reader>);
        var _err = (@:check2r _z.reset(_r, _dict) : stdgo.Error);
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(_z), _1 : (null : stdgo.Error) };
    }
