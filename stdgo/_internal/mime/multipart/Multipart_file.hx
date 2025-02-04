package stdgo._internal.mime.multipart;
@:interface typedef File = stdgo.StructType & {
    > stdgo._internal.io.Io_reader.Reader,
    > stdgo._internal.io.Io_readerat.ReaderAt,
    > stdgo._internal.io.Io_seeker.Seeker,
    > stdgo._internal.io.Io_closer.Closer,
};
