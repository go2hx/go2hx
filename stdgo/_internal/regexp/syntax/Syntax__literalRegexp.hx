package stdgo._internal.regexp.syntax;
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        var _re = (stdgo.Go.setRef(({ op : (3 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        _re.flags = _flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        for (__1 => _c in _s) {
            if (((_re.rune.length) >= _re.rune.capacity : Bool)) {
                _re.rune = (_s : stdgo.Slice<stdgo.GoInt32>);
                break;
            };
            _re.rune = (_re.rune.__append__(_c));
        };
        return _re;
    }
