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
function testPrefilled(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _prefillTests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11>(6, 6, ...[({ _in : ("{\"X\": 1, \"Y\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ x : stdgo.Go.toInterface(((3 : stdgo.GoFloat64) : stdgo.GoFloat32)), y : stdgo.Go.toInterface((4 : stdgo.GoInt16)), z : stdgo.Go.toInterface((1.5 : stdgo.GoFloat64)) } : stdgo._internal.encoding.json.Json_XYZ.XYZ)) : stdgo.Ref<stdgo._internal.encoding.json.Json_XYZ.XYZ>))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ x : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), y : stdgo.Go.toInterface((2 : stdgo.GoFloat64)), z : stdgo.Go.toInterface((1.5 : stdgo.GoFloat64)) } : stdgo._internal.encoding.json.Json_XYZ.XYZ)) : stdgo.Ref<stdgo._internal.encoding.json.Json_XYZ.XYZ>))) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11), ({ _in : ("{\"X\": 1, \"Y\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("X" : stdgo.GoString), stdgo.Go.toInterface(((3 : stdgo.GoFloat64) : stdgo.GoFloat32)));
x.set(("Y" : stdgo.GoString), stdgo.Go.toInterface((4 : stdgo.GoInt16)));
x.set(("Z" : stdgo.GoString), stdgo.Go.toInterface((1.5 : stdgo.GoFloat64)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("X" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
x.set(("Y" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.GoFloat64)));
x.set(("Z" : stdgo.GoString), stdgo.Go.toInterface((1.5 : stdgo.GoFloat64)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11), ({ _in : ("[2]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11), ({ _in : ("[2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11), ({ _in : ("[2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(1, 1, ...[(2 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11), ({ _in : ("[3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(3 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _ptr : (null : stdgo.AnyInterface), _out : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11>);
        for (__4 => _tt in _prefillTests) {
            var _ptrstr = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), _tt._ptr)?.__copy__() : stdgo.GoString);
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_tt._in : stdgo.Slice<stdgo.GoUInt8>), _tt._ptr) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_tt._ptr, _tt._out)) {
                @:check2r _t.errorf(("Unmarshal(%#q, %s): have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_ptrstr), _tt._ptr, _tt._out);
            };
        };
    }
