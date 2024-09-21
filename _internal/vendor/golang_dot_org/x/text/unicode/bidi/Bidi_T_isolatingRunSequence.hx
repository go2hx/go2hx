package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence_static_extension.T_isolatingRunSequence_static_extension) class T_isolatingRunSequence {
    public var _p : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>);
    public var _indexes : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _types : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
    public var _resolvedLevels : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>);
    public var _level : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level = ((0 : stdgo.GoInt8) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
    public var _sos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
    public var _eos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
    public function new(?_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>, ?_indexes:stdgo.Slice<stdgo.GoInt>, ?_types:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, ?_resolvedLevels:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>, ?_level:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level, ?_sos:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, ?_eos:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_) {
        if (_p != null) this._p = _p;
        if (_indexes != null) this._indexes = _indexes;
        if (_types != null) this._types = _types;
        if (_resolvedLevels != null) this._resolvedLevels = _resolvedLevels;
        if (_level != null) this._level = _level;
        if (_sos != null) this._sos = _sos;
        if (_eos != null) this._eos = _eos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isolatingRunSequence(_p, _indexes, _types, _resolvedLevels, _level, _sos, _eos);
    }
}
