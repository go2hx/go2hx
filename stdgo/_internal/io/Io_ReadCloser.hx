package stdgo._internal.io;
@:interface typedef ReadCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Closer.Closer,
};
