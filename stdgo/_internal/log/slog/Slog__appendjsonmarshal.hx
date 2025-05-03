package stdgo._internal.log.slog;
function _appendJSONMarshal(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _v:stdgo.AnyInterface):stdgo.Error {
        var _bb:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bb) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L146"
        _enc.setEscapeHTML(false);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L147"
        {
            var _err = (_enc.encode(_v) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L148"
                return _err;
            };
        };
        var _bs = _bb.bytes();
        //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L151"
        _buf.write((_bs.__slice__(0, ((_bs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L152"
        return (null : stdgo.Error);
    }
