package stdgo._internal.compress.flate;
typedef Reader = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_ByteReader.ByteReader,
};
