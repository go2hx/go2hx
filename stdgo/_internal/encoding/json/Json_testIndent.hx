package stdgo._internal.encoding.json;
function testIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        for (__4 => _tt in stdgo._internal.encoding.json.Json__examples._examples) {
            _buf.reset();
            {
                var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_tt._indent : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("Indent(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_err));
                } else {
                    var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._indent)) {
                        _t.errorf(("Indent(%#q) = %#q, want original" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_s));
                    };
                };
            };
            _buf.reset();
            {
                var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_tt._compact : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("Indent(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_err));
                    continue;
                } else {
                    var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._indent)) {
                        _t.errorf(("Indent(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._indent));
                    };
                };
            };
        };
    }
