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
function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error {
        if ((_vals.length) != ((_types.length))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of values in corpus entry: %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_vals.length)), stdgo.Go.toInterface((_types.length)));
        };
        var _valsT = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>((_vals.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        for (_valsI => _v in _vals) {
            _valsT[(_valsI : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_typeOf.typeOf(_v);
        };
        for (_i => _ in _types) {
            if (!((_valsT[(_i : stdgo.GoInt)].string() : String) == (_types[(_i : stdgo.GoInt)].string() : String))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched types in corpus entry: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_valsT), stdgo.Go.toInterface(_types));
            };
        };
        return (null : stdgo.Error);
    }
