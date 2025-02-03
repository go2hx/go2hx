package stdgo.text.scanner;
class T_countReader_static_extension {
    static public function read(_r:stdgo.Pointer<T_countReader>, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_T_countReader_static_extension.T_countReader_static_extension.read(_r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
