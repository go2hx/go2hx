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
function benchmarkIssue18740(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _benchmarks = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_15.T__struct_15>(3, 3, ...[({ _name : ("2byte" : stdgo.GoString), _nbyte : (2 : stdgo.GoInt), _f : function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
            return (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16(_buf) : stdgo.GoUInt64);
        } } : _internal.runtime_test.Runtime_test_T__struct_15.T__struct_15), ({ _name : ("4byte" : stdgo.GoString), _nbyte : (4 : stdgo.GoInt), _f : function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
            return (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32(_buf) : stdgo.GoUInt64);
        } } : _internal.runtime_test.Runtime_test_T__struct_15.T__struct_15), ({ _name : ("8byte" : stdgo.GoString), _nbyte : (8 : stdgo.GoInt), _f : function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
            return stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64(_buf);
        } } : _internal.runtime_test.Runtime_test_T__struct_15.T__struct_15)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _nbyte : (0 : stdgo.GoInt), _f : null } : _internal.runtime_test.Runtime_test_T__struct_15.T__struct_15)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_15.T__struct_15>);
        var _g:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]);
        for (__6 => _bm in _benchmarks) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_bm._nbyte : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(_bm._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _b.n : Bool), _j++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (4096 : stdgo.GoInt) : Bool), _i = (_i + (_bm._nbyte) : stdgo.GoInt), {
                                stdgo.Go.copySlice((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_g.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                                _internal.runtime_test.Runtime_test__sink._sink = (_internal.runtime_test.Runtime_test__sink._sink + (_bm._f((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoUInt64);
                            });
                        };
                    });
                };
            });
        };
    }
