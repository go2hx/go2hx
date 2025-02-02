package stdgo._internal.mime.multipart;
@:interface typedef File = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_ReaderAt.ReaderAt,
    > stdgo._internal.io.Io_Seeker.Seeker,
    > stdgo._internal.io.Io_Closer.Closer,
};
