package stdgo.mime.quotedprintable;
class Reader_static_extension {
    static public function read(_r:Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.quotedprintable.Quotedprintable_Reader_static_extension.Reader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
