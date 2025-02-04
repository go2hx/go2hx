package stdgo._internal.encoding.json;
function testRoundtripStringTag(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_21.T__struct_21>(2, 2, ...[({ _name : ("AllTypes" : stdgo.GoString), _in : ({ boolStr : true, intStr : (42i64 : stdgo.GoInt64), uintptrStr : (new stdgo.GoUIntptr(44) : stdgo.GoUIntptr), strStr : ("xzbit" : stdgo.GoString), numberStr : (("46" : stdgo.GoString) : stdgo._internal.encoding.json.Json_number.Number) } : stdgo._internal.encoding.json.Json_stringtag.StringTag), _want : ("{\n\t\t\t\t\"BoolStr\": \"true\",\n\t\t\t\t\"IntStr\": \"42\",\n\t\t\t\t\"UintptrStr\": \"44\",\n\t\t\t\t\"StrStr\": \"\\\"xzbit\\\"\",\n\t\t\t\t\"NumberStr\": \"46\"\n\t\t\t}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_21.T__struct_21), ({ _name : ("StringDoubleEscapes" : stdgo.GoString), _in : ({ strStr : ("\x08\x0C\n\r\t\"\\" : stdgo.GoString), numberStr : (("0" : stdgo.GoString) : stdgo._internal.encoding.json.Json_number.Number) } : stdgo._internal.encoding.json.Json_stringtag.StringTag), _want : ("{\n\t\t\t\t\"BoolStr\": \"false\",\n\t\t\t\t\"IntStr\": \"0\",\n\t\t\t\t\"UintptrStr\": \"0\",\n\t\t\t\t\"StrStr\": \"\\\"\\\\u0008\\\\u000c\\\\n\\\\r\\\\t\\\\\\\"\\\\\\\\\\\"\",\n\t\t\t\t\"NumberStr\": \"0\"\n\t\t\t}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_21.T__struct_21)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _in : ({} : stdgo._internal.encoding.json.Json_stringtag.StringTag), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_21.T__struct_21)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_21.T__struct_21>);
        for (__4 => _test in _tests) {
            @:check2r _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshalindent.marshalIndent(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_test._in) : stdgo.Ref<stdgo._internal.encoding.json.Json_stringtag.StringTag>))), ("\t\t\t" : stdgo.GoString), ("\t" : stdgo.GoString)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
                {
                    var _got = ((_got : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_got != (_test._want)) {
                        @:check2r _t.fatalf((" got: %s\nwant: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                    };
                };
                var _s2:stdgo._internal.encoding.json.Json_stringtag.StringTag = ({} : stdgo._internal.encoding.json.Json_stringtag.StringTag);
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_got, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s2) : stdgo.Ref<stdgo._internal.encoding.json.Json_stringtag.StringTag>)))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.fatalf(("Decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_test._in)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s2)))) {
                    @:check2r _t.fatalf(("decode didn\'t match.\nsource: %#v\nEncoded as:\n%s\ndecode: %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._in)), stdgo.Go.toInterface((_got : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s2)));
                };
            });
        };
    }
