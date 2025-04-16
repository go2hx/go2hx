package stdgo._internal.compress.zlib;
@:interface typedef Resetter = stdgo.StructType & {
    /**
        * Reset discards any buffered data and resets the Resetter as if it was
        * newly initialized with the given reader.
        
        
    **/
    @:interfacetypeffun
    public dynamic function reset(_r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
