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
function testMutipleEncodingsOfBadType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = ({ name : ("name" : stdgo.GoString), secret : (new stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret((1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret) } : stdgo._internal.encoding.gob.Gob_Bug4Public.Bug4Public);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("first encoding: expected error" : stdgo.GoString)));
        };
        @:check2r _buf.reset();
        _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        _err = @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("second encoding: expected error" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("no exported fields" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected error about no exported fields; got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
