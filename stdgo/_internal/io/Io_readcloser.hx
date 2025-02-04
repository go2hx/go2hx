package stdgo._internal.io;
@:interface typedef ReadCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_closer.Closer,
};
