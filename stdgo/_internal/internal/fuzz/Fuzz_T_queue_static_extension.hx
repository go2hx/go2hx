package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_queue_asInterface) class T_queue_static_extension {
    @:keep
    static public function _clear( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue> = _q;
        {
            var __tmp__ = (new stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue() : stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue);
            (_q : stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue)._elems = __tmp__._elems;
            (_q : stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue)._head = __tmp__._head;
            (_q : stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue)._len = __tmp__._len;
        };
    }
    @:keep
    static public function _peek( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue> = _q;
        if (_q._len == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        return { _0 : _q._elems[(_q._head : stdgo.GoInt)], _1 : true };
    }
    @:keep
    static public function _dequeue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue> = _q;
        if (_q._len == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        var _e = (_q._elems[(_q._head : stdgo.GoInt)] : stdgo.AnyInterface);
        _q._elems[(_q._head : stdgo.GoInt)] = (null : stdgo.AnyInterface);
        _q._head = (((_q._head + (1 : stdgo.GoInt) : stdgo.GoInt)) % _q._cap() : stdgo.GoInt);
        _q._len--;
        return { _0 : _e, _1 : true };
    }
    @:keep
    static public function _enqueue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>, _e:stdgo.AnyInterface):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue> = _q;
        if (((_q._len + (1 : stdgo.GoInt) : stdgo.GoInt) > _q._cap() : Bool)) {
            _q._grow();
        };
        var _i = (((_q._head + _q._len : stdgo.GoInt)) % _q._cap() : stdgo.GoInt);
        _q._elems[(_i : stdgo.GoInt)] = _e;
        _q._len++;
    }
    @:keep
    static public function _grow( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue> = _q;
        var _oldCap = (_q._cap() : stdgo.GoInt);
        var _newCap = (_oldCap * (2 : stdgo.GoInt) : stdgo.GoInt);
        if (_newCap == ((0 : stdgo.GoInt))) {
            _newCap = (8 : stdgo.GoInt);
        };
        var _newElems = (new stdgo.Slice<stdgo.AnyInterface>((_newCap : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        var _oldLen = (_q._len : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _oldLen : Bool), _i++, {
                _newElems[(_i : stdgo.GoInt)] = _q._elems[(((_q._head + _i : stdgo.GoInt)) % _oldCap : stdgo.GoInt)];
            });
        };
        _q._elems = _newElems;
        _q._head = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _cap( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>):stdgo.GoInt {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue> = _q;
        return (_q._elems.length);
    }
}
