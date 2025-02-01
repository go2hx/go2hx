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
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _newWorker(_c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _dir:stdgo.GoString, _binPath:stdgo.GoString, _args:stdgo.Slice<stdgo.GoString>, _env:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__sharedMemTempFile._sharedMemTempFile((104857600 : stdgo.GoInt)), _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _memMu = (new stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>);
        _memMu.__send__(_mem);
        return { _0 : (stdgo.Go.setRef(({ _dir : _dir?.__copy__(), _binPath : _binPath?.__copy__(), _args : _args, _env : (_env.__slice__(0, (_env.length), (_env.length)) : stdgo.Slice<stdgo.GoString>), _coordinator : _c, _memMu : _memMu } : stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>), _1 : (null : stdgo.Error) };
    }
