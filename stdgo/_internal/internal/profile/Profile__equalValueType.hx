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
function _equalValueType(_st1:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>, _st2:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>):Bool {
        return (((@:checkr _st1 ?? throw "null pointer dereference").type == (@:checkr _st2 ?? throw "null pointer dereference").type) && ((@:checkr _st1 ?? throw "null pointer dereference").unit == (@:checkr _st2 ?? throw "null pointer dereference").unit) : Bool);
    }
