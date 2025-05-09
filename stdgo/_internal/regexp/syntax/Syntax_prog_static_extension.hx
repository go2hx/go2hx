package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    @:keep
    @:tdfield
    static public function startCond( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var loopBreak = false;
        var _i_44:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _pc_43:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _flag_42:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _pc_43 = ((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32);
                    _i_44 = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc_43 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3462691i64;
                } else if (__value__ == (3462691i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3462698i64;
                } else if (__value__ == (3462698i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3462702i64;
                    } else {
                        _gotoNext = 3462912i64;
                    };
                } else if (__value__ == (3462702i64)) {
                    _gotoNext = 3462706i64;
                } else if (__value__ == (3462706i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L175"
                    {
                        final __value__ = (@:checkr _i_44 ?? throw "null pointer dereference").op;
                        if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3462722i64;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3462771i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3462810i64;
                        } else {
                            _gotoNext = 3462850i64;
                        };
                    };
                } else if (__value__ == (3462722i64)) {
                    _flag_42 = (_flag_42 | (((@:checkr _i_44 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
                    _gotoNext = 3462879i64;
                } else if (__value__ == (3462771i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L179"
                    return (255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
                    _gotoNext = 3462879i64;
                } else if (__value__ == (3462810i64)) {
                    _gotoNext = 3462879i64;
                } else if (__value__ == (3462850i64)) {
                    loopBreak = true;
                    _gotoNext = 3462698i64;
                } else if (__value__ == (3462879i64)) {
                    _pc_43 = (@:checkr _i_44 ?? throw "null pointer dereference").out;
                    _i_44 = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc_43 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3462698i64;
                } else if (__value__ == (3462912i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L188"
                    return _flag_42;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function prefix( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        var _i = _p._skipNop(((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L154"
        if (((_i._op() != (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw "null pointer dereference").rune.length != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L155"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L160"
        while ((((_i._op() == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) && ((@:checkr _i ?? throw "null pointer dereference").rune.length) == ((1 : stdgo.GoInt)) : Bool) && (((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && ((@:checkr _i ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L161"
            _buf.writeRune((@:checkr _i ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]);
            _i = _p._skipNop((@:checkr _i ?? throw "null pointer dereference").out);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L164"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _skipNop( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L131"
        while ((((@:checkr _i ?? throw "null pointer dereference").op == (6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw "null pointer dereference").op == (2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
            _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[((@:checkr _i ?? throw "null pointer dereference").out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L134"
        return _i;
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L124"
        stdgo._internal.regexp.syntax.Syntax__dumpprog._dumpProg((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _p);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L125"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}
