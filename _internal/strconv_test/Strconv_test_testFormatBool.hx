package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testFormatBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_b => _s in _internal.strconv_test.Strconv_test__boolString._boolString) {
            {
                var _f = (stdgo._internal.strconv.Strconv_formatBool.formatBool(_b)?.__copy__() : stdgo.GoString);
                if (_f != (_s)) {
                    _t.errorf(("FormatBool(%v): expected %q but got %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_f));
                };
            };
        };
    }
