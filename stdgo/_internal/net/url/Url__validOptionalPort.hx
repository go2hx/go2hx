package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _validOptionalPort(_port:stdgo.GoString):Bool {
        if (_port == (stdgo.Go.str())) {
            return true;
        };
        if (_port[(0 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
            return false;
        };
        for (__0 => _b in (_port.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)) {
            if (((_b < (48 : stdgo.GoInt32) : Bool) || (_b > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
        };
        return true;
    }
