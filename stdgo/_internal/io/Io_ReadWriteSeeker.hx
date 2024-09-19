package stdgo._internal.io;
typedef ReadWriteSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_Seeker.Seeker,
};
