package stdgo._internal.io;
@:interface typedef WriteCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.io.Io_closer.Closer,
};
