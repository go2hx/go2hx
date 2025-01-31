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
function _isProfileType(_p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>, _t:stdgo.Slice<stdgo.GoString>):Bool {
        var _st = (@:checkr _p ?? throw "null pointer dereference").sampleType;
        if ((_st.length) != ((_t.length))) {
            return false;
        };
        for (_i => _ in _st) {
            if ((@:checkr _st[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").type != (_t[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
