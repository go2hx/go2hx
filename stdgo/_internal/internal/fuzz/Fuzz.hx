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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.internal.fuzz.Fuzz__coverageEnabled._coverageEnabled, __tmp__1 = stdgo._internal.internal.fuzz.Fuzz__coverageSnapshot._coverageSnapshot, __tmp__2 = stdgo._internal.internal.fuzz.Fuzz__encVersion1._encVersion1, __tmp__3 = stdgo._internal.internal.fuzz.Fuzz__zeroVals._zeroVals, __tmp__4 = stdgo._internal.internal.fuzz.Fuzz__debugInfo._debugInfo, __tmp__5 = stdgo._internal.internal.fuzz.Fuzz__interesting8._interesting8, __tmp__6 = stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16, __tmp__7 = stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32, __tmp__8 = stdgo._internal.internal.fuzz.Fuzz__byteSliceMutators._byteSliceMutators, __tmp__9 = stdgo._internal.internal.fuzz.Fuzz__errSharedMemClosed._errSharedMemClosed;
            for (__8 => _v in stdgo._internal.internal.fuzz.Fuzz__interesting8._interesting8) {
                stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16 = (stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16.__append__((_v : stdgo.GoInt16)));
            };
            for (__9 => _v in stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16) {
                stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32 = (stdgo._internal.internal.fuzz.Fuzz__interesting32._interesting32.__append__((_v : stdgo.GoInt32)));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
