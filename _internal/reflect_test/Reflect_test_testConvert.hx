package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testConvert(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _canConvert = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo._internal.reflect.Reflect_Type_.Type_>, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, 2));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo._internal.reflect.Reflect_Type_.Type_>, Bool>);
        var _all = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, Bool>);
        for (__6 => _tt in _internal.reflect_test.Reflect_test__convertTests._convertTests) {
            var _t1 = (_tt._in.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!_t1.convertibleTo(_t1)) {
                _t.errorf(("(%s).ConvertibleTo(%s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(_t1));
                continue;
            };
            var _t2 = (_tt._out.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!_t1.convertibleTo(_t2)) {
                _t.errorf(("(%s).ConvertibleTo(%s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(_t2));
                continue;
            };
            _all[_t1] = true;
            _all[_t2] = true;
            _canConvert[(new stdgo.GoArray<stdgo._internal.reflect.Reflect_Type_.Type_>(2, 2, ...[_t1, _t2]) : stdgo.GoArray<stdgo._internal.reflect.Reflect_Type_.Type_>)] = true;
            var _v1 = (_tt._in?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (!_v1.canConvert(_t1)) {
                _t.errorf(("ValueOf(%T(%[1]v)).CanConvert(%s) = false, want true" : stdgo.GoString), _tt._in.interface_(), stdgo.Go.toInterface(_t1));
            };
            var _vout1 = (_v1.convert(_t1)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _out1 = (_vout1.interface_() : stdgo.AnyInterface);
            if ((!((_vout1.type().string() : String) == (_tt._in.type().string() : String)) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_out1, _tt._in.interface_()) : Bool)) {
                _t.errorf(("ValueOf(%T(%[1]v)).Convert(%s) = %T(%[3]v), want %T(%[4]v)" : stdgo.GoString), _tt._in.interface_(), stdgo.Go.toInterface(_t1), _out1, _tt._in.interface_());
            };
            if (!_v1.canConvert(_t2)) {
                _t.errorf(("ValueOf(%T(%[1]v)).CanConvert(%s) = false, want true" : stdgo.GoString), _tt._in.interface_(), stdgo.Go.toInterface(_t2));
            };
            var _vout2 = (_v1.convert(_t2)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _out2 = (_vout2.interface_() : stdgo.AnyInterface);
            if ((!((_vout2.type().string() : String) == (_tt._out.type().string() : String)) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_out2, _tt._out.interface_()) : Bool)) {
                _t.errorf(("ValueOf(%T(%[1]v)).Convert(%s) = %T(%[3]v), want %T(%[4]v)" : stdgo.GoString), _tt._in.interface_(), stdgo.Go.toInterface(_t2), _out2, _tt._out.interface_());
            };
            {
                var __0 = (_vout2.kind() : stdgo._internal.reflect.Reflect_Kind.Kind), __1 = (_vout2.type().kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("ValueOf(%T(%[1]v)).Convert(%s) has internal kind %v want %v" : stdgo.GoString), _tt._in.interface_(), stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
            var _vout3 = (stdgo._internal.reflect.Reflect_new_.new_(_t2).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _vout3.set(_vout2?.__copy__());
            var _out3 = (_vout3.interface_() : stdgo.AnyInterface);
            if ((!((_vout3.type().string() : String) == (_tt._out.type().string() : String)) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_out3, _tt._out.interface_()) : Bool)) {
                _t.errorf(("Set(ValueOf(%T(%[1]v)).Convert(%s)) = %T(%[3]v), want %T(%[4]v)" : stdgo.GoString), _tt._in.interface_(), stdgo.Go.toInterface(_t2), _out3, _tt._out.interface_());
            };
            if (stdgo._internal.reflect.Reflect_isRO.isRO(_v1?.__copy__())) {
                _t.errorf(("table entry %v is RO, should not be" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v1)));
            };
            if (stdgo._internal.reflect.Reflect_isRO.isRO(_vout1?.__copy__())) {
                _t.errorf(("self-conversion output %v is RO, should not be" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_vout1)));
            };
            if (stdgo._internal.reflect.Reflect_isRO.isRO(_vout2?.__copy__())) {
                _t.errorf(("conversion output %v is RO, should not be" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_vout2)));
            };
            if (stdgo._internal.reflect.Reflect_isRO.isRO(_vout3?.__copy__())) {
                _t.errorf(("set(conversion output) %v is RO, should not be" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_vout3)));
            };
            if (!stdgo._internal.reflect.Reflect_isRO.isRO(stdgo._internal.reflect.Reflect_makeRO.makeRO(_v1?.__copy__()).convert(_t1)?.__copy__())) {
                _t.errorf(("RO self-conversion output %v is not RO, should be" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v1)));
            };
            if (!stdgo._internal.reflect.Reflect_isRO.isRO(stdgo._internal.reflect.Reflect_makeRO.makeRO(_v1?.__copy__()).convert(_t2)?.__copy__())) {
                _t.errorf(("RO conversion output %v is not RO, should be" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v1)));
            };
        };
        for (_t1 => _ in _all) {
            for (_t2 => _ in _all) {
                var _expectOK = (((_t1.string() : String) == (_t2.string() : String) || (_canConvert[(new stdgo.GoArray<stdgo._internal.reflect.Reflect_Type_.Type_>(2, 2, ...[_t1, _t2]) : stdgo.GoArray<stdgo._internal.reflect.Reflect_Type_.Type_>)] ?? false) : Bool) || (_t2.kind() == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _t2.numMethod() == ((0 : stdgo.GoInt)) : Bool) : Bool);
                {
                    var _ok = (_t1.convertibleTo(_t2) : Bool);
                    if (_ok != (_expectOK)) {
                        _t.errorf(("(%s).ConvertibleTo(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(_t2), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_expectOK));
                    };
                };
            };
        };
    }
