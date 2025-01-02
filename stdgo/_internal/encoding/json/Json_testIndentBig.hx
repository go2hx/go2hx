package stdgo._internal.encoding.json;
function testIndentBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        @:check2r _t.parallel();
        stdgo._internal.encoding.json.Json__initBig._initBig();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo._internal.encoding.json.Json__jsonBig._jsonBig, stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Indent1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = @:check2 _buf.bytes();
        if ((_b.length) == ((stdgo._internal.encoding.json.Json__jsonBig._jsonBig.length))) {
            @:check2r _t.fatalf(("Indent(jsonBig) did not get bigger" : stdgo.GoString));
        };
        var _buf1:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _b, stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Indent2: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b1 = @:check2 _buf1.bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, _b)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Indent(Indent(jsonBig)) != Indent(jsonBig)" : stdgo.GoString)));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b1, _b);
            return;
        };
        @:check2 _buf1.reset();
        {
            var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _b) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _b1 = @:check2 _buf1.bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, stdgo._internal.encoding.json.Json__jsonBig._jsonBig)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Compact(Indent(jsonBig)) != jsonBig" : stdgo.GoString)));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b1, stdgo._internal.encoding.json.Json__jsonBig._jsonBig);
            return;
        };
    }
