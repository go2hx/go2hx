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
function snapshotCoverage():Void {
        var _cov = stdgo._internal.internal.fuzz.Fuzz__coverage._coverage();
        for (_i => _b in _cov) {
            _b = (_b | ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _b = (_b | ((_b >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _b = (_b | ((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _b = (_b - ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            stdgo._internal.internal.fuzz.Fuzz__coverageSnapshot._coverageSnapshot[(_i : stdgo.GoInt)] = _b;
        };
    }
