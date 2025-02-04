package stdgo._internal.internal.reflectlite;
function swapper(_slice:stdgo.AnyInterface):(stdgo.GoInt, stdgo.GoInt) -> Void {
        var _v:stdgo._internal.reflect.Reflect_value.Value = (stdgo._internal.reflect.Reflect_valueof.valueOf(Go.toInterface(_slice)) == null ? null : stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_slice)).__copy__());
        var _tmp:stdgo._internal.reflect.Reflect_value.Value = (stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem()).elem() == null ? null : stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem()).elem().__copy__());
        return function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            var _a:stdgo._internal.reflect.Reflect_value.Value = (_v.index(_i) == null ? null : _v.index(_i).__copy__()), _b:stdgo._internal.reflect.Reflect_value.Value = (_v.index(_j) == null ? null : _v.index(_j).__copy__());
            _tmp.set((_a == null ? null : _a.__copy__()));
            _a.set((_b == null ? null : _b.__copy__()));
            _b.set((_tmp == null ? null : _tmp.__copy__()));
        };
    }
