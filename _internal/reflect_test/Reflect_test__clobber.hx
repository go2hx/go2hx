package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _clobber():Void {
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (10 : stdgo.GoInt) : Bool), _j++, {
                        var _obj = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((_i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                        _internal.reflect_test.Reflect_test__sink._sink = stdgo.Go.toInterface(_obj);
                    });
                };
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
    }
