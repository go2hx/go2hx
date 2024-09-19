package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilderString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _b.writeString(("alpha" : stdgo.GoString));
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("alpha" : stdgo.GoString));
        var _s1 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.writeString(("beta" : stdgo.GoString));
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("alphabeta" : stdgo.GoString));
        var _s2 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.writeString(("gamma" : stdgo.GoString));
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("alphabetagamma" : stdgo.GoString));
        var _s3 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _want = ("alpha" : stdgo.GoString);
            if (_s1 != (_want)) {
                _t.errorf(("first String result is now %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _want = ("alphabeta" : stdgo.GoString);
            if (_s2 != (_want)) {
                _t.errorf(("second String result is now %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _want = ("alphabetagamma" : stdgo.GoString);
            if (_s3 != (_want)) {
                _t.errorf(("third String result is now %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_want));
            };
        };
    }
