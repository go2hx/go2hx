package stdgo._internal.regexp.syntax;
function _simplify1(_op:stdgo._internal.regexp.syntax.Syntax_Op.Op, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags, _sub:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        if (_sub.op == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return _sub;
        };
        if (((_op == _sub.op) && ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == (_sub.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool)) {
            return _sub;
        };
        if (((((_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) && _re.op == (_op) : Bool) && (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && (_sub == _re.sub[(0 : stdgo.GoInt)]) : Bool)) {
            return _re;
        };
        _re = (stdgo.Go.setRef(({ op : _op, flags : _flags } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        _re.sub = ((_re.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>).__append__(_sub));
        return _re;
    }
