package stdgo.regexp;
class T_input_static_extension {
    static public function _context(t:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:StdTypes.Int):T_lazyFlag {
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._context(t, _pos);
    }
    static public function _index(t:stdgo._internal.regexp.Regexp_T_input.T_input, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._index(t, _re, _pos);
    }
    static public function _hasPrefix(t:stdgo._internal.regexp.Regexp_T_input.T_input, _re:Regexp_):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._hasPrefix(t, _re);
    }
    static public function _canCheckPrefix(t:stdgo._internal.regexp.Regexp_T_input.T_input):Bool {
        return stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._canCheckPrefix(t);
    }
    static public function _step(t:stdgo._internal.regexp.Regexp_T_input.T_input, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _pos = (_pos : stdgo.GoInt);
        return {
            final obj = stdgo._internal.regexp.Regexp_T_input_static_extension.T_input_static_extension._step(t, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
