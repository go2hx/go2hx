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
function register(_value:stdgo.AnyInterface):Void {
        var _rt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_value) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _name = ((_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _star = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if (_rt.name() == (stdgo.Go.str())) {
            {
                var _pt = (_rt : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (_pt.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _star = ("*" : stdgo.GoString);
                    _rt = _pt;
                };
            };
        };
        if (_rt.name() != (stdgo.Go.str())) {
            if (_rt.pkgPath() == (stdgo.Go.str())) {
                _name = (_star + _rt.name()?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                _name = (((_star + _rt.pkgPath()?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _rt.name()?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        stdgo._internal.encoding.gob.Gob_registerName.registerName(_name?.__copy__(), _value);
    }
