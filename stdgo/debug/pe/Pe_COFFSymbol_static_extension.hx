package stdgo.debug.pe;
class COFFSymbol_static_extension {
    static public function fullName(_sym:COFFSymbol, _st:StringTable):stdgo.Tuple<String, stdgo.Error> {
        final _sym = (_sym : stdgo.Ref<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>);
        return {
            final obj = stdgo._internal.debug.pe.Pe_COFFSymbol_static_extension.COFFSymbol_static_extension.fullName(_sym, _st);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
