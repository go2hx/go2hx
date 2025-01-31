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
function _byteSliceArithmeticUint16(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _v = ((@:check2r _m._rand((35 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16);
        if ((@:checkr _m ?? throw "null pointer dereference")._r._bool()) {
            _v = ((0 : stdgo.GoUInt16) - _v : stdgo.GoUInt16);
        };
        var _pos = (@:check2r _m._rand(((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _enc = (@:check2r _m._randByteOrder() : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder);
        _enc.putUint16((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), (_enc.uint16((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>)) + _v : stdgo.GoUInt16));
        return _b;
    }
