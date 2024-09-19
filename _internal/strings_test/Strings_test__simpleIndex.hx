package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt {
        var _n = (_sep.length : stdgo.GoInt);
        {
            var _i = (_n : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_s.length) : Bool), _i++, {
                if ((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.GoString) == (_sep)) {
                    return (_i - _n : stdgo.GoInt);
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
