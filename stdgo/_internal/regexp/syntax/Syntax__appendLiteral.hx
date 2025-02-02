package stdgo._internal.regexp.syntax;
function _appendLiteral(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):stdgo.Slice<stdgo.GoInt32> {
        if ((_flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
            return stdgo._internal.regexp.syntax.Syntax__appendFoldedRange._appendFoldedRange(_r, _x, _x);
        };
        return stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _x, _x);
    }
