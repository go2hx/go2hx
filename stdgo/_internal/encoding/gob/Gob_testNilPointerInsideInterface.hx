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
function testNilPointerInsideInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        var _si = ({ i : stdgo.Go.toInterface(_ip) } : stdgo._internal.encoding.gob.Gob_Struct0.Struct0);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_si))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error, got none" : stdgo.GoString)));
        };
        var _errMsg = (_err.error()?.__copy__() : stdgo.GoString);
        if ((!stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString)) || !stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("interface" : stdgo.GoString)) : Bool)) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error about nil pointer and interface, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
