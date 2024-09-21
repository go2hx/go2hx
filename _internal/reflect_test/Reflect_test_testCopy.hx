package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _b = (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
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
(44 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _c = (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
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
(44 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_b.length) : Bool), _i++, {
                if (_b[(_i : stdgo.GoInt)] != (_c[(_i : stdgo.GoInt)])) {
                    _t.fatalf(("b != c before test" : stdgo.GoString));
                };
            });
        };
        var _a1 = _a;
        var _b1 = _b;
        var _aa = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_a1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _ab = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _tocopy = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_tocopy <= (7 : stdgo.GoInt) : Bool), _tocopy++, {
                _aa.setLen(_tocopy);
                stdgo._internal.reflect.Reflect_copy.copy(_ab?.__copy__(), _aa?.__copy__());
                _aa.setLen((8 : stdgo.GoInt));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tocopy : Bool), _i++, {
                        if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                            _t.errorf(("(i) tocopy=%d a[%d]=%d, b[%d]=%d" : stdgo.GoString), stdgo.Go.toInterface(_tocopy), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b[(_i : stdgo.GoInt)]));
                        };
                    });
                };
                {
                    var _i = (_tocopy : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_b.length) : Bool), _i++, {
                        if (_b[(_i : stdgo.GoInt)] != (_c[(_i : stdgo.GoInt)])) {
                            if ((_i < (_a.length) : Bool)) {
                                _t.errorf(("(ii) tocopy=%d a[%d]=%d, b[%d]=%d, c[%d]=%d" : stdgo.GoString), stdgo.Go.toInterface(_tocopy), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c[(_i : stdgo.GoInt)]));
                            } else {
                                _t.errorf(("(iii) tocopy=%d b[%d]=%d, c[%d]=%d" : stdgo.GoString), stdgo.Go.toInterface(_tocopy), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c[(_i : stdgo.GoInt)]));
                            };
                        } else {
                            _t.logf(("tocopy=%d elem %d is okay\n" : stdgo.GoString), stdgo.Go.toInterface(_tocopy), stdgo.Go.toInterface(_i));
                        };
                    });
                };
            });
        };
    }
