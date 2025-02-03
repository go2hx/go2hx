package stdgo.regexp;
class T_inputReader_static_extension {
    static public function _context(_i:T_inputReader, _pos:StdTypes.Int):T_lazyFlag {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._context(_i, _pos);
    }
    static public function _index(_i:T_inputReader, _re:Regexp_, _pos:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._index(_i, _re, _pos);
    }
    static public function _hasPrefix(_i:T_inputReader, _re:Regexp_):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._hasPrefix(_i, _re);
    }
    static public function _canCheckPrefix(_i:T_inputReader):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>);
        return stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._canCheckPrefix(_i);
    }
    static public function _step(_i:T_inputReader, _pos:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>);
        final _pos = (_pos : stdgo.GoInt);
        return {
            final obj = stdgo._internal.regexp.Regexp_T_inputReader_static_extension.T_inputReader_static_extension._step(_i, _pos);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
