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
function _diffCoverage(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_base.length) != ((_snapshot.length))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("the number of coverage bits changed: before=%d, after=%d" : stdgo.GoString), stdgo.Go.toInterface((_base.length)), stdgo.Go.toInterface((_snapshot.length))));
        };
        var _found = (false : Bool);
        for (_i => _ in _snapshot) {
            if ((_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _found = true;
                break;
            };
        };
        if (!_found) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _diff = (new stdgo.Slice<stdgo.GoUInt8>((_snapshot.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _diff) {
            _diff[(_i : stdgo.GoInt)] = (_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        return _diff;
    }
