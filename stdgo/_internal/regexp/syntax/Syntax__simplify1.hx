package stdgo._internal.regexp.syntax;
function _simplify1(_op:stdgo._internal.regexp.syntax.Syntax_op.Op, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags, _sub:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L137"
        if ((@:checkr _sub ?? throw "null pointer dereference").op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L138"
            return _sub;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L141"
        if (((_op == (@:checkr _sub ?? throw "null pointer dereference").op) && ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((@:checkr _sub ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L142"
            return _sub;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L144"
        if ((((({
            final value = _re;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr _re ?? throw "null pointer dereference").op == (_op) : Bool) && ((@:checkr _re ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && (_sub == (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L145"
            return _re;
        };
        _re = (stdgo.Go.setRef(({ op : _op, flags : _flags } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        (@:checkr _re ?? throw "null pointer dereference").sub = (((@:checkr _re ?? throw "null pointer dereference").sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_sub) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify.go#L150"
        return _re;
    }
