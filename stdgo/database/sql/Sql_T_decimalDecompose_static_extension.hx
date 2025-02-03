package stdgo.database.sql;
class T_decimalDecompose_static_extension {
    static public function decompose(t:stdgo._internal.database.sql.Sql_T_decimalDecompose.T_decimalDecompose, _buf:Array<std.UInt>):stdgo.Tuple.Tuple4<std.UInt, Bool, Array<std.UInt>, StdTypes.Int> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.database.sql.Sql_T_decimalDecompose_static_extension.T_decimalDecompose_static_extension.decompose(t, _buf);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
}
