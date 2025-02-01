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
function _extractHexAddresses(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.GoUInt64>; } {
        var _hexStrings = @:check2r stdgo._internal.internal.profile.Profile__hexNumberRE._hexNumberRE.findAllString(_s?.__copy__(), (-1 : stdgo.GoInt));
        var _ids:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        for (__0 => _s in _hexStrings) {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _id:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ids = (_ids.__append__(_id));
                } else {
                    throw stdgo.Go.toInterface((("failed to parse hex value:" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString));
                };
            };
        };
        return { _0 : _hexStrings, _1 : _ids };
    }
