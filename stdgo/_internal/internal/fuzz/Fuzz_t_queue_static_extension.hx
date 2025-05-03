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
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L63"
        if ((@:checkr _q ?? throw "null pointer dereference")._len == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L64"
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L66"
        return { _0 : (@:checkr _q ?? throw "null pointer dereference")._elems[((@:checkr _q ?? throw "null pointer dereference")._head : stdgo.GoInt)], _1 : true };
    }
    @:keep
    @:tdfield
    static public function _dequeue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L52"
        if ((@:checkr _q ?? throw "null pointer dereference")._len == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L53"
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        var _e = ((@:checkr _q ?? throw "null pointer dereference")._elems[((@:checkr _q ?? throw "null pointer dereference")._head : stdgo.GoInt)] : stdgo.AnyInterface);
        (@:checkr _q ?? throw "null pointer dereference")._elems[((@:checkr _q ?? throw "null pointer dereference")._head : stdgo.GoInt)] = (null : stdgo.AnyInterface);
        (@:checkr _q ?? throw "null pointer dereference")._head = ((((@:checkr _q ?? throw "null pointer dereference")._head + (1 : stdgo.GoInt) : stdgo.GoInt)) % _q._cap() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L58"
        (@:checkr _q ?? throw "null pointer dereference")._len--;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L59"
        return { _0 : _e, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _enqueue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>, _e:stdgo.AnyInterface):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L43"
        if ((((@:checkr _q ?? throw "null pointer dereference")._len + (1 : stdgo.GoInt) : stdgo.GoInt) > _q._cap() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L44"
            _q._grow();
        };
        var _i = ((((@:checkr _q ?? throw "null pointer dereference")._head + (@:checkr _q ?? throw "null pointer dereference")._len : stdgo.GoInt)) % _q._cap() : stdgo.GoInt);
        (@:checkr _q ?? throw "null pointer dereference")._elems[(_i : stdgo.GoInt)] = _e;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L48"
        (@:checkr _q ?? throw "null pointer dereference")._len++;
    }
    @:keep
    @:tdfield
    static public function _grow( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        var _oldCap = (_q._cap() : stdgo.GoInt);
        var _newCap = (_oldCap * (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L30"
        if (_newCap == ((0 : stdgo.GoInt))) {
            _newCap = (8 : stdgo.GoInt);
        };
        var _newElems = (new stdgo.Slice<stdgo.AnyInterface>((_newCap : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        var _oldLen = ((@:checkr _q ?? throw "null pointer dereference")._len : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L35"
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
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/queue.go#L24"
        return ((@:checkr _q ?? throw "null pointer dereference")._elems.length);
    }
}
