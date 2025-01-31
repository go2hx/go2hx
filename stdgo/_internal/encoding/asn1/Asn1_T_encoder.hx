package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:interface typedef T_encoder = stdgo.StructType & {
    /**
        Len returns the number of bytes needed to marshal this element.
        
        
    **/
    @:interfacetypeffun
    public dynamic function len():stdgo.GoInt;
    /**
        Encode encodes this element by writing Len() bytes to dst.
        
        
    **/
    @:interfacetypeffun
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoUInt8>):Void;
};
