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
var _zeroVals : stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(17, 17, ...[
stdgo.Go.toInterface((stdgo.Go.str() : stdgo.Slice<stdgo.GoUInt8>)),
stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString)),
stdgo.Go.toInterface(false),
stdgo.Go.toInterface((0 : stdgo.GoUInt8)),
stdgo.Go.toInterface((0 : stdgo.GoInt32)),
stdgo.Go.toInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface((0 : stdgo.GoFloat64)),
stdgo.Go.toInterface((0 : stdgo.GoInt)),
stdgo.Go.toInterface((0 : stdgo.GoInt8)),
stdgo.Go.toInterface((0 : stdgo.GoInt16)),
stdgo.Go.toInterface((0 : stdgo.GoInt32)),
stdgo.Go.toInterface((0i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((0u32 : stdgo.GoUInt)),
stdgo.Go.toInterface((0 : stdgo.GoUInt8)),
stdgo.Go.toInterface((0 : stdgo.GoUInt16)),
stdgo.Go.toInterface((0u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((0i64 : stdgo.GoUInt64))]) : stdgo.Slice<stdgo.AnyInterface>);
