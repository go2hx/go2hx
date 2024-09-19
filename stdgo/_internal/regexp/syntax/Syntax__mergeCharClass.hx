package stdgo._internal.regexp.syntax;
function _mergeCharClass(_dst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _src:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dst.op;
                    if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if (stdgo._internal.regexp.syntax.Syntax__matchRune._matchRune(_src, (10 : stdgo.GoInt32))) {
                            _dst.op = (6 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if (_src.op == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                            _dst.rune = stdgo._internal.regexp.syntax.Syntax__appendLiteral._appendLiteral(_dst.rune, _src.rune[(0 : stdgo.GoInt)], _src.flags);
                        } else {
                            _dst.rune = stdgo._internal.regexp.syntax.Syntax__appendClass._appendClass(_dst.rune, _src.rune);
                        };
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if (((_src.rune[(0 : stdgo.GoInt)] == _dst.rune[(0 : stdgo.GoInt)]) && (_src.flags == _dst.flags) : Bool)) {
                            break;
                        };
                        _dst.op = (4 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _dst.rune = stdgo._internal.regexp.syntax.Syntax__appendLiteral._appendLiteral((_dst.rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>), _dst.rune[(0 : stdgo.GoInt)], _dst.flags);
                        _dst.rune = stdgo._internal.regexp.syntax.Syntax__appendLiteral._appendLiteral(_dst.rune, _src.rune[(0 : stdgo.GoInt)], _src.flags);
                        break;
                    };
                };
                break;
            };
        };
    }
