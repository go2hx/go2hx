package stdgo._internal.database.sql.driver;
@:interface typedef T_decimalDecompose = stdgo.StructType & {
    @:interfacetypeffun
    function decompose(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.GoInt32; };
};
