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
function benchmarkMakeSliceCopy(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _ints:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _ptrs:stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>> = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
        _b.run(("mallocmove" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<stdgo.GoUInt8>((_bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        stdgo.Go.copySlice(_x, _bytes);
                    });
                };
            });
            _b.run(("Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<stdgo.GoInt>((_ints.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        stdgo.Go.copySlice(_x, _ints);
                    });
                };
            });
            _b.run(("Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((_ptrs.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                        stdgo.Go.copySlice(_x, _ptrs);
                    });
                };
            });
        });
        _b.run(("makecopy" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        stdgo.Go.copySlice(_x, _bytes);
                    });
                };
            });
            _b.run(("Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<stdgo.GoInt>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                        stdgo.Go.copySlice(_x, _ints);
                    });
                };
            });
            _b.run(("Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                        stdgo.Go.copySlice(_x, _ptrs);
                    });
                };
            });
        });
        _b.run(("nilappend" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_bytes : Array<stdgo.GoUInt8>)));
                        var __blank__ = _x;
                    });
                };
            });
            _b.run(("Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = ((null : stdgo.Slice<stdgo.GoInt>).__append__(...(_ints : Array<stdgo.GoInt>)));
                        var __blank__ = _x;
                    });
                };
            });
            _b.run(("Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = ((null : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>).__append__(...(_ptrs : Array<stdgo.Pointer<stdgo.GoUInt8>>)));
                        var __blank__ = _x;
                    });
                };
            });
        });
    }
