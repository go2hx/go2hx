package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__fieldstests._fieldstests) {
            var _a = stdgo._internal.strings.Strings_fieldsFunc.fieldsFunc(_tt._s?.__copy__(), stdgo._internal.unicode.Unicode_isSpace.isSpace);
            if (!_internal.strings_test.Strings_test__eq._eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred = (function(_c:stdgo.GoInt32):Bool {
            return _c == ((88 : stdgo.GoInt32));
        } : stdgo.GoInt32 -> Bool);
        for (__1 => _tt in _internal.strings_test.Strings_test_fieldsFuncTests.fieldsFuncTests) {
            var _a = stdgo._internal.strings.Strings_fieldsFunc.fieldsFunc(_tt._s?.__copy__(), _pred);
            if (!_internal.strings_test.Strings_test__eq._eq(_a, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
            };
        };
    }
