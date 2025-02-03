package stdgo.internal.intern;
@:structInit @:using(stdgo.internal.intern.Intern.T_key_static_extension) abstract T_key(stdgo._internal.internal.intern.Intern_T_key.T_key) from stdgo._internal.internal.intern.Intern_T_key.T_key to stdgo._internal.internal.intern.Intern_T_key.T_key {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _cmpVal(get, set) : stdgo.AnyInterface;
    function get__cmpVal():stdgo.AnyInterface return this._cmpVal;
    function set__cmpVal(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._cmpVal = (v : stdgo.AnyInterface);
        return v;
    }
    public var _isString(get, set) : Bool;
    function get__isString():Bool return this._isString;
    function set__isString(v:Bool):Bool {
        this._isString = v;
        return v;
    }
    public function new(?_s:String, ?_cmpVal:stdgo.AnyInterface, ?_isString:Bool) this = new stdgo._internal.internal.intern.Intern_T_key.T_key((_s : stdgo.GoString), (_cmpVal : stdgo.AnyInterface), _isString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
