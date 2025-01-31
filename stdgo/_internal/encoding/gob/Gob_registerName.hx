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
function registerName(_name:stdgo.GoString, _value:stdgo.AnyInterface):Void {
        if (_name == (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("attempt to register empty name" : stdgo.GoString));
        };
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(stdgo._internal.reflect.Reflect_typeOf.typeOf(_value));
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__nameToConcreteType._nameToConcreteType.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(_value))), _t:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_t != stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user)) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate types for %q: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_name), _t, stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user)));
            };
        };
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__concreteTypeToName._concreteTypeToName.loadOrStore(stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._base), stdgo.Go.toInterface(_name)), _n:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if ((_dup && (_n != stdgo.Go.toInterface(_name)) : Bool)) {
                @:check2 stdgo._internal.encoding.gob.Gob__nameToConcreteType._nameToConcreteType.delete(stdgo.Go.toInterface(_name));
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("gob: registering duplicate names for %s: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._user), _n, stdgo.Go.toInterface(_name)));
            };
        };
    }
