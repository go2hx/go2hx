package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in _internal.bytes_test.Bytes_test__trimFuncTests._trimFuncTests) {
            var _trimmers = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_5.T__struct_5>(3, 3, ...[({ _name : ("TrimFunc" : stdgo.GoString), _trim : stdgo._internal.bytes.Bytes_trimFunc.trimFunc, _out : _tc._trimOut } : _internal.bytes_test.Bytes_test_T__struct_5.T__struct_5), ({ _name : ("TrimLeftFunc" : stdgo.GoString), _trim : stdgo._internal.bytes.Bytes_trimLeftFunc.trimLeftFunc, _out : _tc._leftOut } : _internal.bytes_test.Bytes_test_T__struct_5.T__struct_5), ({ _name : ("TrimRightFunc" : stdgo.GoString), _trim : stdgo._internal.bytes.Bytes_trimRightFunc.trimRightFunc, _out : _tc._rightOut } : _internal.bytes_test.Bytes_test_T__struct_5.T__struct_5)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _trim : null, _out : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.bytes_test.Bytes_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_5.T__struct_5>);
            for (__1 => _trimmer in _trimmers) {
                var _actual = _trimmer._trim((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._f._f);
                if (((_actual == null) && (_trimmer._out != null) : Bool)) {
                    _t.errorf(("%s(%q, %q) = nil; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_trimmer._out));
                };
                if (((_actual != null) && (_trimmer._out == null) : Bool)) {
                    _t.errorf(("%s(%q, %q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _trimmer._out)) {
                    _t.errorf(("%s(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_trimmer._name), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_trimmer._out));
                };
            };
        };
    }
