package stdgo._internal.io;
@:interface typedef WriteSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.io.Io_seeker.Seeker,
};
