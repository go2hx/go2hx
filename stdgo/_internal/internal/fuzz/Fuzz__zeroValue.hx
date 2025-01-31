package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _zeroValue(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.AnyInterface {
        for (__8 => _v in stdgo._internal.internal.fuzz.Fuzz__zeroVals._zeroVals) {
            if ((stdgo._internal.reflect.Reflect_typeOf.typeOf(_v).string() : String) == (_t.string() : String)) {
                return _v;
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %v" : stdgo.GoString), stdgo.Go.toInterface(_t)));
    }
