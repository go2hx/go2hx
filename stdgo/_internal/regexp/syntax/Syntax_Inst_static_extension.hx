package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
    @:keep
    static public function string( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = _i;
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__dumpInst._dumpInst((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), _i);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function matchEmptyWidth( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>, _before:stdgo.GoInt32, _after:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = _i;
        {
            final __value__ = (_i.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
            if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                return ((_before == (10 : stdgo.GoInt32)) || (_before == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                return ((_after == (10 : stdgo.GoInt32)) || (_after == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                return _before == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                return _after == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                return stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_before) != (stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_after));
            } else if (__value__ == ((32 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                return stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_before) == (stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_after));
            };
        };
        throw stdgo.Go.toInterface(("unknown empty width arg" : stdgo.GoString));
    }
    @:keep
    static public function matchRunePos( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>, _r:stdgo.GoInt32):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = _i;
        var _rune = _i.rune;
        {
            final __value__ = (_rune.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _r0 = (_rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                if (_r == (_r0)) {
                    return (0 : stdgo.GoInt);
                };
                if (((_i.arg : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                    {
                        var _r1 = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r0) : stdgo.GoInt32);
                        stdgo.Go.cfor(_r1 != (_r0), _r1 = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r1), {
                            if (_r == (_r1)) {
                                return (0 : stdgo.GoInt);
                            };
                        });
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
                    stdgo.Go.cfor((_j < (_rune.length) : Bool), _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        if ((_r < _rune[(_j : stdgo.GoInt)] : Bool)) {
                            return (-1 : stdgo.GoInt);
                        };
                        if ((_r <= _rune[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                            return (_j / (2 : stdgo.GoInt) : stdgo.GoInt);
                        };
                    });
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
    static public function matchRune( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>, _r:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = _i;
        return _i.matchRunePos(_r) != ((-1 : stdgo.GoInt));
    }
    @:keep
    static public function _op( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>):stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = _i;
        var _op = (_i.op : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                _op = (7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
            };
        };
        return _op;
    }
}