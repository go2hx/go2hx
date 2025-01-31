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
function _focusedSample(_s:stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>, _focus:stdgo._internal.internal.profile.Profile_TagMatch.TagMatch, _ignore:stdgo._internal.internal.profile.Profile_TagMatch.TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        var _fm = false, _im = false;
        _fm = _focus == null;
        for (_key => _vals in (@:checkr _s ?? throw "null pointer dereference").label) {
            for (__0 => _val in _vals) {
                if (((_ignore != null) && _ignore(_key?.__copy__(), _val?.__copy__(), (0i64 : stdgo.GoInt64)) : Bool)) {
                    _im = true;
                };
                if ((!_fm && _focus(_key?.__copy__(), _val?.__copy__(), (0i64 : stdgo.GoInt64)) : Bool)) {
                    _fm = true;
                };
            };
        };
        for (_key => _vals in (@:checkr _s ?? throw "null pointer dereference").numLabel) {
            for (__0 => _val in _vals) {
                if (((_ignore != null) && _ignore(_key?.__copy__(), stdgo.Go.str()?.__copy__(), _val) : Bool)) {
                    _im = true;
                };
                if ((!_fm && _focus(_key?.__copy__(), stdgo.Go.str()?.__copy__(), _val) : Bool)) {
                    _fm = true;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _fm, _1 : _im };
            _fm = __tmp__._0;
            _im = __tmp__._1;
            __tmp__;
        };
    }
