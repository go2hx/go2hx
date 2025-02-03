package stdgo.image.jpeg;
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_component_static_extension) abstract T_component(stdgo._internal.image.jpeg.Jpeg_T_component.T_component) from stdgo._internal.image.jpeg.Jpeg_T_component.T_component to stdgo._internal.image.jpeg.Jpeg_T_component.T_component {
    public var _h(get, set) : StdTypes.Int;
    function get__h():StdTypes.Int return this._h;
    function set__h(v:StdTypes.Int):StdTypes.Int {
        this._h = (v : stdgo.GoInt);
        return v;
    }
    public var _v(get, set) : StdTypes.Int;
    function get__v():StdTypes.Int return this._v;
    function set__v(v:StdTypes.Int):StdTypes.Int {
        this._v = (v : stdgo.GoInt);
        return v;
    }
    public var _c(get, set) : std.UInt;
    function get__c():std.UInt return this._c;
    function set__c(v:std.UInt):std.UInt {
        this._c = (v : stdgo.GoUInt8);
        return v;
    }
    public var _tq(get, set) : std.UInt;
    function get__tq():std.UInt return this._tq;
    function set__tq(v:std.UInt):std.UInt {
        this._tq = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_h:StdTypes.Int, ?_v:StdTypes.Int, ?_c:std.UInt, ?_tq:std.UInt) this = new stdgo._internal.image.jpeg.Jpeg_T_component.T_component((_h : stdgo.GoInt), (_v : stdgo.GoInt), (_c : stdgo.GoUInt8), (_tq : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
