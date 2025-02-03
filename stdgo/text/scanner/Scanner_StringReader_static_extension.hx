package stdgo.text.scanner;
class StringReader_static_extension {
    static public function read(_r:StringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.text.scanner.Scanner_StringReader.StringReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_StringReader_static_extension.StringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
