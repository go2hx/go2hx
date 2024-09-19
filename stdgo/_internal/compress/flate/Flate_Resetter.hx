package stdgo._internal.compress.flate;
typedef Resetter = stdgo.StructType & {
    /**
        Reset discards any buffered data and resets the Resetter as if it was
        newly initialized with the given reader.
        
        
    **/
    public dynamic function reset(_r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
