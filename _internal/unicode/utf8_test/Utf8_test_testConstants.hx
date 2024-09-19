package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.errorf(("utf8.MaxRune is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)));
        };
        if (false) {
            _t.errorf(("utf8.RuneError is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((65533 : stdgo.GoInt32)));
        };
    }
