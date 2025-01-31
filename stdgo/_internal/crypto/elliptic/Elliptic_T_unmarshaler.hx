package stdgo._internal.crypto.elliptic;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:interface typedef T_unmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unmarshal(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unmarshalCompressed(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
};
