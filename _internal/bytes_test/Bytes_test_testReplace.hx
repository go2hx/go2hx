package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test_replaceTests.replaceTests) {
            var _in = ((_tt._in : stdgo.Slice<stdgo.GoUInt8>).__append__(...(("<spare>" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _in = (_in.__slice__(0, (_tt._in.length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _out = stdgo._internal.bytes.Bytes_replace.replace(_in, (_tt._old : stdgo.Slice<stdgo.GoUInt8>), (_tt._new : stdgo.Slice<stdgo.GoUInt8>), _tt._n);
            {
                var _s = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
            if (((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)])) : Bool)) {
                _t.errorf(("Replace(%q, %q, %q, %d) didn\'t copy" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n));
            };
            if (_tt._n == ((-1 : stdgo.GoInt))) {
                var _out = stdgo._internal.bytes.Bytes_replaceAll.replaceAll(_in, (_tt._old : stdgo.Slice<stdgo.GoUInt8>), (_tt._new : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var _s = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._out)) {
                        _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
