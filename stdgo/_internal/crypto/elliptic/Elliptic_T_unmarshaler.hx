package stdgo._internal.crypto.elliptic;
typedef T_unmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshal(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
    /**
        
        
        
    **/
    public dynamic function unmarshalCompressed(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
};
