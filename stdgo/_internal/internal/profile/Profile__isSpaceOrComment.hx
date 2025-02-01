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
function _isSpaceOrComment(_line:stdgo.GoString):Bool {
        var _trimmed = (stdgo._internal.strings.Strings_trimSpace.trimSpace(_line?.__copy__())?.__copy__() : stdgo.GoString);
        return ((_trimmed.length == (0 : stdgo.GoInt)) || (_trimmed[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool);
    }
