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
function _compatibleValueTypes(_v1:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>, _v2:stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>):Bool {
        if (((_v1 == null || (_v1 : Dynamic).__nil__) || (_v2 == null || (_v2 : Dynamic).__nil__) : Bool)) {
            return true;
        };
        return (((@:checkr _v1 ?? throw "null pointer dereference").type == (@:checkr _v2 ?? throw "null pointer dereference").type) && ((@:checkr _v1 ?? throw "null pointer dereference").unit == (@:checkr _v2 ?? throw "null pointer dereference").unit) : Bool);
    }
