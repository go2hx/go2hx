package stdgo._internal.text.scanner;
function _makeSource(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (__0 => _k in stdgo._internal.text.scanner.Scanner__tokenlist._tokenList) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _pattern?.__copy__(), stdgo.Go.toInterface(_k._text));
        };
        return (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    }
