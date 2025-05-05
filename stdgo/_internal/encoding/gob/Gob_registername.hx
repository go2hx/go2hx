package stdgo._internal.encoding.gob;
function registerName(_name:stdgo.GoString, _value:stdgo.AnyInterface):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L834"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L836"
            throw stdgo.Go.toInterface(("attempt to register empty name" : stdgo.GoString));
        };
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(stdgo._internal.reflect.Reflect_typeof.typeOf(_value));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L845"
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__nametoconcretetype._nameToConcreteType.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeof.typeOf(_value))), _t:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_t != stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L846"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate types for %q: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_name), _t, stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L850"
        {
            var __tmp__ = stdgo._internal.encoding.gob.Gob__concretetypetoname._concreteTypeToName.loadOrStore(stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._base), stdgo.Go.toInterface(_name)), _n:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_n != stdgo.Go.toInterface(_name)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L851"
                stdgo._internal.encoding.gob.Gob__nametoconcretetype._nameToConcreteType.delete(stdgo.Go.toInterface(_name));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type.go#L852"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate names for %s: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user), _n, stdgo.Go.toInterface(_name)));
            };
        };
    }
