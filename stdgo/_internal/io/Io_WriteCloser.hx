package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef WriteCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_Closer.Closer,
};
