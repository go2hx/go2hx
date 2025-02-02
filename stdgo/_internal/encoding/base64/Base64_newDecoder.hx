package stdgo._internal.encoding.base64;
function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _r : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader(_r) : stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_newlineFilteringReader.T_newlineFilteringReader>)) } : stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_decoder.T_decoder>));
    }
