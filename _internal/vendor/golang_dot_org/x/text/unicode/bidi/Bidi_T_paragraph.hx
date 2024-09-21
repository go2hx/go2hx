package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph_static_extension.T_paragraph_static_extension) class T_paragraph {
    public var _initialTypes : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
    public var _pairTypes : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>);
    public var _pairValues : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _embeddingLevel : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level = ((0 : stdgo.GoInt8) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
    public var _resultTypes : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
    public var _resultLevels : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>);
    public var _matchingPDI : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _matchingIsolateInitiator : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, ?_pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>, ?_pairValues:stdgo.Slice<stdgo.GoInt32>, ?_embeddingLevel:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level, ?_resultTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, ?_resultLevels:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>, ?_matchingPDI:stdgo.Slice<stdgo.GoInt>, ?_matchingIsolateInitiator:stdgo.Slice<stdgo.GoInt>) {
        if (_initialTypes != null) this._initialTypes = _initialTypes;
        if (_pairTypes != null) this._pairTypes = _pairTypes;
        if (_pairValues != null) this._pairValues = _pairValues;
        if (_embeddingLevel != null) this._embeddingLevel = _embeddingLevel;
        if (_resultTypes != null) this._resultTypes = _resultTypes;
        if (_resultLevels != null) this._resultLevels = _resultLevels;
        if (_matchingPDI != null) this._matchingPDI = _matchingPDI;
        if (_matchingIsolateInitiator != null) this._matchingIsolateInitiator = _matchingIsolateInitiator;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_paragraph(_initialTypes, _pairTypes, _pairValues, _embeddingLevel, _resultTypes, _resultLevels, _matchingPDI, _matchingIsolateInitiator);
    }
}
