package stdgo._internal.encoding.gob;
function testRegistrationNaming(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t__struct_12.T__struct_12>(2, 2, ...[({ _t : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_n1.N1() : stdgo._internal.encoding.gob.Gob_n1.N1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_n1.N1>))), _name : ("*gob.N1" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_t__struct_12.T__struct_12), ({ _t : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_n2.N2() : stdgo._internal.encoding.gob.Gob_n2.N2))), _name : ("encoding/gob.N2" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_t__struct_12.T__struct_12)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _t : (null : stdgo.AnyInterface), _name : ("" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_t__struct_12.T__struct_12)])) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t__struct_12.T__struct_12>);
        for (__8 => _tc in _testCases) {
            stdgo._internal.encoding.gob.Gob_register.register(_tc._t);
            var _tct = (stdgo._internal.reflect.Reflect_typeof.typeOf(_tc._t) : stdgo._internal.reflect.Reflect_type_.Type_);
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__nametoconcretetype._nameToConcreteType.load(stdgo.Go.toInterface(_tc._name)), _ct:stdgo.AnyInterface = __tmp__._0, __13:Bool = __tmp__._1;
            if (_ct != (stdgo.Go.toInterface(_tct))) {
                @:check2r _t.errorf(("nameToConcreteType[%q] = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), _ct, stdgo.Go.toInterface(_tct));
            };
            if (_tct.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _tct = _tct.elem();
            };
            {
                var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__concretetypetoname._concreteTypeToName.load(stdgo.Go.toInterface(_tct)), _n:stdgo.AnyInterface = __tmp__._0, __18:Bool = __tmp__._1;
                if (_n != (stdgo.Go.toInterface(_tc._name))) {
                    @:check2r _t.errorf(("concreteTypeToName[%v] got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tct), _n, stdgo.Go.toInterface(_tc._name));
                };
            };
        };
    }
