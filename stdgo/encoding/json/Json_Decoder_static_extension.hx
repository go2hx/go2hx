package stdgo.encoding.json;
class Decoder_static_extension {
    static public function inputOffset(_dec:Decoder):haxe.Int64 {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.inputOffset(_dec);
    }
    static public function _peek(_dec:Decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._peek(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function more(_dec:Decoder):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.more(_dec);
    }
    static public function _tokenError(_dec:Decoder, _c:std.UInt):stdgo.Tuple<Token, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        final _c = (_c : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenError(_dec, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(_dec:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.token(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tokenValueEnd(_dec:Decoder):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenValueEnd(_dec);
    }
    static public function _tokenValueAllowed(_dec:Decoder):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenValueAllowed(_dec);
    }
    static public function _tokenPrepareForDecode(_dec:Decoder):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenPrepareForDecode(_dec);
    }
    static public function _refill(_dec:Decoder):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._refill(_dec);
    }
    static public function _readValue(_dec:Decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._readValue(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function buffered(_dec:Decoder):stdgo._internal.io.Io_Reader.Reader {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.buffered(_dec);
    }
    static public function decode(_dec:Decoder, _v:stdgo.AnyInterface):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.decode(_dec, _v);
    }
    static public function disallowUnknownFields(_dec:Decoder):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.disallowUnknownFields(_dec);
    }
    static public function useNumber(_dec:Decoder):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>);
        stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.useNumber(_dec);
    }
}
