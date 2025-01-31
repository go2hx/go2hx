package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef ReadWriter = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Writer.Writer,
};
