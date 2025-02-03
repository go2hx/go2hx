package stdgo.encoding.csv;
class Writer_static_extension {
    static public function _fieldNeedsQuotes(_w:Writer, _field:String):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
        final _field = (_field : stdgo.GoString);
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension._fieldNeedsQuotes(_w, _field);
    }
    static public function writeAll(_w:Writer, _records:Array<Array<String>>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
        final _records = ([for (i in _records) ([for (i in i) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>)] : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.writeAll(_w, _records);
    }
    static public function error(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.error(_w);
    }
    static public function flush(_w:Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
        stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function write(_w:Writer, _record:Array<String>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
        final _record = ([for (i in _record) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.write(_w, _record);
    }
}
