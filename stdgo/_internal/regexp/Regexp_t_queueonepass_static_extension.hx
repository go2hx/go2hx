package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
    @:keep
    @:tdfield
    static public function _insertNew( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        if ((_u >= ((@:checkr _q ?? throw "null pointer dereference")._sparse.length : stdgo.GoUInt32) : Bool)) {
            return;
        };
        (@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] = (@:checkr _q ?? throw "null pointer dereference")._size;
        (@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._size : stdgo.GoInt)] = _u;
        (@:checkr _q ?? throw "null pointer dereference")._size++;
    }
    @:keep
    @:tdfield
    static public function _insert( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        if (!@:check2r _q._contains(_u)) {
            @:check2r _q._insertNew(_u);
        };
    }
    @:keep
    @:tdfield
    static public function _contains( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        if ((_u >= ((@:checkr _q ?? throw "null pointer dereference")._sparse.length : stdgo.GoUInt32) : Bool)) {
            return false;
        };
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
        (@:checkr _q ?? throw "null pointer dereference")._nextIndex++;
        return _n;
    }
    @:keep
    @:tdfield
    static public function _empty( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        return ((@:checkr _q ?? throw "null pointer dereference")._nextIndex >= (@:checkr _q ?? throw "null pointer dereference")._size : Bool);
    }
}
