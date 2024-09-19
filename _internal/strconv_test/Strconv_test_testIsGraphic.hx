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
function testIsGraphic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (0 : stdgo.GoInt);
        {
            var _r = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r <= (1114111 : stdgo.GoInt32) : Bool), _r++, {
                if (stdgo._internal.strconv.Strconv_isGraphic.isGraphic(_r) != (stdgo._internal.unicode.Unicode_isGraphic.isGraphic(_r))) {
                    _t.errorf(("IsGraphic(%U)=%t incorrect" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_isGraphic.isGraphic(_r)));
                    _n++;
                    if ((_n > (10 : stdgo.GoInt) : Bool)) {
                        return;
                    };
                };
            });
        };
    }
