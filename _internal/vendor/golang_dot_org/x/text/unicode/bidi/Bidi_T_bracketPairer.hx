package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer_static_extension.T_bracketPairer_static_extension) class T_bracketPairer {
    public var _sos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
    public var _openers : stdgo.Ref<stdgo._internal.container.list.List_List.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
    public var _pairPositions : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs = new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs(0, 0);
    public var _codesIsolatedRun : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
    public var _indexes : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_sos:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, ?_openers:stdgo.Ref<stdgo._internal.container.list.List_List.List>, ?_pairPositions:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs, ?_codesIsolatedRun:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, ?_indexes:stdgo.Slice<stdgo.GoInt>) {
        if (_sos != null) this._sos = _sos;
        if (_openers != null) this._openers = _openers;
        if (_pairPositions != null) this._pairPositions = _pairPositions;
        if (_codesIsolatedRun != null) this._codesIsolatedRun = _codesIsolatedRun;
        if (_indexes != null) this._indexes = _indexes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bracketPairer(_sos, _openers, _pairPositions, _codesIsolatedRun, _indexes);
    }
}
