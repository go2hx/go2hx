package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = {
            var s:stdgo.GoArray<_internal.bytes_test.Bytes_test_T__struct_4.T__struct_4> = new stdgo.GoArray<_internal.bytes_test.Bytes_test_T__struct_4.T__struct_4>(7, 7, ...[for (i in 0 ... 7) ({ _s : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : ("" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4)]);
            s[0] = ({ _s : ("--" : stdgo.GoString), _count : (-2147483647 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s[1] = ({ _s : stdgo.Go.str()?.__copy__(), _count : ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s[2] = ({ _s : ("-" : stdgo.GoString), _count : (10 : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s[3] = ({ _s : ("gopher" : stdgo.GoString), _count : (0 : stdgo.GoInt), _errStr : stdgo.Go.str()?.__copy__() } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s[4] = ({ _s : ("-" : stdgo.GoString), _count : (-1 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s[5] = ({ _s : ("--" : stdgo.GoString), _count : (-102 : stdgo.GoInt), _errStr : ("negative" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s[6] = ({ _s : ((new stdgo.Slice<stdgo.GoUInt8>((255 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _count : ((16843010u32 : stdgo.GoUInt) : stdgo.GoInt), _errStr : ("overflow" : stdgo.GoString) } : _internal.bytes_test.Bytes_test_T__struct_4.T__struct_4);
            s;
        };
        for (_i => _tt in _tests) {
            var _err = (_internal.bytes_test.Bytes_test__repeat._repeat((_tt._s : stdgo.Slice<stdgo.GoUInt8>), _tt._count) : stdgo.Error);
            if (_tt._errStr == (stdgo.Go.str())) {
                if (_err != null) {
                    _t.errorf(("#%d panicked %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _tt._errStr?.__copy__()) : Bool)) {
                _t.errorf(("#%d expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._errStr), stdgo.Go.toInterface(_err));
            };
        };
    }
