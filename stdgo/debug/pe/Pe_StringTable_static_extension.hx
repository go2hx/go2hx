package stdgo.debug.pe;
class StringTable_static_extension {
    static public function string(_st:StringTable, _start:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _start = (_start : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.debug.pe.Pe_StringTable_static_extension.StringTable_static_extension.string(_st, _start);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
