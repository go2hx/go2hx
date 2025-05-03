package stdgo._internal.encoding.base32;
function testDecodeWithPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _encodings = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>(3, 3, ...[stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((45 : stdgo.GoInt32)), (@:checkr stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding ?? throw "null pointer dereference").withPadding((-1 : stdgo.GoInt32))]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L518"
        for (_i => _enc in _encodings) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L519"
            for (__0 => _pair in stdgo._internal.encoding.base32.Base32__pairs._pairs) {
                var _input = (_pair._decoded?.__copy__() : stdgo.GoString);
                var _encoded = (_enc.encodeToString((_input : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                var __tmp__ = _enc.decodeString(_encoded?.__copy__()), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L525"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L526"
                    _t.errorf(("DecodeString Error for encoding %d (%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L529"
                if (_input != ((_decoded : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32_test.go#L530"
                    _t.errorf(("Unexpected result for encoding %d: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_decoded), stdgo.Go.toInterface(_input));
                };
            };
        };
    }
