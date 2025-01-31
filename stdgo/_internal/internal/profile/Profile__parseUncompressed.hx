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
function _parseUncompressed(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef((new stdgo._internal.internal.profile.Profile_Profile.Profile() : stdgo._internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        {
            var _err = (stdgo._internal.internal.profile.Profile__unmarshal._unmarshal(_data, stdgo.Go.asInterface(_p)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        {
            var _err = (@:check2r _p._postDecode() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
