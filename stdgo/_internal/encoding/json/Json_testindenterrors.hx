package stdgo._internal.encoding.json;
function testIndentErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.encoding.json.Json__indenterrortests._indentErrorTests) {
            var _slice = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_slice);
            {
                var _err = (stdgo._internal.encoding.json.Json_indent.indent(_buf, (_tt._in : stdgo.Slice<stdgo.GoUInt8>), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err))) {
                        @:check2r _t.errorf(("#%d: Indent: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
            };
        };
    }
