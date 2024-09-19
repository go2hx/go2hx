package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _want:stdgo.GoString):Void {
        _t.helper();
        var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("String: got %#q; want %#q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            return;
        };
        {
            var _n = (_b.len() : stdgo.GoInt);
            if (_n != ((_got.length))) {
                _t.errorf(("Len: got %d; but len(String()) is %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)));
            };
        };
        {
            var _n = (_b.cap() : stdgo.GoInt);
            if ((_n < (_got.length) : Bool)) {
                _t.errorf(("Cap: got %d; but len(String()) is %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)));
            };
        };
    }
