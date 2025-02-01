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
var _briefMapsRE : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp> = stdgo._internal.internal.lazyregexp.Lazyregexp_new_.new_(("\\s*([[:xdigit:]]+)-([[:xdigit:]]+):\\s*(\\S+)(\\s.*@)?([[:xdigit:]]+)?" : stdgo.GoString));
