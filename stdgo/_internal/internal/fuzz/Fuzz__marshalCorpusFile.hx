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
function _marshalCorpusFile(_vals:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoUInt8> {
        var _vals = new stdgo.Slice<stdgo.AnyInterface>(_vals.length, 0, ..._vals);
        if ((_vals.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("must have at least one value to marshal" : stdgo.GoString));
        };
        var _b = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(((stdgo._internal.internal.fuzz.Fuzz__encVersion1._encVersion1 + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        for (__8 => _val in _vals) {
            {
                final __type__ = _val;
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64)) || stdgo.Go.typeEquals((__type__ : Bool))) {
                    var _t:stdgo.AnyInterface = __type__?.__underlying__();
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%T(%v)\n" : stdgo.GoString), _t, _t);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                    var _t:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    if ((stdgo._internal.math.Math_isNaN.isNaN((_t : stdgo.GoFloat64)) && (stdgo._internal.math.Math_float32bits.float32bits(_t) != stdgo._internal.math.Math_float32bits.float32bits((stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat32))) : Bool)) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("math.Float32frombits(0x%x)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math_float32bits.float32bits(_t)));
                    } else {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%T(%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                    var _t:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    if ((stdgo._internal.math.Math_isNaN.isNaN(_t) && (stdgo._internal.math.Math_float64bits.float64bits(_t) != stdgo._internal.math.Math_float64bits.float64bits(stdgo._internal.math.Math_naN.naN())) : Bool)) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("math.Float64frombits(0x%x)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math_float64bits.float64bits(_t)));
                    } else {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%T(%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _t:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("string(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                    var _t:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    if (stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_t)) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("rune(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                    } else {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("int32(%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                    var _t:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("byte(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    var _t:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("[]byte(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                } else {
                    var _t:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %T" : stdgo.GoString), _t));
                };
            };
        };
        return @:check2r _b.bytes();
    }
