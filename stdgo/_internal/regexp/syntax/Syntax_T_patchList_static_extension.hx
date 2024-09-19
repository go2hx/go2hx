package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
    @:keep
    static public function _append( _l1:stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>, _l2:stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList):stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList {
        @:recv var _l1:stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList = _l1?.__copy__();
        if (_l1._head == ((0u32 : stdgo.GoUInt32))) {
            return _l2?.__copy__();
        };
        if (_l2._head == ((0u32 : stdgo.GoUInt32))) {
            return _l1?.__copy__();
        };
        var _i = (stdgo.Go.setRef(_p.inst[((_l1._tail >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        if ((_l1._tail & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _i.out = _l2._head;
        } else {
            _i.arg = _l2._head;
        };
        return (new stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList(_l1._head, _l2._tail) : stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList);
    }
    @:keep
    static public function _patch( _l:stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>, _val:stdgo.GoUInt32):Void {
        @:recv var _l:stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList = _l?.__copy__();
        var _head = (_l._head : stdgo.GoUInt32);
        while (_head != ((0u32 : stdgo.GoUInt32))) {
            var _i = (stdgo.Go.setRef(_p.inst[((_head >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
            if ((_head & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                _head = _i.out;
                _i.out = _val;
            } else {
                _head = _i.arg;
                _i.arg = _val;
            };
        };
    }
}
