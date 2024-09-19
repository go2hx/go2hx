package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_compiler_asInterface) class T_compiler_static_extension {
    @:keep
    static public function _rune( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _r:stdgo.Slice<stdgo.GoInt32>, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = (_c._inst((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        _f._nullable = false;
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        _i.rune = _r;
        _flags = (_flags & ((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        if (((_r.length != (1 : stdgo.GoInt)) || (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r[(0 : stdgo.GoInt)]) == _r[(0 : stdgo.GoInt)]) : Bool)) {
            _flags = (_flags & ((((1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
        };
        _i.arg = (_flags : stdgo.GoUInt32);
        _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        if ((((_flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && (((_r.length == (1 : stdgo.GoInt)) || ((_r.length) == ((2 : stdgo.GoInt)) && _r[(0 : stdgo.GoInt)] == (_r[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) : Bool)) {
            _i.op = (8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
        } else if ((((_r.length) == ((2 : stdgo.GoInt)) && _r[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (_r[(1 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
            _i.op = (9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
        } else if ((((((_r.length) == ((4 : stdgo.GoInt)) && _r[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _r[(1 : stdgo.GoInt)] == ((9 : stdgo.GoInt32)) : Bool) && _r[(2 : stdgo.GoInt)] == ((11 : stdgo.GoInt32)) : Bool) && (_r[(3 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
            _i.op = (10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _empty( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _op:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = (_c._inst((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        _c._p.inst[(_f._i : stdgo.GoInt)].arg = (_op : stdgo.GoUInt32);
        _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _plus( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        return (new stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag(_f1._i, _c._loop(_f1?.__copy__(), _nongreedy)._out?.__copy__(), _f1._nullable) : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
    }
    @:keep
    static public function _star( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        if (_f1._nullable) {
            return _c._quest(_c._plus(_f1?.__copy__(), _nongreedy)?.__copy__(), _nongreedy)?.__copy__();
        };
        return _c._loop(_f1?.__copy__(), _nongreedy)?.__copy__();
    }
    @:keep
    static public function _loop( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = (_c._inst((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList(((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))?.__copy__();
        };
        _f1._out._patch(_c._p, _f._i);
        return _f?.__copy__();
    }
    @:keep
    static public function _quest( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = (_c._inst((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList(((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))?.__copy__();
        };
        _f._out = _f._out._append(_c._p, _f1._out?.__copy__())?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _alt( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _f2:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        if (_f1._i == ((0u32 : stdgo.GoUInt32))) {
            return _f2?.__copy__();
        };
        if (_f2._i == ((0u32 : stdgo.GoUInt32))) {
            return _f1?.__copy__();
        };
        var _f = (_c._inst((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        _i.out = _f1._i;
        _i.arg = _f2._i;
        _f._out = _f1._out._append(_c._p, _f2._out?.__copy__())?.__copy__();
        _f._nullable = (_f1._nullable || _f2._nullable : Bool);
        return _f?.__copy__();
    }
    @:keep
    static public function _cat( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _f2:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        if (((_f1._i == (0u32 : stdgo.GoUInt32)) || (_f2._i == (0u32 : stdgo.GoUInt32)) : Bool)) {
            return (new stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        };
        _f1._out._patch(_c._p, _f2._i);
        return (new stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag(_f1._i, _f2._out?.__copy__(), (_f1._nullable && _f2._nullable : Bool)) : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
    }
    @:keep
    static public function _cap( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _arg:stdgo.GoUInt32):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = (_c._inst((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        _c._p.inst[(_f._i : stdgo.GoInt)].arg = _arg;
        if ((_c._p.numCap < ((_arg : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _c._p.numCap = ((_arg : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _fail( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        return (new stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
    }
    @:keep
    static public function _nop( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = (_c._inst((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        _f._out = stdgo._internal.regexp.syntax.Syntax__makePatchList._makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _inst( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _op:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        var _f = ({ _i : (_c._p.inst.length : stdgo.GoUInt32), _nullable : true } : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        _c._p.inst = (_c._p.inst.__append__(({ op : _op } : stdgo._internal.regexp.syntax.Syntax_Inst.Inst)));
        return _f?.__copy__();
    }
    @:keep
    static public function _compile( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        {
            final __value__ = _re.op;
            if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._fail()?.__copy__();
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._nop()?.__copy__();
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_re.rune.length) == ((0 : stdgo.GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag = ({} : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                for (_j => _ in _re.rune) {
                    var _f1 = (_c._rune((_re.rune.__slice__(_j, (_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>), _re.flags)?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                    if (_j == ((0 : stdgo.GoInt))) {
                        _f = _f1?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _f1?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._rune(_re.rune, _re.flags)?.__copy__();
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._rune(stdgo._internal.regexp.syntax.Syntax__anyRuneNotNL._anyRuneNotNL, (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))?.__copy__();
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._rune(stdgo._internal.regexp.syntax.Syntax__anyRune._anyRune, (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))?.__copy__();
            } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._empty((1 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))?.__copy__();
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._empty((2 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))?.__copy__();
            } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._empty((4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))?.__copy__();
            } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._empty((8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))?.__copy__();
            } else if (__value__ == ((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._empty((16 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))?.__copy__();
            } else if (__value__ == ((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._empty((32 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))?.__copy__();
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _bra = (_c._cap(((_re.cap << (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt32))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                var _sub = (_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                var _ket = (_c._cap((((_re.cap << (1i64 : stdgo.GoUInt64) : stdgo.GoInt) | (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                return _c._cat(_c._cat(_bra?.__copy__(), _sub?.__copy__())?.__copy__(), _ket?.__copy__())?.__copy__();
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._star(_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__(), (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)))?.__copy__();
            } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._plus(_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__(), (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)))?.__copy__();
            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _c._quest(_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__(), (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)))?.__copy__();
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_re.sub.length) == ((0 : stdgo.GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag = ({} : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                for (_i => _sub in _re.sub) {
                    if (_i == ((0 : stdgo.GoInt))) {
                        _f = _c._compile(_sub)?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _f:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag = ({} : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
                for (__1 => _sub in _re.sub) {
                    _f = _c._alt(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                };
                return _f?.__copy__();
            };
        };
        throw stdgo.Go.toInterface(("regexp: unhandled case in compile" : stdgo.GoString));
    }
    @:keep
    static public function _init( _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler> = _c;
        _c._p = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_Prog.Prog)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        _c._p.numCap = (2 : stdgo.GoInt);
        _c._inst((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp));
    }
}