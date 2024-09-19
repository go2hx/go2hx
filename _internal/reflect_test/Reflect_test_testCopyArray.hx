package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCopyArray(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _b = (new stdgo.GoArray<stdgo.GoInt>(11, 11, ...[
(11 : stdgo.GoInt),
(22 : stdgo.GoInt),
(33 : stdgo.GoInt),
(44 : stdgo.GoInt),
(1010 : stdgo.GoInt),
(99 : stdgo.GoInt),
(88 : stdgo.GoInt),
(77 : stdgo.GoInt),
(66 : stdgo.GoInt),
(55 : stdgo.GoInt),
(44 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _c = _b?.__copy__();
        var _aa = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _ab = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.reflect.Reflect_copy.copy(_ab?.__copy__(), _aa?.__copy__());
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_a.length) : Bool), _i++, {
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    _t.errorf(("(i) a[%d]=%d, b[%d]=%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b[(_i : stdgo.GoInt)]));
                };
            });
        };
        {
            var _i = (_a.length : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_b.length) : Bool), _i++, {
                if (_b[(_i : stdgo.GoInt)] != (_c[(_i : stdgo.GoInt)])) {
                    _t.errorf(("(ii) b[%d]=%d, c[%d]=%d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c[(_i : stdgo.GoInt)]));
                } else {
                    _t.logf(("elem %d is okay\n" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
