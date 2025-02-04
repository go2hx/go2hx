package stdgo._internal.io;
@:interface typedef ReadWriteSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.io.Io_seeker.Seeker,
};
