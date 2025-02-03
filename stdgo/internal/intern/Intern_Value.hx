package stdgo.internal.intern;
@:structInit @:using(stdgo.internal.intern.Intern.Value_static_extension) abstract Value(stdgo._internal.internal.intern.Intern_Value.Value) from stdgo._internal.internal.intern.Intern_Value.Value to stdgo._internal.internal.intern.Intern_Value.Value {
    public var __1(get, set) : haxe.ds.Vector<() -> Void>;
    function get___1():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) () -> i()]);
    function set___1(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _cmpVal(get, set) : stdgo.AnyInterface;
    function get__cmpVal():stdgo.AnyInterface return this._cmpVal;
    function set__cmpVal(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._cmpVal = (v : stdgo.AnyInterface);
        return v;
    }
    public var _resurrected(get, set) : Bool;
    function get__resurrected():Bool return this._resurrected;
    function set__resurrected(v:Bool):Bool {
        this._resurrected = v;
        return v;
    }
    public function new(?__1:haxe.ds.Vector<() -> Void>, ?_cmpVal:stdgo.AnyInterface, ?_resurrected:Bool) this = new stdgo._internal.internal.intern.Intern_Value.Value(([for (i in __1) i] : stdgo.GoArray<() -> Void>), (_cmpVal : stdgo.AnyInterface), _resurrected);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
