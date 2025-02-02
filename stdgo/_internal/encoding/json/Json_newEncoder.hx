package stdgo._internal.encoding.json;
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder> {
        return (stdgo.Go.setRef(({ _w : _w, _escapeHTML : true } : stdgo._internal.encoding.json.Json_Encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
    }
