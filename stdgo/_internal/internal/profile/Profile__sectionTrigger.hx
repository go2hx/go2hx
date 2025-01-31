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
function _sectionTrigger(_line:stdgo.GoString):stdgo._internal.internal.profile.Profile_T_sectionType.T_sectionType {
        for (__0 => _trigger in stdgo._internal.internal.profile.Profile__memoryMapTriggers._memoryMapTriggers) {
            if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), _trigger?.__copy__())) {
                return (1 : stdgo._internal.internal.profile.Profile_T_sectionType.T_sectionType);
            };
        };
        return (0 : stdgo._internal.internal.profile.Profile_T_sectionType.T_sectionType);
    }
