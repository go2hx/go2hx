package stdgo.debug.pe;
class SectionHeader32_static_extension {
    static public function _fullName(_sh:SectionHeader32, _st:StringTable):stdgo.Tuple<String, stdgo.Error> {
        final _sh = (_sh : stdgo.Ref<stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32>);
        return {
            final obj = stdgo._internal.debug.pe.Pe_SectionHeader32_static_extension.SectionHeader32_static_extension._fullName(_sh, _st);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
