package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:interface typedef Resetter = stdgo.StructType & {
    /**
        Reset discards any buffered data and resets the Resetter as if it was
        newly initialized with the given reader.
        
        
    **/
    @:interfacetypeffun
    public dynamic function reset(_r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
