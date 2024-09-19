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
function testProfBuf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _write = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer, _now:stdgo.GoInt64, _hdr:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void {
            _b.write(stdgo.Go.pointer(_tag), _now, _hdr, _stk);
        };
        var _read = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>, _data:stdgo.Slice<stdgo.GoUInt64>, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Void {
            var __tmp__ = _b.read((1 : stdgo._internal.runtime.Runtime_T_profBufReadMode.T_profBufReadMode)), _rdata:stdgo.Slice<stdgo.GoUInt64> = __tmp__._0, _rtags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = __tmp__._1, _eof:Bool = __tmp__._2;
            if ((!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_rdata), stdgo.Go.toInterface(_data)) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_rtags), stdgo.Go.toInterface(_tags)) : Bool)) {
                _t.fatalf(("unexpected profile read:\nhave data %#x\nwant data %#x\nhave tags %#x\nwant tags %#x" : stdgo.GoString), stdgo.Go.toInterface(_rdata), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_rtags), stdgo.Go.toInterface(_tags));
            };
            if (_eof) {
                _t.fatalf(("unexpected eof" : stdgo.GoString));
            };
        };
        var _readBlock = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>, _data:stdgo.Slice<stdgo.GoUInt64>, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):() -> Void {
            var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var _eof = (_data == null : Bool);
                    var __tmp__ = _b.read((0 : stdgo._internal.runtime.Runtime_T_profBufReadMode.T_profBufReadMode)), _rdata:stdgo.Slice<stdgo.GoUInt64> = __tmp__._0, _rtags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = __tmp__._1, _reof:Bool = __tmp__._2;
                    if (((!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_rdata), stdgo.Go.toInterface(_data)) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_rtags), stdgo.Go.toInterface(_tags)) : Bool) || (_reof != _eof) : Bool)) {
                        _t.errorf(("unexpected profile read:\nhave data %#x\nwant data %#x\nhave tags %#x\nwant tags %#x\nhave eof=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_rdata), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_rtags), stdgo.Go.toInterface(_tags), stdgo.Go.toInterface(_reof), stdgo.Go.toInterface(_eof));
                    };
                    _c.__send__((1 : stdgo.GoInt));
                };
                a();
            });
            stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
            return function():Void {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_c != null && _c.__isGet__()) {
                            __select__ = false;
                            {
                                _c.__get__();
                                {};
                            };
                        } else if (stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                            __select__ = false;
                            {
                                stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                                {
                                    _t.fatalf(("timeout waiting for blocked read" : stdgo.GoString));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
        };
        var _readEOF = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>):Void {
            var __tmp__ = _b.read((0 : stdgo._internal.runtime.Runtime_T_profBufReadMode.T_profBufReadMode)), _rdata:stdgo.Slice<stdgo.GoUInt64> = __tmp__._0, _rtags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = __tmp__._1, _eof:Bool = __tmp__._2;
            if (((_rdata != null || _rtags != null : Bool) || !_eof : Bool)) {
                _t.errorf(("unexpected profile read: %#x, %#x, eof=%v; want nil, nil, eof=true" : stdgo.GoString), stdgo.Go.toInterface(_rdata), stdgo.Go.toInterface(_rtags), stdgo.Go.toInterface(_eof));
            };
            {
                var __tmp__ = _b.read((1 : stdgo._internal.runtime.Runtime_T_profBufReadMode.T_profBufReadMode));
                _rdata = __tmp__._0;
                _rtags = __tmp__._1;
                _eof = __tmp__._2;
            };
            if (((_rdata != null || _rtags != null : Bool) || !_eof : Bool)) {
                _t.errorf(("unexpected profile read (non-blocking): %#x, %#x, eof=%v; want nil, nil, eof=true" : stdgo.GoString), stdgo.Go.toInterface(_rdata), stdgo.Go.toInterface(_rtags), stdgo.Go.toInterface(_eof));
            };
        };
        var _myTags = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _t.logf(("myTags is %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])));
        _t.run(("BasicWriteRead" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (11 : stdgo.GoInt), (1 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _read(_t, _b, (null : stdgo.Slice<stdgo.GoUInt64>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(8, 8, ...[(8i64 : stdgo.GoUInt64), (99i64 : stdgo.GoUInt64), (101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64), (201i64 : stdgo.GoUInt64), (202i64 : stdgo.GoUInt64), (203i64 : stdgo.GoUInt64), (204i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("ReadMany" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (50 : stdgo.GoInt), (50 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (500i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(502i64 : stdgo.GoUInt64), (504i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[(506 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(23, 23, ...[
(10i64 : stdgo.GoUInt64),
(1i64 : stdgo.GoUInt64),
(2i64 : stdgo.GoUInt64),
(3i64 : stdgo.GoUInt64),
(4i64 : stdgo.GoUInt64),
(5i64 : stdgo.GoUInt64),
(6i64 : stdgo.GoUInt64),
(7i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
(9i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
(99i64 : stdgo.GoUInt64),
(101i64 : stdgo.GoUInt64),
(102i64 : stdgo.GoUInt64),
(201i64 : stdgo.GoUInt64),
(202i64 : stdgo.GoUInt64),
(203i64 : stdgo.GoUInt64),
(204i64 : stdgo.GoUInt64),
(5i64 : stdgo.GoUInt64),
(500i64 : stdgo.GoUInt64),
(502i64 : stdgo.GoUInt64),
(504i64 : stdgo.GoUInt64),
(506i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(3, 3, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("ReadManyShortData" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (50 : stdgo.GoInt), (50 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(18, 18, ...[
(10i64 : stdgo.GoUInt64),
(1i64 : stdgo.GoUInt64),
(2i64 : stdgo.GoUInt64),
(3i64 : stdgo.GoUInt64),
(4i64 : stdgo.GoUInt64),
(5i64 : stdgo.GoUInt64),
(6i64 : stdgo.GoUInt64),
(7i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
(9i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
(99i64 : stdgo.GoUInt64),
(101i64 : stdgo.GoUInt64),
(102i64 : stdgo.GoUInt64),
(201i64 : stdgo.GoUInt64),
(202i64 : stdgo.GoUInt64),
(203i64 : stdgo.GoUInt64),
(204i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(2, 2, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("ReadManyShortTags" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (50 : stdgo.GoInt), (50 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(18, 18, ...[
(10i64 : stdgo.GoUInt64),
(1i64 : stdgo.GoUInt64),
(2i64 : stdgo.GoUInt64),
(3i64 : stdgo.GoUInt64),
(4i64 : stdgo.GoUInt64),
(5i64 : stdgo.GoUInt64),
(6i64 : stdgo.GoUInt64),
(7i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
(9i64 : stdgo.GoUInt64),
(8i64 : stdgo.GoUInt64),
(99i64 : stdgo.GoUInt64),
(101i64 : stdgo.GoUInt64),
(102i64 : stdgo.GoUInt64),
(201i64 : stdgo.GoUInt64),
(202i64 : stdgo.GoUInt64),
(203i64 : stdgo.GoUInt64),
(204i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(2, 2, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("ReadAfterOverflow1" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (16 : stdgo.GoInt), (5 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(2, 2, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(6, 6, ...[(6i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(9, 9, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr), (205 : stdgo.GoUIntptr), (206 : stdgo.GoUIntptr), (207 : stdgo.GoUIntptr), (208 : stdgo.GoUIntptr), (209 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (299 : stdgo.GoInt) : Bool), _i++, {
                    _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(3 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (((100 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
                });
            };
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (500i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(502i64 : stdgo.GoUInt64), (504i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[(506 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(5i64 : stdgo.GoUInt64), (99i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (300i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (500i64 : stdgo.GoUInt64), (502i64 : stdgo.GoUInt64), (504i64 : stdgo.GoUInt64), (506i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(2, 2, ...[@:default_value null, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("ReadAfterOverflow2" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (16 : stdgo.GoInt), (5 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(13, 13, ...[
(201 : stdgo.GoUIntptr),
(202 : stdgo.GoUIntptr),
(203 : stdgo.GoUIntptr),
(204 : stdgo.GoUIntptr),
(205 : stdgo.GoUIntptr),
(206 : stdgo.GoUIntptr),
(207 : stdgo.GoUIntptr),
(208 : stdgo.GoUIntptr),
(209 : stdgo.GoUIntptr),
(210 : stdgo.GoUIntptr),
(211 : stdgo.GoUIntptr),
(212 : stdgo.GoUIntptr),
(213 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (299 : stdgo.GoInt) : Bool), _i++, {
                    _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(3 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (100i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
                });
            };
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (500i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(502i64 : stdgo.GoUInt64), (504i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(0, 0, ...[]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(5, 5, ...[(5i64 : stdgo.GoUInt64), (99i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (301i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[@:default_value null]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (500i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(502i64 : stdgo.GoUInt64), (505i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[(506 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(5, 5, ...[(5i64 : stdgo.GoUInt64), (500i64 : stdgo.GoUInt64), (502i64 : stdgo.GoUInt64), (505i64 : stdgo.GoUInt64), (506i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("ReadAtEndAfterOverflow" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (12 : stdgo.GoInt), (5 : stdgo.GoInt));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (299 : stdgo.GoInt) : Bool), _i++, {
                    _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(3 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (100i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
                });
            };
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(5, 5, ...[(5i64 : stdgo.GoUInt64), (99i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (300i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[@:default_value null]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (500i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(502i64 : stdgo.GoUInt64), (504i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[(506 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(5, 5, ...[(5i64 : stdgo.GoUInt64), (500i64 : stdgo.GoUInt64), (502i64 : stdgo.GoUInt64), (504i64 : stdgo.GoUInt64), (506i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        });
        _t.run(("BlockingWriteRead" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (11 : stdgo.GoInt), (1 : stdgo.GoInt));
            var _wait = (_readBlock(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>)) : () -> Void);
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _wait();
            _wait = _readBlock(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(8, 8, ...[(8i64 : stdgo.GoUInt64), (99i64 : stdgo.GoUInt64), (101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64), (201i64 : stdgo.GoUInt64), (202i64 : stdgo.GoUInt64), (203i64 : stdgo.GoUInt64), (204i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
            _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(2 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (99i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(101i64 : stdgo.GoUInt64), (102i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(4, 4, ...[(201 : stdgo.GoUIntptr), (202 : stdgo.GoUIntptr), (203 : stdgo.GoUIntptr), (204 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
            _wait();
            _wait = _readBlock(_t, _b, (null : stdgo.Slice<stdgo.GoUInt64>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _b.close();
            _wait();
            _wait = _readBlock(_t, _b, (null : stdgo.Slice<stdgo.GoUInt64>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            _wait();
            _readEOF(_t, _b);
        });
        _t.run(("DataWraparound" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (16 : stdgo.GoInt), (1024 : stdgo.GoInt));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
                    _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
                    _read(_t, _b, (null : stdgo.Slice<stdgo.GoUInt64>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
                });
            };
        });
        _t.run(("TagWraparound" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (1024 : stdgo.GoInt), (2 : stdgo.GoInt));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
                    _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
                    _read(_t, _b, (null : stdgo.Slice<stdgo.GoUInt64>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
                });
            };
        });
        _t.run(("BothWraparound" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b = stdgo._internal.runtime.Runtime_newProfBuf.newProfBuf((2 : stdgo.GoInt), (16 : stdgo.GoInt), (2 : stdgo.GoInt));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _write(_t, _b, (stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (1i64 : stdgo.GoInt64), (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo.GoUIntptr>(6, 6, ...[(4 : stdgo.GoUIntptr), (5 : stdgo.GoUIntptr), (6 : stdgo.GoUIntptr), (7 : stdgo.GoUIntptr), (8 : stdgo.GoUIntptr), (9 : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>));
                    _read(_t, _b, (new stdgo.Slice<stdgo.GoUInt64>(10, 10, ...[(10i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64), (5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64), (7i64 : stdgo.GoUInt64), (8i64 : stdgo.GoUInt64), (9i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>), (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>(1, 1, ...[(stdgo.Go.toInterface(stdgo.Go.pointer(_myTags[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)]) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
                    _read(_t, _b, (null : stdgo.Slice<stdgo.GoUInt64>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
                });
            };
        });
    }
