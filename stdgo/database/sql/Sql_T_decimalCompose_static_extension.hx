package stdgo.database.sql;
class T_decimalCompose_static_extension {
    static public function compose(t:stdgo._internal.database.sql.Sql_T_decimalCompose.T_decimalCompose, _form:std.UInt, _negative:Bool, _coefficient:Array<std.UInt>, _exponent:StdTypes.Int):stdgo.Error {
        final _form = (_form : stdgo.GoUInt8);
        final _coefficient = ([for (i in _coefficient) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _exponent = (_exponent : stdgo.GoInt32);
        return stdgo._internal.database.sql.Sql_T_decimalCompose_static_extension.T_decimalCompose_static_extension.compose(t, _form, _negative, _coefficient, _exponent);
    }
}
