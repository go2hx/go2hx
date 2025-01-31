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
function testUnmarshalMaxDepth(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testcases = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16>(6, 6, ...[({ _name : ("ArrayUnderMaxNestingDepth" : stdgo.GoString), _data : (((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("[" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("]" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : false } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16), ({ _name : ("ArrayOverMaxNestingDepth" : stdgo.GoString), _data : (((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("[" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("]" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16), ({ _name : ("ArrayOverStackDepth" : stdgo.GoString), _data : (((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("[" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("]" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16), ({ _name : ("ObjectUnderMaxNestingDepth" : stdgo.GoString), _data : ((((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("{\"a\":" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("}" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : false } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16), ({ _name : ("ObjectOverMaxNestingDepth" : stdgo.GoString), _data : ((((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("{\"a\":" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("}" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16), ({ _name : ("ObjectOverStackDepth" : stdgo.GoString), _data : ((((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("{\"a\":" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("}" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : ("" : stdgo.GoString), _errMaxDepth : false } : stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16>);
        var _targets = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17>(4, 4, ...[({ _name : ("unstructured" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            return stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>));
        } } : stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17), ({ _name : ("typed named field" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v = ({ a : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_18.T__struct_18);
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_18.T__struct_18>)));
        } } : stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17), ({ _name : ("typed missing field" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v = ({ b : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_T__struct_19.T__struct_19);
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_19.T__struct_19>)));
        } } : stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17), ({ _name : ("custom unmarshaler" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v = (new stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler() : stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler);
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler>)));
        } } : stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _newValue : null } : stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17>);
        for (__4 => _tc in _testcases) {
            for (__5 => _target in _targets) {
                @:check2r _t.run(((_target._name + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tc._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_tc._data : stdgo.Slice<stdgo.GoUInt8>), _target._newValue()) : stdgo.Error);
                    if (!_tc._errMaxDepth) {
                        if (_err != null) {
                            @:check2r _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    } else {
                        if (_err == null) {
                            @:check2r _t.errorf(("expected error containing \'exceeded max depth\', got none" : stdgo.GoString));
                        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("exceeded max depth" : stdgo.GoString))) {
                            @:check2r _t.errorf(("expected error containing \'exceeded max depth\', got: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                });
            };
        };
    }
