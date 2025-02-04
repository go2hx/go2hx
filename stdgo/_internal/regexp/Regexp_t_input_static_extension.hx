package stdgo._internal.regexp;
@:keep class T_input_static_extension {
    @:interfacetypeffun
    static public function _context(t:stdgo._internal.regexp.Regexp_t_input.T_input, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag return t._context(_pos);
    @:interfacetypeffun
    static public function _index(t:stdgo._internal.regexp.Regexp_t_input.T_input, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return t._index(_re, _pos);
    @:interfacetypeffun
    static public function _hasPrefix(t:stdgo._internal.regexp.Regexp_t_input.T_input, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Bool return t._hasPrefix(_re);
    @:interfacetypeffun
    static public function _canCheckPrefix(t:stdgo._internal.regexp.Regexp_t_input.T_input):Bool return t._canCheckPrefix();
    @:interfacetypeffun
    static public function _step(t:stdgo._internal.regexp.Regexp_t_input.T_input, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return t._step(_pos);
}
