package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.encoding.json.Json__nullLiteral._nullLiteral, __tmp__1 = stdgo._internal.encoding.json.Json__textUnmarshalerType._textUnmarshalerType, __tmp__2 = stdgo._internal.encoding.json.Json__numberType._numberType, __tmp__3 = stdgo._internal.encoding.json.Json__hex._hex, __tmp__4 = stdgo._internal.encoding.json.Json__marshalerType._marshalerType, __tmp__5 = stdgo._internal.encoding.json.Json__textMarshalerType._textMarshalerType, __tmp__6 = stdgo._internal.encoding.json.Json__float32Encoder._float32Encoder, __tmp__7 = stdgo._internal.encoding.json.Json__float64Encoder._float64Encoder, __tmp__8 = stdgo._internal.encoding.json.Json__scannerPool._scannerPool, __tmp__9 = stdgo._internal.encoding.json.Json__safeSet._safeSet, __tmp__10 = stdgo._internal.encoding.json.Json__htmlSafeSet._htmlSafeSet, __tmp__11 = stdgo._internal.encoding.json.Json__ifaceNumAsFloat64._ifaceNumAsFloat64, __tmp__12 = stdgo._internal.encoding.json.Json__ifaceNumAsNumber._ifaceNumAsNumber, __tmp__13 = stdgo._internal.encoding.json.Json__errMissingU8Prefix._errMissingU8Prefix, __tmp__14 = stdgo._internal.encoding.json.Json__umtrue._umtrue, __tmp__15 = stdgo._internal.encoding.json.Json__umslice._umslice, __tmp__16 = stdgo._internal.encoding.json.Json__umstruct._umstruct, __tmp__17 = stdgo._internal.encoding.json.Json__umtrueXY._umtrueXY, __tmp__18 = stdgo._internal.encoding.json.Json__umsliceXY._umsliceXY, __tmp__19 = stdgo._internal.encoding.json.Json__umstructXY._umstructXY, __tmp__20 = stdgo._internal.encoding.json.Json__ummapXY._ummapXY, __tmp__21 = stdgo._internal.encoding.json.Json__badUTF8._badUTF8, __tmp__22 = stdgo._internal.encoding.json.Json__numberTests._numberTests, __tmp__23 = stdgo._internal.encoding.json.Json__wrongStringTests._wrongStringTests, __tmp__24 = stdgo._internal.encoding.json.Json__allValue._allValue, __tmp__25 = stdgo._internal.encoding.json.Json__pallValue._pallValue, __tmp__26 = stdgo._internal.encoding.json.Json__allValueIndent._allValueIndent, __tmp__27 = stdgo._internal.encoding.json.Json__allValueCompact._allValueCompact, __tmp__28 = stdgo._internal.encoding.json.Json__pallValueIndent._pallValueIndent, __tmp__29 = stdgo._internal.encoding.json.Json__pallValueCompact._pallValueCompact, __tmp__30 = stdgo._internal.encoding.json.Json__unmarshalTests._unmarshalTests, __tmp__31 = stdgo._internal.encoding.json.Json__interfaceSetTests._interfaceSetTests, __tmp__32 = stdgo._internal.encoding.json.Json__decodeTypeErrorTests._decodeTypeErrorTests, __tmp__33 = stdgo._internal.encoding.json.Json__unmarshalSyntaxTests._unmarshalSyntaxTests, __tmp__34 = stdgo._internal.encoding.json.Json__invalidUnmarshalTests._invalidUnmarshalTests, __tmp__35 = stdgo._internal.encoding.json.Json__invalidUnmarshalTextTests._invalidUnmarshalTextTests, __tmp__36 = stdgo._internal.encoding.json.Json__optionalsExpected._optionalsExpected, __tmp__37 = stdgo._internal.encoding.json.Json__samePointerNoCycle._samePointerNoCycle, __tmp__38 = stdgo._internal.encoding.json.Json__pointerCycle._pointerCycle, __tmp__39 = stdgo._internal.encoding.json.Json__pointerCycleIndirect._pointerCycleIndirect, __tmp__40 = stdgo._internal.encoding.json.Json__mapCycle._mapCycle, __tmp__41 = stdgo._internal.encoding.json.Json__sliceCycle._sliceCycle, __tmp__42 = stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle, __tmp__43 = stdgo._internal.encoding.json.Json__recursiveSliceCycle._recursiveSliceCycle, __tmp__44 = stdgo._internal.encoding.json.Json__unsupportedValues._unsupportedValues, __tmp__45 = stdgo._internal.encoding.json.Json__encodeStringTests._encodeStringTests, __tmp__46 = stdgo._internal.encoding.json.Json__re._re, __tmp__47 = stdgo._internal.encoding.json.Json__badFloatREs._badFloatREs, __tmp__48 = stdgo._internal.encoding.json.Json__validTests._validTests, __tmp__49 = stdgo._internal.encoding.json.Json__ex1._ex1, __tmp__50 = stdgo._internal.encoding.json.Json__ex1i._ex1i, __tmp__51 = stdgo._internal.encoding.json.Json__examples._examples, __tmp__52 = stdgo._internal.encoding.json.Json__indentErrorTests._indentErrorTests, __tmp__53 = stdgo._internal.encoding.json.Json__streamTest._streamTest, __tmp__54 = stdgo._internal.encoding.json.Json__streamEncoded._streamEncoded, __tmp__55 = stdgo._internal.encoding.json.Json__streamEncodedIndent._streamEncodedIndent, __tmp__56 = stdgo._internal.encoding.json.Json__blockingTests._blockingTests, __tmp__57 = stdgo._internal.encoding.json.Json__tokenStreamCases._tokenStreamCases, __tmp__58 = stdgo._internal.encoding.json.Json__structTagObjectKeyTests._structTagObjectKeyTests, __tmp__59 = stdgo._internal.encoding.json.Json___0.__0, __tmp__60 = stdgo._internal.encoding.json.Json___1.__1, __tmp__61 = stdgo._internal.encoding.json.Json___2.__2, __tmp__62 = stdgo._internal.encoding.json.Json___3.__3;
            var _ptr = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle() : stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle>);
            (@:checkr stdgo._internal.encoding.json.Json__samePointerNoCycle._samePointerNoCycle ?? throw "null pointer dereference").ptr1 = _ptr;
            (@:checkr stdgo._internal.encoding.json.Json__samePointerNoCycle._samePointerNoCycle ?? throw "null pointer dereference").ptr2 = _ptr;
            (@:checkr stdgo._internal.encoding.json.Json__pointerCycle._pointerCycle ?? throw "null pointer dereference").ptr = stdgo._internal.encoding.json.Json__pointerCycle._pointerCycle;
            (@:checkr stdgo._internal.encoding.json.Json__pointerCycleIndirect._pointerCycleIndirect ?? throw "null pointer dereference").ptrs = (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__pointerCycleIndirect._pointerCycleIndirect))]) : stdgo.Slice<stdgo.AnyInterface>);
            stdgo._internal.encoding.json.Json__mapCycle._mapCycle[("x" : stdgo.GoString)] = stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__mapCycle._mapCycle);
            stdgo._internal.encoding.json.Json__sliceCycle._sliceCycle[(0 : stdgo.GoInt)] = stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__sliceCycle._sliceCycle);
            stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle[(1 : stdgo.GoInt)] = stdgo.Go.toInterface((stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.AnyInterface>));
            {
                var _i = (1000 : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle = (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle)]) : stdgo.Slice<stdgo.AnyInterface>);
                    _i--;
                };
            };
            stdgo._internal.encoding.json.Json__recursiveSliceCycle._recursiveSliceCycle[(0 : stdgo.GoInt)] = stdgo._internal.encoding.json.Json__recursiveSliceCycle._recursiveSliceCycle;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
