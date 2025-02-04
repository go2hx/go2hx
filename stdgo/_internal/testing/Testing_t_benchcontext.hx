package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_benchcontext_static_extension.T_benchContext_static_extension) class T_benchContext {
    public var _match : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
    public var _maxLen : stdgo.GoInt = 0;
    public var _extLen : stdgo.GoInt = 0;
    public function new(?_match:stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>, ?_maxLen:stdgo.GoInt, ?_extLen:stdgo.GoInt) {
        if (_match != null) this._match = _match;
        if (_maxLen != null) this._maxLen = _maxLen;
        if (_extLen != null) this._extLen = _extLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchContext(_match, _maxLen, _extLen);
    }
}
