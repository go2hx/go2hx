package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
function _isIP(_host:stdgo.GoString):Bool {
        return stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__()) != null;
    }
