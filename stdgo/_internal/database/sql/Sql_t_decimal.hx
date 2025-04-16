package stdgo._internal.database.sql;
@:interface typedef T_decimal = stdgo.StructType & {
    public dynamic function decompose(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.GoInt32; };
    public dynamic function compose(_0:stdgo.GoUInt8, _1:Bool, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.GoInt32):stdgo.Error;
};
