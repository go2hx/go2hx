package go.internal.reflectlite;

import go.reflect.Reflect;

function typeOf(_i:go.AnyInterface)
	return Reflect.typeOf(_i);

function valueOf(_i:go.AnyInterface)
	return Reflect.valueOf(_i);

function swapper(_slice:go.AnyInterface) {
	var _v = (Reflect.valueOf(_slice) == null ? null : Reflect.valueOf(_slice).__copy__());
	var _tmp = (Reflect.new_(_v.type().elem())
		.elem() == null ? null : Reflect.new_(_v.type().elem())
		.elem()
		.__copy__());
	return function(_i:go.GoInt, _j:go.GoInt):Void {
		var _a = (_v.index(_i) == null ? null : _v.index(_i).__copy__()),
			_b = (_v.index(_j) == null ? null : _v.index(_j).__copy__());
		_tmp.set((_a == null ? null : _a.__copy__()));
		_a.set((_b == null ? null : _b.__copy__()));
		_b.set((_tmp == null ? null : _tmp.__copy__()));
	};
}
