package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
function _adapt(_delta:stdgo.GoInt32, _numPoints:stdgo.GoInt32, _firstTime:Bool):stdgo.GoInt32 {
        if (_firstTime) {
            _delta = (_delta / ((700 : stdgo.GoInt32)) : stdgo.GoInt32);
        } else {
            _delta = (_delta / ((2 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        _delta = (_delta + ((_delta / _numPoints : stdgo.GoInt32)) : stdgo.GoInt32);
        var _k = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        while ((_delta > (455 : stdgo.GoInt32) : Bool)) {
            _delta = (_delta / ((35 : stdgo.GoInt32)) : stdgo.GoInt32);
            _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        return (_k + (((36 : stdgo.GoInt32) * _delta : stdgo.GoInt32) / ((_delta + (38 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) : stdgo.GoInt32);
    }
