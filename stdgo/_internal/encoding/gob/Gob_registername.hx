package stdgo._internal.encoding.gob;
function registerName(_name:stdgo.GoString, _value:stdgo.AnyInterface):Void {
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            throw stdgo.Go.toInterface(("attempt to register empty name" : stdgo.GoString));
        };
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(stdgo._internal.reflect.Reflect_typeof.typeOf(_value));
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__nametoconcretetype._nameToConcreteType.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeof.typeOf(_value))), _t:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_t != stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user)) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate types for %q: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_name), _t, stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user)));
            };
        };
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__concretetypetoname._concreteTypeToName.loadOrStore(stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._base), stdgo.Go.toInterface(_name)), _n:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_n != stdgo.Go.toInterface(_name)) : Bool)) {
                @:check2 stdgo._internal.encoding.gob.Gob__nametoconcretetype._nameToConcreteType.delete(stdgo.Go.toInterface(_name));
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate names for %s: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user), _n, stdgo.Go.toInterface(_name)));
            };
        };
    }
