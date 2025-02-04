package stdgo._internal.regexp.syntax;
function _mergeCharClass(_dst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _src:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _dst ?? throw "null pointer dereference").op;
                    if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if (stdgo._internal.regexp.syntax.Syntax__matchrune._matchRune(_src, (10 : stdgo.GoInt32))) {
                            (@:checkr _dst ?? throw "null pointer dereference").op = (6 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if ((@:checkr _src ?? throw "null pointer dereference").op == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                            (@:checkr _dst ?? throw "null pointer dereference").rune = stdgo._internal.regexp.syntax.Syntax__appendliteral._appendLiteral((@:checkr _dst ?? throw "null pointer dereference").rune, (@:checkr _src ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], (@:checkr _src ?? throw "null pointer dereference").flags);
                        } else {
                            (@:checkr _dst ?? throw "null pointer dereference").rune = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass((@:checkr _dst ?? throw "null pointer dereference").rune, (@:checkr _src ?? throw "null pointer dereference").rune);
                        };
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if ((((@:checkr _src ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == (@:checkr _dst ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]) && ((@:checkr _src ?? throw "null pointer dereference").flags == (@:checkr _dst ?? throw "null pointer dereference").flags) : Bool)) {
                            break;
                        };
                        (@:checkr _dst ?? throw "null pointer dereference").op = (4 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        (@:checkr _dst ?? throw "null pointer dereference").rune = stdgo._internal.regexp.syntax.Syntax__appendliteral._appendLiteral(((@:checkr _dst ?? throw "null pointer dereference").rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>), (@:checkr _dst ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], (@:checkr _dst ?? throw "null pointer dereference").flags);
                        (@:checkr _dst ?? throw "null pointer dereference").rune = stdgo._internal.regexp.syntax.Syntax__appendliteral._appendLiteral((@:checkr _dst ?? throw "null pointer dereference").rune, (@:checkr _src ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)], (@:checkr _src ?? throw "null pointer dereference").flags);
                        break;
                    };
                };
                break;
            };
        };
    }
