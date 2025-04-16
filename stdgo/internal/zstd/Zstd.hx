package stdgo.internal.zstd;
typedef Reader = stdgo._internal.internal.zstd.Zstd_reader.Reader;
typedef ReaderPointer = stdgo._internal.internal.zstd.Zstd_readerpointer.ReaderPointer;
/**
    * Package zstd provides a decompressor for zstd streams,
    * described in RFC 8878. It does not support dictionaries.
**/
class Zstd {
    /**
        * NewReader creates a new Reader that decompresses data from the given reader.
    **/
    static public inline function newReader(_input:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> return stdgo._internal.internal.zstd.Zstd_newreader.newReader(_input);
}
