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
function _pow2(_i:stdgo.GoInt):stdgo.GoFloat64 {
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return ((1 : stdgo.GoFloat64) / _internal.strconv_test.Strconv_test__pow2._pow2(-_i) : stdgo.GoFloat64);
        } else if (_i == ((0 : stdgo.GoInt))) {
            return (1 : stdgo.GoFloat64);
        } else if (_i == ((1 : stdgo.GoInt))) {
            return (2 : stdgo.GoFloat64);
        };
        return (_internal.strconv_test.Strconv_test__pow2._pow2((_i / (2 : stdgo.GoInt) : stdgo.GoInt)) * _internal.strconv_test.Strconv_test__pow2._pow2((_i - (_i / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoFloat64);
    }
