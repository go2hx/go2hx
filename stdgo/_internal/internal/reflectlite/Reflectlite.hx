package stdgo._internal.internal.reflectlite;



@:follow typedef Type_ = stdgo._internal.reflect.Reflect.Type_;
@:follow typedef Value = stdgo._internal.reflect.Reflect.Value;
@:follow typedef Kind = stdgo._internal.reflect.Reflect.Kind;

function typeOf(_x:AnyInterface) {
	return stdgo._internal.reflect.Reflect.typeOf(_x);
}

function swapper(_x:AnyInterface):(GoInt, GoInt) -> Void {
	var _v:stdgo._internal.reflect.Reflect.Value = (stdgo._internal.reflect.Reflect.valueOf(Go.toInterface(_x)) == null ? null : stdgo._internal.reflect.Reflect.valueOf(Go.toInterface(_x))
		.__copy__());
	var _tmp:stdgo._internal.reflect.Reflect.Value = (stdgo._internal.reflect.Reflect.new_(_v.type().elem())
		.elem() == null ? null : stdgo._internal.reflect.Reflect.new_(_v.type().elem())
		.elem()
		.__copy__());
	return function(_i:GoInt, _j:GoInt):Void {
		var _a:stdgo._internal.reflect.Reflect.Value = (_v.index(_i) == null ? null : _v.index(_i).__copy__()),
			_b:stdgo._internal.reflect.Reflect.Value = (_v.index(_j) == null ? null : _v.index(_j).__copy__());
		_tmp.set((_a == null ? null : _a.__copy__()));
		_a.set((_b == null ? null : _b.__copy__()));
		_b.set((_tmp == null ? null : _tmp.__copy__()));
	};
}

function valueOf(_0:AnyInterface):Value
	return stdgo._internal.reflect.Reflect.valueOf(_0);
