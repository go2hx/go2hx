package stdgo.encoding.json;
class Encoder_static_extension {
    static public function setEscapeHTML(_enc:Encoder, _on:Bool):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
        stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension.setEscapeHTML(_enc, _on);
    }
    static public function setIndent(_enc:Encoder, _prefix:String, _indent:String):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension.setIndent(_enc, _prefix, _indent);
    }
    static public function encode(_enc:Encoder, _v:stdgo.AnyInterface):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_Encoder.Encoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension.encode(_enc, _v);
    }
}
