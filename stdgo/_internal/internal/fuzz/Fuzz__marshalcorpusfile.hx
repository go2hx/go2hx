package stdgo._internal.internal.fuzz;
function _marshalCorpusFile(_vals:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoUInt8> {
        var _vals = new stdgo.Slice<stdgo.AnyInterface>(_vals.length, 0, ..._vals);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L25"
        if ((_vals.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L26"
            throw stdgo.Go.toInterface(("must have at least one value to marshal" : stdgo.GoString));
        };
        var _b = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(((stdgo._internal.internal.fuzz.Fuzz__encversion1._encVersion1 + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L31"
        for (__8 => _val in _vals) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L32"
            {
                final __type__ = _val;
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64)) || stdgo.Go.typeEquals((__type__ : Bool))) {
                    var _t:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L34"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%T(%v)\n" : stdgo.GoString), _t, _t);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                    var _t:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L36"
                    if ((stdgo._internal.math.Math_isnan.isNaN((_t : stdgo.GoFloat64)) && (stdgo._internal.math.Math_float32bits.float32bits(_t) != stdgo._internal.math.Math_float32bits.float32bits((stdgo._internal.math.Math_nan.naN() : stdgo.GoFloat32))) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L49"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("math.Float32frombits(0x%x)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math_float32bits.float32bits(_t)));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L60"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%T(%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                    var _t:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L63"
                    if ((stdgo._internal.math.Math_isnan.isNaN(_t) && (stdgo._internal.math.Math_float64bits.float64bits(_t) != stdgo._internal.math.Math_float64bits.float64bits(stdgo._internal.math.Math_nan.naN())) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L64"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("math.Float64frombits(0x%x)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math_float64bits.float64bits(_t)));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L66"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%T(%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _t:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L69"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("string(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                    var _t:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L83"
                    if (stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_t)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L84"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("rune(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L86"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("int32(%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                    var _t:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L91"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("byte(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    var _t:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L93"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("[]byte(%q)\n" : stdgo.GoString), stdgo.Go.toInterface(_t));
                } else {
                    var _t:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L95"
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %T" : stdgo.GoString), _t));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L98"
        return _b.bytes();
    }
