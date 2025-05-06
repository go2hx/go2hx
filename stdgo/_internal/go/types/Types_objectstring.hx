package stdgo._internal.go.types;
function objectString(_obj:stdgo._internal.go.types.Types_object.Object, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L579"
        stdgo._internal.go.types.Types__writeobject._writeObject((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _obj, _qf);
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L580"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
