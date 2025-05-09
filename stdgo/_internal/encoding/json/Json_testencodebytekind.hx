package stdgo._internal.encoding.json;
function testEncodeBytekind(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testdata = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28>(13, 13, ...[
({ _data : stdgo.Go.toInterface((7 : stdgo.GoUInt8)), _want : ("7" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface((7 : stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte))), _want : ("{\"JB\":7}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte))), _want : ("\"TB:4\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface((5 : stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint))), _want : ("{\"JI\":5}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface((1 : stdgo._internal.encoding.json.Json_t_textint.T_textint))), _want : ("\"TI:1\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _want : ("\"AAE=\"" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>(2, 2, ...[(0 : stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte), (1 : stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>)), _want : ("[{\"JB\":0},{\"JB\":1}]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>>(2, 2, ...[(new stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>(2, 2, ...[(0 : stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte), (1 : stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>), (new stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>(1, 1, ...[(3 : stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>)]) : stdgo.Slice<stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte>>)), _want : ("[[{\"JB\":0},{\"JB\":1}],[{\"JB\":3}]]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte>(2, 2, ...[(2 : stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte), (3 : stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte>)), _want : ("[\"TB:2\",\"TB:3\"]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint>(2, 2, ...[(5 : stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint), (4 : stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint>)), _want : ("[{\"JI\":5},{\"JI\":4}]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.encoding.json.Json_t_textint.T_textint>(2, 2, ...[(9 : stdgo._internal.encoding.json.Json_t_textint.T_textint), (3 : stdgo._internal.encoding.json.Json_t_textint.T_textint)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_textint.T_textint>)), _want : ("[\"TI:9\",\"TI:3\"]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(9 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _want : ("[9,3]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat>(2, 2, ...[(12 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat>)), _want : ("[\"TF:12.00\",\"TF:3.00\"]" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _data : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L884"
        for (__4 => _d in _testdata) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_d._data), _js:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L886"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L887"
                _t.error(stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L888"
                continue;
            };
            var __0 = ((_js : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (_d._want?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L891"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L892"
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
