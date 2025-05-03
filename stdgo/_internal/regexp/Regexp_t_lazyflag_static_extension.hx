package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface) class T_lazyFlag_static_extension {
    @:keep
    @:tdfield
    static public function _match( _f:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag, _op:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp):Bool {
        @:recv var _f:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = _f;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L129"
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L130"
            return true;
        };
        var _r1 = ((_f >> (32i64 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L133"
        if ((_op & (1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L134"
            if (((_r1 != (10 : stdgo.GoInt32)) && (_r1 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L135"
                return false;
            };
            _op = (_op & ((((1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L139"
        if ((_op & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L140"
            if ((_r1 >= (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L141"
                return false;
            };
            _op = (_op & ((((4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L145"
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L146"
            return true;
        };
        var _r2 = (_f : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L149"
        if ((_op & (2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L150"
            if (((_r2 != (10 : stdgo.GoInt32)) && (_r2 >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L151"
                return false;
            };
            _op = (_op & ((((2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L155"
        if ((_op & (8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L156"
            if ((_r2 >= (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L157"
                return false;
            };
            _op = (_op & ((((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L161"
        if (_op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L162"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L164"
        if (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r1) != (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_r2))) {
            _op = (_op & ((((16 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        } else {
            _op = (_op & ((((32 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec.go#L169"
        return _op == ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp));
    }
}
