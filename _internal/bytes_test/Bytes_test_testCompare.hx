package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test__compareTests._compareTests) {
            var _numShifts = (16 : stdgo.GoInt);
            var _buffer = (new stdgo.Slice<stdgo.GoUInt8>(((_tt._b.length) + _numShifts : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _offset = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_offset <= _numShifts : Bool), _offset++, {
                    var _shiftedB = (_buffer.__slice__(_offset, ((_tt._b.length) + _offset : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    stdgo.Go.copySlice(_shiftedB, _tt._b);
                    var _cmp = (stdgo._internal.bytes.Bytes_compare.compare(_tt._a, _shiftedB) : stdgo.GoInt);
                    if (_cmp != (_tt._i)) {
                        _t.errorf(("Compare(%q, %q), offset %d = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_cmp), stdgo.Go.toInterface(_tt._i));
                    };
                });
            };
        };
    }
