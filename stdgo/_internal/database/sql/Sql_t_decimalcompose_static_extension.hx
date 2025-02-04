package stdgo._internal.database.sql;
@:keep class T_decimalCompose_static_extension {
    @:interfacetypeffun
    static public function compose(t:stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose, _form:stdgo.GoUInt8, _negative:Bool, _coefficient:stdgo.Slice<stdgo.GoUInt8>, _exponent:stdgo.GoInt32):stdgo.Error return t.compose(_form, _negative, _coefficient, _exponent);
}
