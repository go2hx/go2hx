package stdgo._internal.image.gif;
@:interface typedef T_writer = stdgo.StructType & {
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.io.Io_bytewriter.ByteWriter,
    @:interfacetypeffun
    function flush():stdgo.Error;
};
