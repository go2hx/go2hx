package stdgo.time;
@:structInit @:using(stdgo.time.Time.T_zone_static_extension) abstract T_zone(stdgo._internal.time.Time_T_zone.T_zone) from stdgo._internal.time.Time_T_zone.T_zone to stdgo._internal.time.Time_T_zone.T_zone {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public var _isDST(get, set) : Bool;
    function get__isDST():Bool return this._isDST;
    function set__isDST(v:Bool):Bool {
        this._isDST = v;
        return v;
    }
    public function new(?_name:String, ?_offset:StdTypes.Int, ?_isDST:Bool) this = new stdgo._internal.time.Time_T_zone.T_zone((_name : stdgo.GoString), (_offset : stdgo.GoInt), _isDST);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
