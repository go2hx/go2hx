package stdgo._internal.io;
@:interface typedef ReadWriter = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_writer.Writer,
};
