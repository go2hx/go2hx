package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("0123456789" : stdgo.GoString));
        var _tests = (new stdgo.Slice<_internal.strings_test.Strings_test_T__struct_3.T__struct_3>(9, 9, ...[({ _seek : (0 : stdgo.GoInt), _off : (0i64 : stdgo.GoInt64), _n : (20 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (0 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _want : ("1" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (3i64 : stdgo.GoInt64), _n : (2 : stdgo.GoInt), _want : ("34" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (0 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _seekerr : ("strings.Reader.Seek: negative position" : stdgo.GoString), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (0 : stdgo.GoInt), _off : (8589934592i64 : stdgo.GoInt64), _wantpos : (8589934592i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io_eof.eof, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (1 : stdgo.GoInt), _off : (1i64 : stdgo.GoInt64), _wantpos : (8589934593i64 : stdgo.GoInt64), _readerr : stdgo._internal.io.Io_eof.eof, _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (0 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("01234" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (1 : stdgo.GoInt), _n : (5 : stdgo.GoInt), _want : ("56789" : stdgo.GoString), _off : (0 : stdgo.GoInt64), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3), ({ _seek : (2 : stdgo.GoInt), _off : (-1i64 : stdgo.GoInt64), _n : (1 : stdgo.GoInt), _wantpos : (9i64 : stdgo.GoInt64), _want : ("9" : stdgo.GoString), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _seek : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wantpos : (0 : stdgo.GoInt64), _readerr : (null : stdgo.Error), _seekerr : ("" : stdgo.GoString) } : _internal.strings_test.Strings_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.strings_test.Strings_test_T__struct_3.T__struct_3>);
        for (_i => _tt in _tests) {
            var __tmp__ = _r.seek(_tt._off, _tt._seek), _pos:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_tt._seekerr != stdgo.Go.str()) : Bool)) {
                _t.errorf(("%d. want seek error %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if (((_err != null) && (_err.error() != _tt._seekerr) : Bool)) {
                _t.errorf(("%d. seek error = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(_tt._seekerr));
                continue;
            };
            if (((_tt._wantpos != (0i64 : stdgo.GoInt64)) && (_tt._wantpos != _pos) : Bool)) {
                _t.errorf(("%d. pos = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._wantpos));
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._readerr))) {
                _t.errorf(("%d. read = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._readerr));
                continue;
            };
            var _got = (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
