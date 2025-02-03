package stdgo.slices;
@:structInit @:using(stdgo.slices.Slices.T_myStruct_static_extension) abstract T_myStruct(stdgo._internal.slices.Slices_T_myStruct.T_myStruct) from stdgo._internal.slices.Slices_T_myStruct.T_myStruct to stdgo._internal.slices.Slices_T_myStruct.T_myStruct {
    public var _a(get, set) : String;
    function get__a():String return this._a;
    function set__a(v:String):String {
        this._a = (v : stdgo.GoString);
        return v;
    }
    public var _b(get, set) : String;
    function get__b():String return this._b;
    function set__b(v:String):String {
        this._b = (v : stdgo.GoString);
        return v;
    }
    public var _c(get, set) : String;
    function get__c():String return this._c;
    function set__c(v:String):String {
        this._c = (v : stdgo.GoString);
        return v;
    }
    public var _d(get, set) : String;
    function get__d():String return this._d;
    function set__d(v:String):String {
        this._d = (v : stdgo.GoString);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_a:String, ?_b:String, ?_c:String, ?_d:String, ?_n:StdTypes.Int) this = new stdgo._internal.slices.Slices_T_myStruct.T_myStruct((_a : stdgo.GoString), (_b : stdgo.GoString), (_c : stdgo.GoString), (_d : stdgo.GoString), (_n : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
