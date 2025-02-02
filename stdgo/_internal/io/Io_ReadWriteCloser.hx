package stdgo._internal.io;
@:interface typedef ReadWriteCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_Closer.Closer,
};
