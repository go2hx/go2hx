package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_embeddedtype_static_extension.T_embeddedType_static_extension) class T_embeddedType {
    public var _typ : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _indirect : Bool = false;
    public var _multiples : Bool = false;
    public function new(?_typ:stdgo._internal.go.types.Types_type_.Type_, ?_index:stdgo.Slice<stdgo.GoInt>, ?_indirect:Bool, ?_multiples:Bool) {
        if (_typ != null) this._typ = _typ;
        if (_index != null) this._index = _index;
        if (_indirect != null) this._indirect = _indirect;
        if (_multiples != null) this._multiples = _multiples;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_embeddedType(_typ, _index, _indirect, _multiples);
    }
}
