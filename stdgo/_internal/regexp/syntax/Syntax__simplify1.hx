package stdgo._internal.regexp.syntax;
function _simplify1(_op:stdgo._internal.regexp.syntax.Syntax_Op.Op, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags, _sub:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        if ((@:checkr _sub ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return _sub;
        };
        if (((_op == (@:checkr _sub ?? throw "null pointer dereference").op) && ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((@:checkr _sub ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool)) {
            return _sub;
        };
        if (((((_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) && (@:checkr _re ?? throw "null pointer dereference").op == (_op) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && (_sub == (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
            return _re;
        };
        _re = (stdgo.Go.setRef(({ op : _op, flags : _flags } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        (@:checkr _re ?? throw "null pointer dereference").sub = (((@:checkr _re ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_sub));
        return _re;
    }
