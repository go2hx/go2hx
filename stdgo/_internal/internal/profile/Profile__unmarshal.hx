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
function _unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _b = ({ _data : _data, _typ : (2 : stdgo.GoInt) } : stdgo._internal.internal.profile.Profile_T_buffer.T_buffer);
        return _err = stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>), _m);
    }
