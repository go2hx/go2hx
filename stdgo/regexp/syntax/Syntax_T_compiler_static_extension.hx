package stdgo.regexp.syntax;
class T_compiler_static_extension {
    static public function _rune(_c:T_compiler, _r:Array<StdTypes.Int>, _flags:Flags):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._rune(_c, _r, _flags);
    }
    static public function _empty(_c:T_compiler, _op:EmptyOp):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._empty(_c, _op);
    }
    static public function _plus(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._plus(_c, _f1, _nongreedy);
    }
    static public function _star(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._star(_c, _f1, _nongreedy);
    }
    static public function _loop(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._loop(_c, _f1, _nongreedy);
    }
    static public function _quest(_c:T_compiler, _f1:T_frag, _nongreedy:Bool):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._quest(_c, _f1, _nongreedy);
    }
    static public function _alt(_c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._alt(_c, _f1, _f2);
    }
    static public function _cat(_c:T_compiler, _f1:T_frag, _f2:T_frag):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._cat(_c, _f1, _f2);
    }
    static public function _cap(_c:T_compiler, _arg:std.UInt):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        final _arg = (_arg : stdgo.GoUInt32);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._cap(_c, _arg);
    }
    static public function _fail(_c:T_compiler):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._fail(_c);
    }
    static public function _nop(_c:T_compiler):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._nop(_c);
    }
    static public function _inst(_c:T_compiler, _op:InstOp):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._inst(_c, _op);
    }
    static public function _compile(_c:T_compiler, _re:Regexp):T_frag {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._compile(_c, _re);
    }
    static public function _init(_c:T_compiler):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>);
        stdgo._internal.regexp.syntax.Syntax_T_compiler_static_extension.T_compiler_static_extension._init(_c);
    }
}
