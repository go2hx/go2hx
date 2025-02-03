package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.U_static_extension) abstract U(stdgo._internal.encoding.gob.Gob_U.U) from stdgo._internal.encoding.gob.Gob_U.U to stdgo._internal.encoding.gob.Gob_U.U {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public var _c(get, set) : StdTypes.Float;
    function get__c():StdTypes.Float return this._c;
    function set__c(v:StdTypes.Float):StdTypes.Float {
        this._c = (v : stdgo.GoFloat64);
        return v;
    }
    public var d(get, set) : std.UInt;
    function get_d():std.UInt return this.d;
    function set_d(v:std.UInt):std.UInt {
        this.d = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String, ?_c:StdTypes.Float, ?d:std.UInt) this = new stdgo._internal.encoding.gob.Gob_U.U((a : stdgo.GoInt), (b : stdgo.GoString), (_c : stdgo.GoFloat64), (d : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
