package stdgo._internal.io;
@:interface typedef ReadSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_seeker.Seeker,
};
