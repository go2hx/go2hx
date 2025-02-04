package stdgo._internal.io;
@:interface typedef ReadWriteCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.io.Io_closer.Closer,
};
