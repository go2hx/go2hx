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
function _newMutator():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator> {
        return (stdgo.Go.setRef(({ _r : stdgo.Go.asInterface(stdgo._internal.internal.fuzz.Fuzz__newPcgRand._newPcgRand()) } : stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
    }
