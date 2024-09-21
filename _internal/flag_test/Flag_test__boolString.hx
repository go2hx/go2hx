package _internal.flag_test;
import stdgo._internal.flag.Flag;
function _boolString(_s:stdgo.GoString):stdgo.GoString {
        if (_s == (("0" : stdgo.GoString))) {
            return ("false" : stdgo.GoString);
        };
        return ("true" : stdgo.GoString);
    }
