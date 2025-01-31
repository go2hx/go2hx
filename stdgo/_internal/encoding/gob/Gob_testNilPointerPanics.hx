package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testNilPointerPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>), __1 = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2 = (stdgo.Go.setRef(_intMap) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8 = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
var _nilStringSlicePtr = __9, _stringSlice = __8, _nilStringSlice = __7, _nilBoolChannelPtr = __6, _nilBoolChannel = __5, _zero = __4, _nilIntMapPtr = __3, _intMapPtr = __2, _intMap = __1, _nilStringPtr = __0;
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2>(10, 10, ...[({ _value : stdgo.Go.toInterface(_nilStringPtr), _mustPanic : true } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_intMap), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_intMapPtr), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_nilIntMapPtr), _mustPanic : true } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_zero), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_nilStringSlice), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_stringSlice), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_nilStringSlicePtr), _mustPanic : true } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_nilBoolChannel), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2), ({ _value : stdgo.Go.toInterface(_nilBoolChannelPtr), _mustPanic : true } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _value : (null : stdgo.AnyInterface), _mustPanic : false } : stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T__struct_2.T__struct_2>);
        for (__8 => _tt in _testCases) {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__encodeAndRecover._encodeAndRecover(_tt._value), __9:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
            if (_tt._mustPanic) {
                if (_panicErr == null) {
                    @:check2r _t.errorf(("expected panic with input %#v, did not panic" : stdgo.GoString), _tt._value);
                };
                continue;
            };
            if (_panicErr != null) {
                @:check2r _t.fatalf(("expected no panic with input %#v, got panic=%v" : stdgo.GoString), _tt._value, stdgo.Go.toInterface(_panicErr));
            };
        };
    }
