package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:interface typedef T_reader = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function peek(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
