package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test_unreadRuneErrorTests.unreadRuneErrorTests) {
            var _reader = stdgo._internal.strings.Strings_newReader.newReader(("0123456789" : stdgo.GoString));
            {
                var __tmp__ = _reader.readRune(), __1:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _tt._f(_reader);
            var _err = (_reader.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.errorf(("Unreading after %s: expected error" : stdgo.GoString), stdgo.Go.toInterface(_tt._name));
            };
        };
    }
