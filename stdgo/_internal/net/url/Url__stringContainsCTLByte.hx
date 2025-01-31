package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _stringContainsCTLByte(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b == (127 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
                _i++;
            };
        };
        return false;
    }
