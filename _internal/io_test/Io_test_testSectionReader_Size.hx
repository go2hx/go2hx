package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testSectionReader_Size(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.io_test.Io_test_T__struct_2.T__struct_2>(2, 2, ...[({ _data : ("a long sample data, 1234567890" : stdgo.GoString), _want : (30i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_2.T__struct_2), ({ _data : stdgo.Go.str()?.__copy__(), _want : (0i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_2.T__struct_2)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _data : ("" : stdgo.GoString), _want : (0 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.io_test.Io_test_T__struct_2.T__struct_2>);
        for (__0 => _tt in _tests) {
            var _r = stdgo._internal.strings.Strings_newReader.newReader(_tt._data?.__copy__());
            var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_r), (0i64 : stdgo.GoInt64), (_tt._data.length : stdgo.GoInt64));
            {
                var _got = (_sr.size() : stdgo.GoInt64);
                if (_got != (_tt._want)) {
                    _t.errorf(("Size = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
