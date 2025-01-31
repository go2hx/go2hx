package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _p in stdgo._internal.encoding.base64.Base64__pairs._pairs) {
            for (__1 => _tt in stdgo._internal.encoding.base64.Base64__encodingTests._encodingTests) {
                var _got = (@:check2r _tt._enc.encodeToString((_p._decoded : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                stdgo._internal.encoding.base64.Base64__testEqual._testEqual(_t, ("Encode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_p._decoded), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._conv(_p._encoded?.__copy__())));
            };
        };
    }
