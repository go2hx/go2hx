package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef ReadSeekCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Seeker.Seeker,
    > stdgo._internal.io.Io_Closer.Closer,
};
