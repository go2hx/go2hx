package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function _focusedAndNotIgnored(_locs:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>, _m:stdgo.GoMap<stdgo.GoUInt64, Bool>):Bool {
        var _f:Bool = false;
        for (__0 => _loc in _locs) {
            {
                var __tmp__ = (_m != null && _m.exists((@:checkr _loc ?? throw "null pointer dereference").iD) ? { _0 : _m[(@:checkr _loc ?? throw "null pointer dereference").iD], _1 : true } : { _0 : false, _1 : false }), _focus:Bool = __tmp__._0, _focusOrIgnore:Bool = __tmp__._1;
                if (_focusOrIgnore) {
                    if (_focus) {
                        _f = true;
                    } else {
                        return false;
                    };
                };
            };
        };
        return _f;
    }
