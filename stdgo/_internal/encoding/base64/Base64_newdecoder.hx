package stdgo._internal.encoding.base64;
function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L618"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _r : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader(_r) : stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader>)) } : stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_decoder.T_decoder>));
    }
