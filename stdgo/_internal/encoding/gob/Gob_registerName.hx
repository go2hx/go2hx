package stdgo._internal.encoding.gob;
function registerName(_name:stdgo.GoString, _value:stdgo.AnyInterface):Void {
        if (_name == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("attempt to register empty name" : stdgo.GoString));
        };
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(stdgo._internal.reflect.Reflect_typeOf.typeOf(_value));
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__nameToConcreteType._nameToConcreteType.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(_value))), _t:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_t != stdgo.Go.toInterface(_ut._user)) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate types for %q: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_name), _t, stdgo.Go.toInterface(_ut._user)));
            };
        };
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__concreteTypeToName._concreteTypeToName.loadOrStore(stdgo.Go.toInterface(_ut._base), stdgo.Go.toInterface(_name)), _n:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_n != stdgo.Go.toInterface(_name)) : Bool)) {
                stdgo._internal.encoding.gob.Gob__nameToConcreteType._nameToConcreteType.delete(stdgo.Go.toInterface(_name));
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate names for %s: %q != %q" : stdgo.GoString), stdgo.Go.toInterface(_ut._user), _n, stdgo.Go.toInterface(_name)));
            };
        };
    }
