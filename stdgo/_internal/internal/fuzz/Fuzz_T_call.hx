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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_call_static_extension.T_call_static_extension) class T_call {
    public var ping : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>);
    public var fuzz : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>);
    public var minimize : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>);
    public function new(?ping:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>, ?fuzz:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>, ?minimize:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>) {
        if (ping != null) this.ping = ping;
        if (fuzz != null) this.fuzz = fuzz;
        if (minimize != null) this.minimize = minimize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_call(ping, fuzz, minimize);
    }
}
