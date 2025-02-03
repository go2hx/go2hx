package stdgo.database.sql.driver;
class RowsColumnTypeLength_static_extension {
    static public function columnTypeLength(t:stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength.RowsColumnTypeLength, _index:StdTypes.Int):stdgo.Tuple<haxe.Int64, Bool> {
        final _index = (_index : stdgo.GoInt);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength_static_extension.RowsColumnTypeLength_static_extension.columnTypeLength(t, _index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
