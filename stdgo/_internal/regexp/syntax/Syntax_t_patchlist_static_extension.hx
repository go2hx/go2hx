package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
    @:keep
    @:tdfield
    static public function _append( _l1:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _l2:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList):stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList {
        @:recv var _l1:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList = _l1?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L42"
        if (_l1._head == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L43"
            return _l2?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L45"
        if (_l2._head == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L46"
            return _l1?.__copy__();
        };
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[((_l1._tail >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L50"
        if ((_l1._tail & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            (@:checkr _i ?? throw "null pointer dereference").out = _l2._head;
        } else {
            (@:checkr _i ?? throw "null pointer dereference").arg = _l2._head;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L55"
        return (new stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList(_l1._head, _l2._tail) : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList);
    }
    @:keep
    @:tdfield
    static public function _patch( _l:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _val:stdgo.GoUInt32):Void {
        @:recv var _l:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList = _l?.__copy__();
        var _head = (_l._head : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L29"
        while (_head != ((0u32 : stdgo.GoUInt32))) {
            var _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[((_head >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L31"
            if ((_head & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                _head = (@:checkr _i ?? throw "null pointer dereference").out;
                (@:checkr _i ?? throw "null pointer dereference").out = _val;
            } else {
                _head = (@:checkr _i ?? throw "null pointer dereference").arg;
                (@:checkr _i ?? throw "null pointer dereference").arg = _val;
            };
        };
    }
}
