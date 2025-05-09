package stdgo._internal.encoding.base64;
function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _examples = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("c3VyZQ==" : stdgo.GoString),
("c3VyZQ==\r" : stdgo.GoString),
("c3VyZQ==\n" : stdgo.GoString),
("c3VyZQ==\r\n" : stdgo.GoString),
("c3VyZ\r\nQ==" : stdgo.GoString),
("c3V\ryZ\nQ==" : stdgo.GoString),
("c3V\nyZ\rQ==" : stdgo.GoString),
("c3VyZ\nQ==" : stdgo.GoString),
("c3VyZQ\n==" : stdgo.GoString),
("c3VyZQ=\n=" : stdgo.GoString),
("c3VyZQ=\r\n\r\n=" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L358"
        for (__0 => _e in _examples) {
            var __tmp__ = stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodeString(_e?.__copy__()), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L360"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L361"
                _t.errorf(("Decode(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L362"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L364"
            {
                var _s = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (("sure" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L365"
                    _t.errorf(("Decode(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("sure" : stdgo.GoString)));
                };
            };
        };
    }
