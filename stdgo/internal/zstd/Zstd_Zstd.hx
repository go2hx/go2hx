package stdgo.internal.zstd;
/**
    Package zstd provides a decompressor for zstd streams,
    described in RFC 8878. It does not support dictionaries.
**/
class Zstd {
    /**
        NewReader creates a new Reader that decompresses data from the given reader.
    **/
    static public inline function newReader(_input:stdgo._internal.io.Io_Reader.Reader):Reader {
        return stdgo._internal.internal.zstd.Zstd_newReader.newReader(_input);
    }
}
