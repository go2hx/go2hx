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
function _parseFakeTime(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>; var _1 : stdgo.Error; } {
        var _frames:stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame> = (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>);
        while ((_x.length) != ((0 : stdgo.GoInt))) {
            if (((_x.length) < (16 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>), _1 : stdgo._internal.errors.Errors_new_.new_(("truncated header" : stdgo.GoString)) };
            };
            {};
            if (((_x.__slice__(0, (stdgo.Go.str(0, 0, "PB").length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (stdgo.Go.str(0, 0, "PB"))) {
                return { _0 : (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>), _1 : stdgo._internal.errors.Errors_new_.new_(("bad magic" : stdgo.GoString)) };
            };
            _x = (_x.__slice__((stdgo.Go.str(0, 0, "PB").length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _time = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_x) : stdgo.GoUInt64);
            _x = (_x.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _dlen = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_x) : stdgo.GoUInt32);
            _x = (_x.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _data = (((_x.__slice__(0, _dlen) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _x = (_x.__slice__(_dlen) : stdgo.Slice<stdgo.GoUInt8>);
            _frames = (_frames.__append__((new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame(_time, _data?.__copy__()) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame)));
        };
        return { _0 : _frames, _1 : (null : stdgo.Error) };
    }
