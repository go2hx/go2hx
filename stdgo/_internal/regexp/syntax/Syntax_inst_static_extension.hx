package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__dumpinst._dumpInst((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _i);
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function matchEmptyWidth( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, _before:stdgo.GoInt32, _after:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        {
            final __value__ = ((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
            if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                return ((_before == (10 : stdgo.GoInt32)) || (_before == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                return ((_after == (10 : stdgo.GoInt32)) || (_after == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                return _before == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                return _after == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                return stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_before) != (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_after));
            } else if (__value__ == ((32 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                return stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_before) == (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_after));
            };
        };
        throw stdgo.Go.toInterface(("unknown empty width arg" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function matchRunePos( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, _r:stdgo.GoInt32):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        var _rune = (@:checkr _i ?? throw "null pointer dereference").rune;
        {
            final __value__ = (_rune.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _r0 = (_rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                if (_r == (_r0)) {
                    return (0 : stdgo.GoInt);
                };
                if ((((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    {
                        var _r1 = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r0) : stdgo.GoInt32);
                        while (_r1 != (_r0)) {
                            if (_r == (_r1)) {
                                return (0 : stdgo.GoInt);
                            };
                            _r1 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r1);
                        };
                    };
                };
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (((_r >= _rune[(0 : stdgo.GoInt)] : Bool) && (_r <= _rune[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                    return (0 : stdgo.GoInt);
                };
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (_rune.length) : Bool)) {
                        if ((_r < _rune[(_j : stdgo.GoInt)] : Bool)) {
                            return (-1 : stdgo.GoInt);
                        };
if ((_r <= _rune[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                            return (_j / (2 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                return (-1 : stdgo.GoInt);
            };
        };
        var _lo = (0 : stdgo.GoInt);
        var _hi = ((_rune.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            {
                var _c = (_rune[((2 : stdgo.GoInt) * _m : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_c <= _r : Bool)) {
                    if ((_r <= _rune[(((2 : stdgo.GoInt) * _m : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                        return _m;
                    };
                    _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _hi = _m;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function matchRune( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, _r:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        return @:check2r _i.matchRunePos(_r) != ((-1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _op( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo._internal.regexp.syntax.Syntax_instop.InstOp {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        var _op = ((@:checkr _i ?? throw "null pointer dereference").op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                _op = (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
            };
        };
        return _op;
    }
}
