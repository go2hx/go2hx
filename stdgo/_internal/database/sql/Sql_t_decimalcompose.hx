package stdgo._internal.database.sql;
@:interface typedef T_decimalCompose = stdgo.StructType & {
    @:interfacetypeffun
    function compose(_form:stdgo.GoUInt8, _negative:Bool, _coefficient:stdgo.Slice<stdgo.GoUInt8>, _exponent:stdgo.GoInt32):stdgo.Error;
};
