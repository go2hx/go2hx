package stdgo._internal.regexp.syntax;
function emptyOpContext(_r1:stdgo.GoInt32, _r2:stdgo.GoInt32):stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp {
        var _op:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = (32 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _boundary:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r1)) {
            _boundary = (1 : stdgo.GoUInt8);
        } else if (_r1 == ((10 : stdgo.GoInt32))) {
            _op = (_op | ((1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        } else if ((_r1 < (0 : stdgo.GoInt32) : Bool)) {
            _op = (_op | ((5 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        if (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r2)) {
            _boundary = (_boundary ^ ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else if (_r2 == ((10 : stdgo.GoInt32))) {
            _op = (_op | ((2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        } else if ((_r2 < (0 : stdgo.GoInt32) : Bool)) {
            _op = (_op | ((10 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        if (_boundary != ((0 : stdgo.GoUInt8))) {
            _op = (_op ^ ((48 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        return _op;
    }
