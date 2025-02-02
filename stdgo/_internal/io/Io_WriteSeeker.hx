package stdgo._internal.io;
@:interface typedef WriteSeeker = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_Seeker.Seeker,
};
