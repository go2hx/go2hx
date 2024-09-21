package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testIndexRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_2.T__struct_2>(19, 19, ...[
({ _in : stdgo.Go.str()?.__copy__(), _rune : (97 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str()?.__copy__(), _rune : (9786 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("foo" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("foo" : stdgo.GoString), _rune : (111 : stdgo.GoInt32), _want : (1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("foo☺bar" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("foo☺☻☹bar" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("a A x" : stdgo.GoString), _rune : (65 : stdgo.GoInt32), _want : (2 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("some_text=some_value" : stdgo.GoString), _rune : (61 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("☺a" : stdgo.GoString), _rune : (97 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("a☻☺b" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (4 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str(255)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : ("☻x�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152, "�")?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str("☻x", 226, 152, "x")?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (("☻x" : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (-1 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (55296 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2),
({ _in : stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128)?.__copy__(), _rune : (1114112 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _rune : (0 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_2.T__struct_2>);
        for (__0 => _tt in _tests) {
            {
                var _got = (stdgo._internal.bytes.Bytes_indexRune.indexRune((_tt._in : stdgo.Slice<stdgo.GoUInt8>), _tt._rune) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._rune), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
        var _haystack = (("test世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            {
                var _i = (stdgo._internal.bytes.Bytes_indexRune.indexRune(_haystack, (115 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((2 : stdgo.GoInt))) {
                    _t.fatalf(("\'s\' at %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
            {
                var _i = (stdgo._internal.bytes.Bytes_indexRune.indexRune(_haystack, (19990 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((4 : stdgo.GoInt))) {
                    _t.fatalf(("\'世\' at %d; want 4" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
