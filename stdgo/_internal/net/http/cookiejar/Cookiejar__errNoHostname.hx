package stdgo._internal.net.http.cookiejar;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
var _errNoHostname : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("cookiejar: no host name available (IP only)" : stdgo.GoString));
