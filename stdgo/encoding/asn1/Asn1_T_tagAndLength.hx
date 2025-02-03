package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.T_tagAndLength_static_extension) abstract T_tagAndLength(stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength) from stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength to stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength {
    public var _class(get, set) : StdTypes.Int;
    function get__class():StdTypes.Int return this._class;
    function set__class(v:StdTypes.Int):StdTypes.Int {
        this._class = (v : stdgo.GoInt);
        return v;
    }
    public var _tag(get, set) : StdTypes.Int;
    function get__tag():StdTypes.Int return this._tag;
    function set__tag(v:StdTypes.Int):StdTypes.Int {
        this._tag = (v : stdgo.GoInt);
        return v;
    }
    public var _length(get, set) : StdTypes.Int;
    function get__length():StdTypes.Int return this._length;
    function set__length(v:StdTypes.Int):StdTypes.Int {
        this._length = (v : stdgo.GoInt);
        return v;
    }
    public var _isCompound(get, set) : Bool;
    function get__isCompound():Bool return this._isCompound;
    function set__isCompound(v:Bool):Bool {
        this._isCompound = v;
        return v;
    }
    public function new(?_class:StdTypes.Int, ?_tag:StdTypes.Int, ?_length:StdTypes.Int, ?_isCompound:Bool) this = new stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength((_class : stdgo.GoInt), (_tag : stdgo.GoInt), (_length : stdgo.GoInt), _isCompound);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
