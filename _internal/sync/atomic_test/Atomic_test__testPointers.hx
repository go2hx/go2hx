package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _testPointers():stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        var _pointers:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _pointers = (_pointers.__append__((stdgo.Go.toInterface(stdgo.Go.pointer(_internal.sync.atomic_test.Atomic_test__global._global[(((1 : stdgo.GoInt) << _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)));
            });
        };
        _pointers = (_pointers.__append__((stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt8))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)));
        _pointers = (_pointers.__append__(@:default_value null));
        return _pointers;
    }
