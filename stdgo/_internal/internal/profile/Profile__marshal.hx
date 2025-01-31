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
function _marshal(_m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Slice<stdgo.GoUInt8> {
        var _b:stdgo._internal.internal.profile.Profile_T_buffer.T_buffer = ({} : stdgo._internal.internal.profile.Profile_T_buffer.T_buffer);
        _m._encode((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>));
        return _b._data;
    }
