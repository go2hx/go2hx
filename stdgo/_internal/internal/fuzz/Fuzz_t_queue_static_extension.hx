package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_queue_asInterface) class T_queue_static_extension {
    @:keep
    @:tdfield
    static public function _clear( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        {
            var __tmp__ = (new stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue() : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue);
            var x = (_q : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue);
            x._elems = __tmp__?._elems;
            x._head = __tmp__?._head;
            x._len = __tmp__?._len;
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        if ((@:checkr _q ?? throw "null pointer dereference")._len == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        return { _0 : (@:checkr _q ?? throw "null pointer dereference")._elems[((@:checkr _q ?? throw "null pointer dereference")._head : stdgo.GoInt)], _1 : true };
    }
    @:keep
    @:tdfield
    static public function _dequeue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        if ((@:checkr _q ?? throw "null pointer dereference")._len == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        var _e = ((@:checkr _q ?? throw "null pointer dereference")._elems[((@:checkr _q ?? throw "null pointer dereference")._head : stdgo.GoInt)] : stdgo.AnyInterface);
        (@:checkr _q ?? throw "null pointer dereference")._elems[((@:checkr _q ?? throw "null pointer dereference")._head : stdgo.GoInt)] = (null : stdgo.AnyInterface);
        (@:checkr _q ?? throw "null pointer dereference")._head = ((((@:checkr _q ?? throw "null pointer dereference")._head + (1 : stdgo.GoInt) : stdgo.GoInt)) % @:check2r _q._cap() : stdgo.GoInt);
        (@:checkr _q ?? throw "null pointer dereference")._len--;
        return { _0 : _e, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _enqueue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>, _e:stdgo.AnyInterface):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        if ((((@:checkr _q ?? throw "null pointer dereference")._len + (1 : stdgo.GoInt) : stdgo.GoInt) > @:check2r _q._cap() : Bool)) {
            @:check2r _q._grow();
        };
        var _i = ((((@:checkr _q ?? throw "null pointer dereference")._head + (@:checkr _q ?? throw "null pointer dereference")._len : stdgo.GoInt)) % @:check2r _q._cap() : stdgo.GoInt);
        (@:checkr _q ?? throw "null pointer dereference")._elems[(_i : stdgo.GoInt)] = _e;
        (@:checkr _q ?? throw "null pointer dereference")._len++;
    }
    @:keep
    @:tdfield
    static public function _grow( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        var _oldCap = (@:check2r _q._cap() : stdgo.GoInt);
        var _newCap = (_oldCap * (2 : stdgo.GoInt) : stdgo.GoInt);
        if (_newCap == ((0 : stdgo.GoInt))) {
            _newCap = (8 : stdgo.GoInt);
        };
        var _newElems = (new stdgo.Slice<stdgo.AnyInterface>((_newCap : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        var _oldLen = ((@:checkr _q ?? throw "null pointer dereference")._len : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _oldLen : Bool)) {
                _newElems[(_i : stdgo.GoInt)] = (@:checkr _q ?? throw "null pointer dereference")._elems[((((@:checkr _q ?? throw "null pointer dereference")._head + _i : stdgo.GoInt)) % _oldCap : stdgo.GoInt)];
                _i++;
            };
        };
        (@:checkr _q ?? throw "null pointer dereference")._elems = _newElems;
        (@:checkr _q ?? throw "null pointer dereference")._head = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _cap( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):stdgo.GoInt {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        return ((@:checkr _q ?? throw "null pointer dereference")._elems.length);
    }
}
