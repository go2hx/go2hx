package stdgo.regexp;
class T_bitState_static_extension {
    static public function _push(_b:T_bitState, _re:Regexp_, _pc:std.UInt, _pos:StdTypes.Int, _arg:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension._push(_b, _re, _pc, _pos, _arg);
    }
    static public function _shouldVisit(_b:T_bitState, _pc:std.UInt, _pos:StdTypes.Int):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension._shouldVisit(_b, _pc, _pos);
    }
    static public function _reset(_b:T_bitState, _prog:Prog, _end:StdTypes.Int, _ncap:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        final _prog = (_prog : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        final _end = (_end : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        stdgo._internal.regexp.Regexp_T_bitState_static_extension.T_bitState_static_extension._reset(_b, _prog, _end, _ncap);
    }
}
