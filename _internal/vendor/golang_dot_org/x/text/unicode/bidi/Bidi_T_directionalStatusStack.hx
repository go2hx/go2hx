package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack_static_extension.T_directionalStatusStack_static_extension) class T_directionalStatusStack {
    public var _stackCounter : stdgo.GoInt = 0;
    public var _embeddingLevelStack : stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level> = new stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>(126, 126, ...[for (i in 0 ... 126) ((0 : stdgo.GoInt8) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)]);
    public var _overrideStatusStack : stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_> = new stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>(126, 126, ...[for (i in 0 ... 126) ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)]);
    public var _isolateStatusStack : stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(126, 126, ...[for (i in 0 ... 126) false]);
    public function new(?_stackCounter:stdgo.GoInt, ?_embeddingLevelStack:stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>, ?_overrideStatusStack:stdgo.GoArray<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, ?_isolateStatusStack:stdgo.GoArray<Bool>) {
        if (_stackCounter != null) this._stackCounter = _stackCounter;
        if (_embeddingLevelStack != null) this._embeddingLevelStack = _embeddingLevelStack;
        if (_overrideStatusStack != null) this._overrideStatusStack = _overrideStatusStack;
        if (_isolateStatusStack != null) this._isolateStatusStack = _isolateStatusStack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_directionalStatusStack(_stackCounter, _embeddingLevelStack, _overrideStatusStack, _isolateStatusStack);
    }
}
