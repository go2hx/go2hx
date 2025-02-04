package stdgo._internal.regexp.syntax;
function _appendLiteral(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):stdgo.Slice<stdgo.GoInt32> {
        if ((_flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            return stdgo._internal.regexp.syntax.Syntax__appendfoldedrange._appendFoldedRange(_r, _x, _x);
        };
        return stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _x, _x);
    }
