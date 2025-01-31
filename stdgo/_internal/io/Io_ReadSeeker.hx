package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef ReadSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Seeker.Seeker,
};
