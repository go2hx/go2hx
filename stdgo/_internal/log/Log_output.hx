package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error {
        return @:check2r stdgo._internal.log.Log__std._std.output((_calldepth + (1 : stdgo.GoInt) : stdgo.GoInt), _s?.__copy__());
    }
