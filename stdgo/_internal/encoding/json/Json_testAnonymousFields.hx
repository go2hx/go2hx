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
function testAnonymousFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23>(10, 10, ...[({ _label : ("AmbiguousField" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174.T_testAnonymousFields___localname___S_8174((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8122.T_testAnonymousFields___localname___S1_8122((1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8122.T_testAnonymousFields___localname___S1_8122), (new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8148.T_testAnonymousFields___localname___S2_8148((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8148.T_testAnonymousFields___localname___S2_8148)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174.T_testAnonymousFields___localname___S_8174)));
        }, _want : ("{}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("DominantField" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459((1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459), (new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485), (5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511)));
        }, _want : ("{\"X\":6}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("UnexportedEmbeddedInt" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796.T_testAnonymousFields___localname___S_8796((5 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_8782.T_testAnonymousFields___localname___myInt_8782)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796.T_testAnonymousFields___localname___S_8796)));
        }, _want : ("{}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("ExportedEmbeddedInt" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019((5 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt_9005.T_testAnonymousFields___localname___MyInt_9005)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019)));
        }, _want : ("{\"MyInt\":5}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("UnexportedEmbeddedIntPointer" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            var _s = (new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282(stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_9268.T_testAnonymousFields___localname___myInt_9268))) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282);
            _s._myInt.value = (5 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_9268.T_testAnonymousFields___localname___myInt_9268);
            return stdgo.Go.toInterface(stdgo.Go.asInterface(_s));
        }, _want : ("{}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("ExportedEmbeddedIntPointer" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            var _s = (new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564(stdgo.Go.pointer(((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt_9550.T_testAnonymousFields___localname___MyInt_9550))) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564);
            _s.myInt.value = (5 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt_9550.T_testAnonymousFields___localname___MyInt_9550);
            return stdgo.Go.toInterface(stdgo.Go.asInterface(_s));
        }, _want : ("{\"MyInt\":5}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("EmbeddedStruct" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958.T_testAnonymousFields___localname___S_9958((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906((1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906), (new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958.T_testAnonymousFields___localname___S_9958)));
        }, _want : ("{\"X\":2,\"Y\":4}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("EmbeddedStructPointer" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366.T_testAnonymousFields___localname___S_10366((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314((1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314>), (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340>)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366.T_testAnonymousFields___localname___S_10366)));
        }, _want : ("{\"X\":2,\"Y\":4}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("NestedStructAndInts" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811.T_testAnonymousFields___localname___S_10811((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758((1 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt1_10664.T_testAnonymousFields___localname___MyInt1_10664), (2 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_10694.T_testAnonymousFields___localname___myInt_10694), (new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709((3 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt2_10679.T_testAnonymousFields___localname___MyInt2_10679), (4 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_10694.T_testAnonymousFields___localname___myInt_10694)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758), (6 : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_10694.T_testAnonymousFields___localname___myInt_10694)) : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811.T_testAnonymousFields___localname___S_10811)));
        }, _want : ("{\"MyInt1\":1,\"MyInt2\":3}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23), ({ _label : ("EmbeddedFieldBehindNilPointer" : stdgo.GoString), _makeInput : function():stdgo.AnyInterface {
            {};
            return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225.T_testAnonymousFields___localname___S_11225() : stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225.T_testAnonymousFields___localname___S_11225)));
        }, _want : ("{}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _label : ("" : stdgo.GoString), _makeInput : null, _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23>);
        for (__4 => _tt in _tests) {
            @:check2r _t.run(_tt._label?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._makeInput()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.fatalf(("Marshal() = %v, want nil error" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if ((_b : stdgo.GoString) != (_tt._want)) {
                    @:check2r _t.fatalf(("Marshal() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._want));
                };
            });
        };
    }
