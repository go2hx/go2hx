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
function _newPcgRand():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand>);
        var _now = (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoUInt64);
        {
            var _seed = stdgo._internal.internal.fuzz.Fuzz__godebugSeed._godebugSeed();
            if (_seed != null) {
                _now = (_seed.value : stdgo.GoUInt64);
            };
        };
        var _inc = (stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(stdgo.Go.pointer(stdgo._internal.internal.fuzz.Fuzz__globalInc._globalInc), (1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference")._state = _now;
        (@:checkr _r ?? throw "null pointer dereference")._inc = (((_inc << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        @:check2r _r._step();
        (@:checkr _r ?? throw "null pointer dereference")._state = ((@:checkr _r ?? throw "null pointer dereference")._state + (_now) : stdgo.GoUInt64);
        @:check2r _r._step();
        return _r;
    }
