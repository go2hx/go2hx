package stdgo._internal.io;
@:interface typedef WriteCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_Closer.Closer,
};
