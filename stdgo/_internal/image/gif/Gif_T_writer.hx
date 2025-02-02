package stdgo._internal.image.gif;
@:interface typedef T_writer = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_ByteWriter.ByteWriter,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():stdgo.Error;
};
