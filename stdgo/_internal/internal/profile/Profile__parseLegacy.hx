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
function _parseLegacy(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _parsers = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; }>(5, 5, ...[stdgo._internal.internal.profile.Profile__parseCPU._parseCPU, stdgo._internal.internal.profile.Profile__parseHeap._parseHeap, stdgo._internal.internal.profile.Profile__parseGoCount._parseGoCount, stdgo._internal.internal.profile.Profile__parseThread._parseThread, stdgo._internal.internal.profile.Profile__parseContention._parseContention]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; }>);
        for (__0 => _parser in _parsers) {
            var __tmp__ = _parser(_data), _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _p._setMain();
                @:check2r _p._addLegacyFrameInfo();
                return { _0 : _p, _1 : (null : stdgo.Error) };
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized))) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }
