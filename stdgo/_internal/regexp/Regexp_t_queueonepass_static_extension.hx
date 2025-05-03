package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
    @:keep
    @:tdfield
    static public function _insertNew( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L131"
        if ((_u >= ((@:checkr _q ?? throw "null pointer dereference")._sparse.length : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L132"
            return;
        };
        (@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] = (@:checkr _q ?? throw "null pointer dereference")._size;
        (@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._size : stdgo.GoInt)] = _u;
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L136"
        (@:checkr _q ?? throw "null pointer dereference")._size++;
    }
    @:keep
    @:tdfield
    static public function _insert( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L125"
        if (!_q._contains(_u)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L126"
            _q._insertNew(_u);
        };
    }
    @:keep
    @:tdfield
    static public function _contains( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L118"
        if ((_u >= ((@:checkr _q ?? throw "null pointer dereference")._sparse.length : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L119"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L121"
        return (((@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] < (@:checkr _q ?? throw "null pointer dereference")._size : Bool) && ((@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] : stdgo.GoInt)] == _u) : Bool);
    }
    @:keep
    @:tdfield
    static public function _clear( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        (@:checkr _q ?? throw "null pointer dereference")._size = (0u32 : stdgo.GoUInt32);
        (@:checkr _q ?? throw "null pointer dereference")._nextIndex = (0u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _next( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):stdgo.GoUInt32 {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        var _n = (0 : stdgo.GoUInt32);
        _n = (@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._nextIndex : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L108"
        (@:checkr _q ?? throw "null pointer dereference")._nextIndex++;
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L109"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _empty( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L103"
        return ((@:checkr _q ?? throw "null pointer dereference")._nextIndex >= (@:checkr _q ?? throw "null pointer dereference")._size : Bool);
    }
}
