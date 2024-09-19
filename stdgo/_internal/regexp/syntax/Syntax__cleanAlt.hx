package stdgo._internal.regexp.syntax;
function _cleanAlt(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        {
            final __value__ = _re.op;
            if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                _re.rune = stdgo._internal.regexp.syntax.Syntax__cleanClass._cleanClass((stdgo.Go.setRef(_re.rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
                if ((((_re.rune.length) == ((2 : stdgo.GoInt)) && _re.rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (_re.rune[(1 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    _re.rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    _re.op = (6 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                    return;
                };
                if ((((((_re.rune.length) == ((4 : stdgo.GoInt)) && _re.rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _re.rune[(1 : stdgo.GoInt)] == ((9 : stdgo.GoInt32)) : Bool) && _re.rune[(2 : stdgo.GoInt)] == ((11 : stdgo.GoInt32)) : Bool) && (_re.rune[(3 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    _re.rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    _re.op = (5 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                    return;
                };
                if (((_re.rune.capacity - (_re.rune.length) : stdgo.GoInt) > (100 : stdgo.GoInt) : Bool)) {
                    _re.rune = ((_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...(_re.rune : Array<stdgo.GoInt32>)));
                };
            };
        };
    }
