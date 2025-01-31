package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> {
        var _re = (stdgo.Go.setRef(({ op : (3 : stdgo._internal.regexp.syntax.Syntax_Op.Op) } : stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
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
