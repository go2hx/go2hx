package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testOffsetLock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                var _i = (_i : stdgo.GoInt);
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (50 : stdgo.GoInt) : Bool), _j++, {
                                stdgo._internal.reflect.Reflect_resolveReflectName.resolveReflectName(stdgo._internal.fmt.Fmt_sprintf.sprintf(("OffsetLockName:%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j))?.__copy__());
                            });
                        };
                        _wg.done();
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
