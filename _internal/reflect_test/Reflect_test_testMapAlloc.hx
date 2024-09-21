package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _k = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((5 : stdgo.GoInt)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((7 : stdgo.GoInt)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _m.setMapIndex(_k?.__copy__(), _v?.__copy__());
        }) : stdgo.GoFloat64);
        if ((_allocs > (0.5 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("allocs per map assignment: want 0 got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
        {};
        var _tmp = (0 : stdgo.GoInt);
        var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_tmp))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _allocs = stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            var _mv = (stdgo._internal.reflect.Reflect_makeMapWithSize.makeMapWithSize(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>))), (1000 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (500 : stdgo.GoInt) : Bool), _i++, {
                    _val.setInt((_i : stdgo.GoInt64));
                    _mv.setMapIndex(_val?.__copy__(), _val?.__copy__());
                });
            };
        });
        if ((_allocs > (10 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("allocs per map assignment: want at most 10 got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
