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
function _parseInt(_val:stdgo.GoString, _typ:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        {
            final __value__ = _typ;
            if (__value__ == (("int" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt)), _1 : _err };
            } else if (__value__ == (("int8" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt8)), _1 : _err };
            } else if (__value__ == (("int16" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (16 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt16)), _1 : _err };
            } else if (__value__ == (("int32" : stdgo.GoString)) || __value__ == (("rune" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt32)), _1 : _err };
            } else if (__value__ == (("int64" : stdgo.GoString))) {
                return stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
