package stdgo._internal.encoding.json;
function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L193"
        return (stdgo.Go.setRef(({ _w : _w, _escapeHTML : true } : stdgo._internal.encoding.json.Json_encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
    }
