package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
@:interface typedef T_nistPoint<T_> = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function bytesX():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setBytes(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarMult(_0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarBaseMult(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
};
