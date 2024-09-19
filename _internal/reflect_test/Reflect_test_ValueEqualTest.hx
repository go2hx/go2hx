package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class ValueEqualTest {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _u : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _eq : Bool = false;
    public var _vDeref : Bool = false;
    public var _uDeref : Bool = false;
    public function new(?_v:stdgo.AnyInterface, ?_u:stdgo.AnyInterface, ?_eq:Bool, ?_vDeref:Bool, ?_uDeref:Bool) {
        if (_v != null) this._v = _v;
        if (_u != null) this._u = _u;
        if (_eq != null) this._eq = _eq;
        if (_vDeref != null) this._vDeref = _vDeref;
        if (_uDeref != null) this._uDeref = _uDeref;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueEqualTest(_v, _u, _eq, _vDeref, _uDeref);
    }
}
