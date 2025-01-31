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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse_static_extension.T_minimizeResponse_static_extension) class T_minimizeResponse {
    public var wroteToMem : Bool = false;
    public var err : stdgo.GoString = "";
    public var coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var duration : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var count : stdgo.GoInt64 = 0;
    public function new(?wroteToMem:Bool, ?err:stdgo.GoString, ?coverageData:stdgo.Slice<stdgo.GoUInt8>, ?duration:stdgo._internal.time.Time_Duration.Duration, ?count:stdgo.GoInt64) {
        if (wroteToMem != null) this.wroteToMem = wroteToMem;
        if (err != null) this.err = err;
        if (coverageData != null) this.coverageData = coverageData;
        if (duration != null) this.duration = duration;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_minimizeResponse(wroteToMem, err, coverageData, duration, count);
    }
}
