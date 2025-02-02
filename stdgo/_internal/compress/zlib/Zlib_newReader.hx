package stdgo._internal.compress.zlib;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
        return stdgo._internal.compress.zlib.Zlib_newReaderDict.newReaderDict(_r, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
