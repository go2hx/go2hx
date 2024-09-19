package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testChan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _loop = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_loop < (2 : stdgo.GoInt) : Bool), _loop++, {
                var _c:stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
                var _cv:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    final __value__ = _loop;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        _c = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        _cv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c))?.__copy__();
                    } else if (__value__ == ((0 : stdgo.GoInt))) {
                        _cv = stdgo._internal.reflect.Reflect_makeChan.makeChan(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_c)), (1 : stdgo.GoInt))?.__copy__();
                        _c = (stdgo.Go.typeAssert((_cv.interface_() : stdgo.Chan<stdgo.GoInt>)) : stdgo.Chan<stdgo.GoInt>);
                    };
                };
                _cv.send(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((2 : stdgo.GoInt)))?.__copy__());
                {
                    var _i = (_c.__get__() : stdgo.GoInt);
                    if (_i != ((2 : stdgo.GoInt))) {
                        _t.errorf(("reflect Send 2, native recv %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    };
                };
                _c.__send__((3 : stdgo.GoInt));
                {
                    var __tmp__ = _cv.recv(), _i:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_i.int_() != (3i64 : stdgo.GoInt64)) || !_ok : Bool)) {
                        _t.errorf(("native send 3, reflect Recv %d, %t" : stdgo.GoString), stdgo.Go.toInterface(_i.int_()), stdgo.Go.toInterface(_ok));
                    };
                };
                var __tmp__ = _cv.tryRecv(), _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_val.isValid() || _ok : Bool)) {
                    _t.errorf(("TryRecv on empty chan: %s, %t" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__valueToString._valueToString(_val?.__copy__())), stdgo.Go.toInterface(_ok));
                };
                _c.__send__((4 : stdgo.GoInt));
                {
                    var __tmp__ = _cv.tryRecv();
                    _val = __tmp__._0?.__copy__();
                    _ok = __tmp__._1;
                };
                if (!_val.isValid()) {
                    _t.errorf(("TryRecv on ready chan got nil" : stdgo.GoString));
                } else {
                    var _i = (_val.int_() : stdgo.GoInt64);
                    if (((_i != (4i64 : stdgo.GoInt64)) || !_ok : Bool)) {
                        _t.errorf(("native send 4, TryRecv %d, %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ok));
                    };
                };
                _c.__send__((100 : stdgo.GoInt));
                _ok = _cv.trySend(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((5 : stdgo.GoInt)))?.__copy__());
                var _i = (_c.__get__() : stdgo.GoInt);
                if (_ok) {
                    _t.errorf(("TrySend on full chan succeeded: value %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _ok = _cv.trySend(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((6 : stdgo.GoInt)))?.__copy__());
                if (!_ok) {
                    _t.errorf(("TrySend on empty chan failed" : stdgo.GoString));
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_c != null && _c.__isGet__()) {
                                __select__ = false;
                                {
                                    var _x = _c.__get__();
                                    {
                                        _t.errorf(("TrySend failed but it did send %d" : stdgo.GoString), stdgo.Go.toInterface(_x));
                                    };
                                };
                            } else {
                                __select__ = false;
                                {};
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                } else {
                    {
                        _i = _c.__get__();
                        if (_i != ((6 : stdgo.GoInt))) {
                            _t.errorf(("TrySend 6, recv %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        };
                    };
                };
                _c.__send__((123 : stdgo.GoInt));
                _cv.close();
                {
                    var __tmp__ = _cv.recv(), _i:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_i.int_() != (123i64 : stdgo.GoInt64)) || !_ok : Bool)) {
                        _t.errorf(("send 123 then close; Recv %d, %t" : stdgo.GoString), stdgo.Go.toInterface(_i.int_()), stdgo.Go.toInterface(_ok));
                    };
                };
                {
                    var __tmp__ = _cv.recv(), _i:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_i.int_() != (0i64 : stdgo.GoInt64)) || _ok : Bool)) {
                        _t.errorf(("after close Recv %d, %t" : stdgo.GoString), stdgo.Go.toInterface(_i.int_()), stdgo.Go.toInterface(_ok));
                    };
                };
            });
        };
        var _c:stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
        var _cv = (stdgo._internal.reflect.Reflect_makeChan.makeChan(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_c)), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _c = (stdgo.Go.typeAssert((_cv.interface_() : stdgo.Chan<stdgo.GoInt>)) : stdgo.Chan<stdgo.GoInt>);
        if (_cv.trySend(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((7 : stdgo.GoInt)))?.__copy__())) {
            _t.errorf(("TrySend on sync chan succeeded" : stdgo.GoString));
        };
        {
            var __tmp__ = _cv.tryRecv(), _v:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_v.isValid() || _ok : Bool)) {
                _t.errorf(("TryRecv on sync chan succeeded: isvalid=%v ok=%v" : stdgo.GoString), stdgo.Go.toInterface(_v.isValid()), stdgo.Go.toInterface(_ok));
            };
        };
        _cv = stdgo._internal.reflect.Reflect_makeChan.makeChan(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_c)), (10 : stdgo.GoInt))?.__copy__();
        _c = (stdgo.Go.typeAssert((_cv.interface_() : stdgo.Chan<stdgo.GoInt>)) : stdgo.Chan<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                _c.__send__(_i);
            });
        };
        {
            var __0 = (_cv.len() : stdgo.GoInt), __1 = (_cv.cap() : stdgo.GoInt);
var _m = __1, _l = __0;
            if (((_l != (_c.length)) || (_m != _c.capacity) : Bool)) {
                _t.errorf(("Len/Cap = %d/%d want %d/%d" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((_c.length)), stdgo.Go.toInterface(_c.capacity));
            };
        };
    }
