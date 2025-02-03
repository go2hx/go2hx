package stdgo.encoding.csv;
class Reader_static_extension {
    static public function _readRecord(_r:Reader, _dst:Array<String>):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
        final _dst = ([for (i in _dst) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension._readRecord(_r, _dst);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readLine(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension._readLine(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readAll(_r:Reader):stdgo.Tuple<Array<Array<String>>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.readAll(_r);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function inputOffset(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
        return stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.inputOffset(_r);
    }
    static public function fieldPos(_r:Reader, _field:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
        final _field = (_field : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.fieldPos(_r, _field);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.read(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
