package stdgo._internal.go.types;
function typeString(_typ:stdgo._internal.go.types.Types_type_.Type_, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L50"
        stdgo._internal.go.types.Types_writetype.writeType((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _typ, _qf);
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L51"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
