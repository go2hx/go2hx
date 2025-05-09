package stdgo._internal.encoding.json;
function testTagParsing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json__parsetag._parseTag(("field,foobar,foo" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _opts:stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags_test.go#L13"
        if (_name != (("field" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags_test.go#L14"
            _t.fatalf(("name = %q, want field" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags_test.go#L16"
        for (__4 => _tt in (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46>(3, 3, ...[({ _opt : ("foobar" : stdgo.GoString), _want : true } : stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46), ({ _opt : ("foo" : stdgo.GoString), _want : true } : stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46), ({ _opt : ("bar" : stdgo.GoString), _want : false } : stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _opt : ("" : stdgo.GoString), _want : false } : stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46>)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags_test.go#L24"
            if (_opts.contains(_tt._opt?.__copy__()) != (_tt._want)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/tags_test.go#L25"
                _t.errorf(("Contains(%q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._opt), stdgo.Go.toInterface(!_tt._want));
            };
        };
    }
