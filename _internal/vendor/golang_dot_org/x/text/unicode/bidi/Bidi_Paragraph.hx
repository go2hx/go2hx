package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Paragraph_static_extension.Paragraph_static_extension) class Paragraph {
    public var _p : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _o : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering);
    public var _opts : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>);
    public var _types : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
    public var _pairTypes : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>);
    public var _pairValues : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _runes : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _options : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_options.T_options = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_options.T_options);
    public function new(?_p:stdgo.Slice<stdgo.GoUInt8>, ?_o:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering, ?_opts:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Option.Option>, ?_types:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>, ?_pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>, ?_pairValues:stdgo.Slice<stdgo.GoInt32>, ?_runes:stdgo.Slice<stdgo.GoInt32>, ?_options:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_options.T_options) {
        if (_p != null) this._p = _p;
        if (_o != null) this._o = _o;
        if (_opts != null) this._opts = _opts;
        if (_types != null) this._types = _types;
        if (_pairTypes != null) this._pairTypes = _pairTypes;
        if (_pairValues != null) this._pairValues = _pairValues;
        if (_runes != null) this._runes = _runes;
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Paragraph(_p, _o, _opts, _types, _pairTypes, _pairValues, _runes, _options);
    }
}
