package stdgo._internal.compress.zlib;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.adler32.Adler32;
import stdgo._internal.compress.flate.Flate;
@:interface typedef Resetter = stdgo.StructType & {
    /**
        Reset discards any buffered data and resets the Resetter as if it was
        newly initialized with the given reader.
        
        
    **/
    @:interfacetypeffun
    public dynamic function reset(_r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
