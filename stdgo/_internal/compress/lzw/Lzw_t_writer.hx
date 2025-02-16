package stdgo._internal.compress.lzw;
@:interface typedef T_writer = stdgo.StructType & {
    > stdgo._internal.io.Io_bytewriter.ByteWriter,
    @:interfacetypeffun
    function flush():stdgo.Error;
};
