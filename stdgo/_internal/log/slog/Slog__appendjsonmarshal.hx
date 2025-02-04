package stdgo._internal.log.slog;
function _appendJSONMarshal(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _v:stdgo.AnyInterface):stdgo.Error {
        var _bb:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bb) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        @:check2r _enc.setEscapeHTML(false);
        {
            var _err = (@:check2r _enc.encode(_v) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _bs = @:check2 _bb.bytes();
        @:check2r _buf.write((_bs.__slice__(0, ((_bs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
