package stdgo.encoding.gob;
class GobEncoder_static_extension {
    static public function gobEncode(t:stdgo._internal.encoding.gob.Gob_GobEncoder.GobEncoder):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_GobEncoder_static_extension.GobEncoder_static_extension.gobEncode(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
