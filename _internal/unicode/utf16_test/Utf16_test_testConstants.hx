package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.errorf(("utf16.maxRune is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)));
        };
        if (false) {
            _t.errorf(("utf16.replacementChar is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((65533 : stdgo.GoInt32)));
        };
    }
