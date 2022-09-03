package stdgo.internal.reflectlite;

import stdgo.StdGoTypes;

@:follow typedef Type = stdgo.reflect.Reflect.Type;
@:follow typedef Value = stdgo.reflect.Reflect.Value;
@:follow typedef Kind = stdgo.reflect.Reflect.Kind;

function typeOf(_x:AnyInterface) {
	return stdgo.reflect.Reflect.typeOf(_x);
}

function swapper(_x:AnyInterface):(GoInt, GoInt) -> Void {
	var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_x)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_x))
		.__copy__());
	var _tmp:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.new_(_v.type().elem())
		.elem() == null ? null : stdgo.reflect.Reflect.new_(_v.type().elem())
		.elem()
		.__copy__());
	return function(_i:GoInt, _j:GoInt):Void {
		var _a:stdgo.reflect.Reflect.Value = (_v.index(_i) == null ? null : _v.index(_i).__copy__()),
			_b:stdgo.reflect.Reflect.Value = (_v.index(_j) == null ? null : _v.index(_j).__copy__());
		_tmp.set((_a == null ? null : _a.__copy__()));
		_a.set((_b == null ? null : _b.__copy__()));
		_b.set((_tmp == null ? null : _tmp.__copy__()));
	};
}

function valueOf(_0:AnyInterface):Value
	return stdgo.reflect.Reflect.valueOf(_0);
