package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _b = __1, _a = __0;
        var _tests:stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_16.T__struct_16> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_16.T__struct_16>(40, 40, ...[
({ _name : ("newline in both" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n%d\n" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("newline in input" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d %d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space-newline in input" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d %d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("newline in format" : stdgo.GoString), _text : ("1 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space-newline in format" : stdgo.GoString), _text : ("1 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space-newline in both" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("extra space in format" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("two extra spaces in format" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0000" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0001" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0010" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0011" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0100" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0101" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d\n%d " : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0110" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 0111" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1000" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1001" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1010" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1011" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1100" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1101" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1110" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline 1111" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0000" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0001" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0010" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0011" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0100" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0101" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1\n2 " : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0110" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 0111" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1000" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1001" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1010" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1011" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1100" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1101" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1110" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16),
({ _name : ("space vs newline no-percent 1111" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16)].concat([for (i in 40 ... (40 > 40 ? 40 : 40 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _format : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : _internal.fmt_test.Fmt_test_T__struct_16.T__struct_16)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_T__struct_16.T__struct_16>);
        for (__2 => _test in _tests) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err:stdgo.Error = (null : stdgo.Error);
            if (stdgo._internal.strings.Strings_contains.contains(_test._format?.__copy__(), ("%" : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_test._text?.__copy__(), _test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_test._text?.__copy__(), _test._format?.__copy__());
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._count), stdgo.Go.toInterface(_n));
            };
            if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            };
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
