package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
    @:keep
    static public function _insertNew( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        if ((_u >= (_q._sparse.length : stdgo.GoUInt32) : Bool)) {
            return;
        };
        _q._sparse[(_u : stdgo.GoInt)] = _q._size;
        _q._dense[(_q._size : stdgo.GoInt)] = _u;
        _q._size++;
    }
    @:keep
    static public function _insert( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        if (!_q._contains(_u)) {
            _q._insertNew(_u);
        };
    }
    @:keep
    static public function _contains( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>, _u:stdgo.GoUInt32):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        if ((_u >= (_q._sparse.length : stdgo.GoUInt32) : Bool)) {
            return false;
        };
        return ((_q._sparse[(_u : stdgo.GoInt)] < _q._size : Bool) && (_q._dense[(_q._sparse[(_u : stdgo.GoInt)] : stdgo.GoInt)] == _u) : Bool);
    }
    @:keep
    static public function _clear( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        _q._size = (0u32 : stdgo.GoUInt32);
        _q._nextIndex = (0u32 : stdgo.GoUInt32);
    }
    @:keep
    static public function _next( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>):stdgo.GoUInt32 {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        var _n = (0 : stdgo.GoUInt32);
        _n = _q._dense[(_q._nextIndex : stdgo.GoInt)];
        _q._nextIndex++;
        return _n;
    }
    @:keep
    static public function _empty( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        return (_q._nextIndex >= _q._size : Bool);
    }
}
