package stdgo._internal.encoding.json;
function testTagParsing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json__parseTag._parseTag(("field,foobar,foo" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _opts:stdgo._internal.encoding.json.Json_T_tagOptions.T_tagOptions = __tmp__._1;
        if (_name != (("field" : stdgo.GoString))) {
            _t.fatalf(("name = %q, want field" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        for (__8 => _tt in (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46>(3, 3, ...[({ _opt : ("foobar" : stdgo.GoString), _want : true } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46), ({ _opt : ("foo" : stdgo.GoString), _want : true } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46), ({ _opt : ("bar" : stdgo.GoString), _want : false } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _opt : ("" : stdgo.GoString), _want : false } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46>)) {
            if (_opts.contains(_tt._opt?.__copy__()) != (_tt._want)) {
                _t.errorf(("Contains(%q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._opt), stdgo.Go.toInterface(!_tt._want));
            };
        };
    }