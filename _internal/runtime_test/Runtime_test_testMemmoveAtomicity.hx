package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testMemmoveAtomicity(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("skip under the race detector -- this test is intentionally racy" : stdgo.GoString)));
        };
        var _x:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__6 => _backward in (new stdgo.Slice<Bool>(2, 2, ...[true, false]) : stdgo.Slice<Bool>)) {
            for (__7 => _n in (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(6 : stdgo.GoInt),
(7 : stdgo.GoInt),
(8 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(15 : stdgo.GoInt),
(25 : stdgo.GoInt),
(49 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _n = (_n : stdgo.GoInt);
                var _sz = ((_n * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUIntptr);
                var _name = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_sz))?.__copy__() : stdgo.GoString);
                if (_backward) {
                    _name = (_name + (("-backward" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                } else {
                    _name = (_name + (("-forward" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var _s:stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>(100, 100, ...[for (i in 0 ... 100) (null : stdgo.Pointer<stdgo.GoInt>)]);
                    var _src = (_s.__slice__((_n - (1 : stdgo.GoInt) : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>);
                    var _dst = (_s.__slice__(0, _n) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>);
                    if (_backward) {
                        {
                            final __tmp__0 = _dst;
                            final __tmp__1 = _src;
                            _src = __tmp__0;
                            _dst = __tmp__1;
                        };
                    };
                    for (_i => _ in _src) {
                        _src[(_i : stdgo.GoInt)] = stdgo.Go.pointer(_x);
                    };
                    for (_i => _ in _dst) {
                        _dst[(_i : stdgo.GoInt)] = (null : stdgo.Pointer<stdgo.GoInt>);
                    };
                    var _ready:stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32 = ({} : stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32);
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var _sp = (stdgo.Go.toInterface(stdgo.Go.pointer(_src[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                            var _dp = (stdgo.Go.toInterface(stdgo.Go.pointer(_dst[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                            _ready.store((1u32 : stdgo.GoUInt32));
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                                    stdgo._internal.runtime.Runtime_memmove.memmove(_dp, _sp, _sz);
                                    stdgo._internal.runtime.Runtime_memclrNoHeapPointers.memclrNoHeapPointers(_dp, _sz);
                                });
                            };
                            _ready.store((2u32 : stdgo.GoUInt32));
                        };
                        a();
                    });
                    while (_ready.load() == ((0u32 : stdgo.GoUInt32))) {
                        stdgo._internal.runtime.Runtime_gosched.gosched();
                    };
                    while (_ready.load() != ((2u32 : stdgo.GoUInt32))) {
                        for (_i => _ in _dst) {
                            var _p = _dst[(_i : stdgo.GoInt)];
                            if (((_p != null) && (_p != stdgo.Go.pointer(_x)) : Bool)) {
                                _t.fatalf(("got partially updated pointer %p at dst[%d], want either nil or %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.pointer(_x)));
                            };
                        };
                    };
                });
            };
        };
    }
