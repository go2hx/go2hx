package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in _internal.strings_test.Strings_test__toValidUTF8Tests._toValidUTF8Tests) {
            var _got = (stdgo._internal.strings.Strings_toValidUTF8.toValidUTF8(_tc._in?.__copy__(), _tc._repl?.__copy__())?.__copy__() : stdgo.GoString);
            if (_got != (_tc._out)) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._repl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
