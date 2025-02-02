package stdgo._internal.io;
@:interface typedef ReadSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Seeker.Seeker,
};
