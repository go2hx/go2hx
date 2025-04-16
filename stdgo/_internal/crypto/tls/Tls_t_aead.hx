package stdgo._internal.crypto.tls;
@:interface typedef T_aead = stdgo.StructType & {
    public dynamic function nonceSize():stdgo.GoInt;
    public dynamic function open(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    public dynamic function overhead():stdgo.GoInt;
    public dynamic function seal(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
};
