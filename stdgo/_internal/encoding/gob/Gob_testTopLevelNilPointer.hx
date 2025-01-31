package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testTopLevelNilPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.gob.Gob__encodeAndRecover._encodeAndRecover(stdgo.Go.toInterface(_ip)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_encodeErr != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("error in encode:" : stdgo.GoString)), stdgo.Go.toInterface(_encodeErr));
        };
        if (_panicErr == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("top-level nil pointer did not panic" : stdgo.GoString)));
        };
        var _errMsg = (_panicErr.error()?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString))) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected nil pointer error, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
