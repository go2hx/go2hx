package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), stdgo.Go.str()?.__copy__());
        _b.writeString(("aaa" : stdgo.GoString));
        var _s = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("aaa" : stdgo.GoString));
        _b.reset();
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), stdgo.Go.str()?.__copy__());
        _b.writeString(("bbb" : stdgo.GoString));
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("bbb" : stdgo.GoString));
        {
            var _want = ("aaa" : stdgo.GoString);
            if (_s != (_want)) {
                _t.errorf(("previous String result changed after Reset: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
            };
        };
    }
