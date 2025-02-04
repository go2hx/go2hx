package stdgo._internal.regexp.syntax;
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        var _re = (stdgo.Go.setRef(({ op : (3 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        (@:checkr _re ?? throw "null pointer dereference").flags = _flags;
        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        for (__1 => _c in _s) {
            if ((((@:checkr _re ?? throw "null pointer dereference").rune.length) >= (@:checkr _re ?? throw "null pointer dereference").rune.capacity : Bool)) {
                (@:checkr _re ?? throw "null pointer dereference").rune = (_s : stdgo.Slice<stdgo.GoInt32>);
                break;
            };
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__(_c));
        };
        return _re;
    }
