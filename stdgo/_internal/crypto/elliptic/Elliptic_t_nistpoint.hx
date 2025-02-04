package stdgo._internal.crypto.elliptic;
@:interface typedef T_nistPoint<T_> = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setBytes(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function add(_0:Dynamic, _1:Dynamic):Dynamic;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function double(_0:Dynamic):Dynamic;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarMult(_0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarBaseMult(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
};
