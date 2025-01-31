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
function _godebugSeed():stdgo.Pointer<stdgo.GoInt> {
        var _debug = stdgo._internal.strings.Strings_split.split(stdgo._internal.os.Os_getenv.getenv(("GODEBUG" : stdgo.GoString))?.__copy__(), ("," : stdgo.GoString));
        for (__8 => _f in _debug) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))?.__copy__()), _seed:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _seed__pointer__ = stdgo.Go.pointer(_seed);
                if (_err != null) {
                    throw stdgo.Go.toInterface(("malformed fuzzseed" : stdgo.GoString));
                };
                return _seed__pointer__;
            };
        };
        return (null : stdgo.Pointer<stdgo.GoInt>);
    }
