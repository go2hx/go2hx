package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _unhex(_c:stdgo.GoUInt8):stdgo.GoUInt8 {
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
        } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
            return ((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
        } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
            return ((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        return (0 : stdgo.GoUInt8);
    }
