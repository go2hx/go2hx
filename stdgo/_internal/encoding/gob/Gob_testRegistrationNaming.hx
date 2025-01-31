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
function testRegistrationNaming(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T__struct_12.T__struct_12>(2, 2, ...[({ _t : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_N1.N1() : stdgo._internal.encoding.gob.Gob_N1.N1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_N1.N1>))), _name : ("*gob.N1" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_T__struct_12.T__struct_12), ({ _t : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_N2.N2() : stdgo._internal.encoding.gob.Gob_N2.N2))), _name : ("encoding/gob.N2" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_T__struct_12.T__struct_12)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _t : (null : stdgo.AnyInterface), _name : ("" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_T__struct_12.T__struct_12)])) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T__struct_12.T__struct_12>);
        for (__8 => _tc in _testCases) {
            stdgo._internal.encoding.gob.Gob_register.register(_tc._t);
            var _tct = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_tc._t) : stdgo._internal.reflect.Reflect_Type_.Type_);
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__nameToConcreteType._nameToConcreteType.load(stdgo.Go.toInterface(_tc._name)), _ct:stdgo.AnyInterface = __tmp__._0, __13:Bool = __tmp__._1;
            if (_ct != (stdgo.Go.toInterface(_tct))) {
                @:check2r _t.errorf(("nameToConcreteType[%q] = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), _ct, stdgo.Go.toInterface(_tct));
            };
            if (_tct.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _tct = _tct.elem();
            };
            {
                var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__concreteTypeToName._concreteTypeToName.load(stdgo.Go.toInterface(_tct)), _n:stdgo.AnyInterface = __tmp__._0, __18:Bool = __tmp__._1;
                if (_n != (stdgo.Go.toInterface(_tc._name))) {
                    @:check2r _t.errorf(("concreteTypeToName[%v] got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tct), _n, stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
