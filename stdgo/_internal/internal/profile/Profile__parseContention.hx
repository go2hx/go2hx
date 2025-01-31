package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
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
function _parseContention(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                _l = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (!stdgo._internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_l?.__copy__())) {
                break;
            };
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("--- contentionz " : stdgo.GoString))) {
            return stdgo._internal.internal.profile.Profile__parseCppContention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("--- mutex:" : stdgo.GoString))) {
            return stdgo._internal.internal.profile.Profile__parseCppContention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("--- contention:" : stdgo.GoString))) {
            return stdgo._internal.internal.profile.Profile__parseCppContention._parseCppContention(_r);
        };
        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }
