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
function _checkId(_want:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _got:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void {
        if (_want != (_got)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("checkId: %d should be %d\n" : stdgo.GoString), stdgo.Go.toInterface((_got : stdgo.GoInt)), stdgo.Go.toInterface((_want : stdgo.GoInt)));
            throw stdgo.Go.toInterface((((((("bootstrap type wrong id: " : stdgo.GoString) + _got._name()?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _got._string()?.__copy__() : stdgo.GoString) + (" not " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _want._string()?.__copy__() : stdgo.GoString));
        };
    }
