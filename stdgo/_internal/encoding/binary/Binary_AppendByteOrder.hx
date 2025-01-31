package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:interface typedef AppendByteOrder = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function appendUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function appendUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function appendUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
