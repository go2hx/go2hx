package stdgo.text.scanner;
class T_errReader_static_extension {
    static public function read(_:T_errReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_T_errReader_static_extension.T_errReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
