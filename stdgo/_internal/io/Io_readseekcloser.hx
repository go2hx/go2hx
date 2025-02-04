package stdgo._internal.io;
@:interface typedef ReadSeekCloser = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_seeker.Seeker,
    > stdgo._internal.io.Io_closer.Closer,
};
