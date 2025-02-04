package stdgo._internal.regexp.syntax;
function _cleanAlt(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                (@:checkr _re ?? throw "null pointer dereference").rune = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _re ?? throw "null pointer dereference").rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
                if (((((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((2 : stdgo.GoInt)) && (@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").rune[(1 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    (@:checkr _re ?? throw "null pointer dereference").rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    (@:checkr _re ?? throw "null pointer dereference").op = (6 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                    return;
                };
                if (((((((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((4 : stdgo.GoInt)) && (@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (@:checkr _re ?? throw "null pointer dereference").rune[(1 : stdgo.GoInt)] == ((9 : stdgo.GoInt32)) : Bool) && (@:checkr _re ?? throw "null pointer dereference").rune[(2 : stdgo.GoInt)] == ((11 : stdgo.GoInt32)) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").rune[(3 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    (@:checkr _re ?? throw "null pointer dereference").rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    (@:checkr _re ?? throw "null pointer dereference").op = (5 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                    return;
                };
                if ((((@:checkr _re ?? throw "null pointer dereference").rune.capacity - ((@:checkr _re ?? throw "null pointer dereference").rune.length) : stdgo.GoInt) > (100 : stdgo.GoInt) : Bool)) {
                    (@:checkr _re ?? throw "null pointer dereference").rune = (((@:checkr _re ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...((@:checkr _re ?? throw "null pointer dereference").rune : Array<stdgo.GoInt32>)));
                };
            };
        };
    }
