package stdgo._internal.encoding.json;
function testCompactSeparators(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_37.T__struct_37>(2, 2, ...[({ _in : ("{\"\u2028\": 1}" : stdgo.GoString), _compact : ("{\"\u2028\":1}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_37.T__struct_37), ({ _in : ("{\"\u2029\" :2}" : stdgo.GoString), _compact : ("{\"\u2029\":2}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_37.T__struct_37)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _compact : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_37.T__struct_37)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_37.T__struct_37>);
        for (__4 => _tt in _tests) {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            {
                var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Compact(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err));
                } else {
                    var _s = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._compact)) {
                        @:check2r _t.errorf(("Compact(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._compact));
                    };
                };
            };
        };
    }
