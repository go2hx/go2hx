package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testWriteStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tc in _internal.strings_test.Strings_test__algorithmTestCases._algorithmTestCases) {
            var __tmp__ = _tc._r.writeString(stdgo.Go.asInterface((new _internal.strings_test.Strings_test_T_errWriter.T_errWriter() : _internal.strings_test.Strings_test_T_errWriter.T_errWriter)), ("abc" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != ((0 : stdgo.GoInt)) || _err == null : Bool) || (_err.error() != ("unwritable" : stdgo.GoString)) : Bool)) {
                _t.errorf(("%d. WriteStringError = %d, %v, want 0, unwritable" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
