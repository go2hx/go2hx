package stdgo._internal.encoding.json;
function _tenc(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L856"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L857"
        return { _0 : _buf.bytes(), _1 : (null : stdgo.Error) };
    }
