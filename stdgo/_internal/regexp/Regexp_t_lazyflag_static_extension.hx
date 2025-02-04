package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface) class T_lazyFlag_static_extension {
    @:keep
    @:tdfield
    static public function _match( _f:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag, _op:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp):Bool {
        @:recv var _f:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = _f;
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            return true;
        };
        var _r1 = ((_f >> (32i64 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag) : stdgo.GoInt32);
        if ((_op & (1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            if (((_r1 != (10 : stdgo.GoInt32)) && (_r1 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
            _op = (_op & ((((1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        if ((_op & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            if ((_r1 >= (0 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            _op = (_op & ((((4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            return true;
        };
        var _r2 = (_f : stdgo.GoInt32);
        if ((_op & (2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            if (((_r2 != (10 : stdgo.GoInt32)) && (_r2 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
            _op = (_op & ((((2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        if ((_op & (8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            if ((_r2 >= (0 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            _op = (_op & ((((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            return true;
        };
        if (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r1) != (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r2))) {
            _op = (_op & ((((16 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        } else {
            _op = (_op & ((((32 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i32 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        return _op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp));
    }
}
