package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _rot13(_r:stdgo.GoInt32):stdgo.GoInt32 {
        var _step = ((13 : stdgo.GoInt32) : stdgo.GoInt32);
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + _step : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + _step : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (65 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return _r;
    }
