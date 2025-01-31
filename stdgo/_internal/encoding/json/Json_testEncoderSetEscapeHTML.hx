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
function testEncoderSetEscapeHTML(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c:stdgo._internal.encoding.json.Json_C.C = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_C.C);
        var _ct:stdgo._internal.encoding.json.Json_CText.CText = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_CText.CText);
        var _tagStruct:stdgo._internal.encoding.json.Json_T__struct_38.T__struct_38 = ({ valid : (0 : stdgo.GoInt), invalid : (0 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_T__struct_38.T__struct_38);
        var _marshalerStruct = (stdgo.Go.setRef(({ nonPtr : (("\"<str>\"" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_strMarshaler.T_strMarshaler), ptr : (("\"<str>\"" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_strPtrMarshaler.T_strPtrMarshaler) } : stdgo._internal.encoding.json.Json_T__struct_39.T__struct_39)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_39.T__struct_39>);
        var _stringOption = ({ bar : ("<html>foobar</html>" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2);
        for (__4 => _tt in (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40>(6, 6, ...[({ _name : ("c" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_c)), _wantEscape : ("\"\\u003c\\u0026\\u003e\"" : stdgo.GoString), _want : ("\"<&>\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40), ({ _name : ("ct" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_ct)), _wantEscape : ("\"\\\"\\u003c\\u0026\\u003e\\\"\"" : stdgo.GoString), _want : ("\"\\\"<&>\\\"\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40), ({ _name : ("\"<&>\"" : stdgo.GoString), _v : stdgo.Go.toInterface(("<&>" : stdgo.GoString)), _wantEscape : ("\"\\u003c\\u0026\\u003e\"" : stdgo.GoString), _want : ("\"<&>\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40), ({ _name : ("tagStruct" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_tagStruct)), _wantEscape : ("{\"\\u003c\\u003e\\u0026#! \":0,\"Invalid\":0}" : stdgo.GoString), _want : ("{\"<>&#! \":0,\"Invalid\":0}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40), ({ _name : ("\"<str>\"" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_marshalerStruct)), _wantEscape : ("{\"NonPtr\":\"\\u003cstr\\u003e\",\"Ptr\":\"\\u003cstr\\u003e\"}" : stdgo.GoString), _want : ("{\"NonPtr\":\"<str>\",\"Ptr\":\"<str>\"}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40), ({ _name : ("stringOption" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_stringOption)), _wantEscape : ("{\"bar\":\"\\\"\\\\u003chtml\\\\u003efoobar\\\\u003c/html\\\\u003e\\\"\"}" : stdgo.GoString), _want : ("{\"bar\":\"\\\"<html>foobar</html>\\\"\"}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _v : (null : stdgo.AnyInterface), _wantEscape : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40>)) {
            var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
            {
                var _err = (@:check2r _enc.encode(_tt._v) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Encode(%s): %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            {
                var _got = (stdgo._internal.strings.Strings_trimSpace.trimSpace((@:check2 _buf.string() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                if (_got != (_tt._wantEscape)) {
                    @:check2r _t.errorf(("Encode(%s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._wantEscape));
                };
            };
            @:check2 _buf.reset();
            @:check2r _enc.setEscapeHTML(false);
            {
                var _err = (@:check2r _enc.encode(_tt._v) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("SetEscapeHTML(false) Encode(%s): %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            {
                var _got = (stdgo._internal.strings.Strings_trimSpace.trimSpace((@:check2 _buf.string() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                if (_got != (_tt._want)) {
                    @:check2r _t.errorf(("SetEscapeHTML(false) Encode(%s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
