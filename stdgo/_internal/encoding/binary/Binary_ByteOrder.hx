package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:interface typedef ByteOrder = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function uint16(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function uint32(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function uint64(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function putUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function putUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function putUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
