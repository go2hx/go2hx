package stdgo._internal.compress.zlib;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        return stdgo._internal.compress.zlib.Zlib_newreaderdict.newReaderDict(_r, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
