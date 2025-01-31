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
var _countStartRE : stdgo.Ref<_internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp> = _internal.internal.lazyregexp.Lazyregexp_new_.new_(("\\A(\\w+) profile: total \\d+\\n\\z" : stdgo.GoString));
