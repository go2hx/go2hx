package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function emptyOpContext(_r1:stdgo.GoInt32, _r2:stdgo.GoInt32):stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp {
        var _op:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = (32 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _boundary:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r1)) {
            _boundary = (1 : stdgo.GoUInt8);
        } else if (_r1 == ((10 : stdgo.GoInt32))) {
            _op = (_op | ((1 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        } else if ((_r1 < (0 : stdgo.GoInt32) : Bool)) {
            _op = (_op | ((5 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        if (stdgo._internal.regexp.syntax.Syntax_isWordChar.isWordChar(_r2)) {
            _boundary = (_boundary ^ ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else if (_r2 == ((10 : stdgo.GoInt32))) {
            _op = (_op | ((2 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        } else if ((_r2 < (0 : stdgo.GoInt32) : Bool)) {
            _op = (_op | ((10 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        if (_boundary != ((0 : stdgo.GoUInt8))) {
            _op = (_op ^ ((48 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        };
        return _op;
    }
