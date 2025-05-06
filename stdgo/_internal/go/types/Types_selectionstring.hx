package stdgo._internal.go.types;
function selectionString(_s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        var _k:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L122"
        {
            final __value__ = (@:checkr _s ?? throw "null pointer dereference")._kind;
            if (__value__ == ((0 : stdgo._internal.go.types.Types_selectionkind.SelectionKind))) {
                _k = ("field " : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.go.types.Types_selectionkind.SelectionKind))) {
                _k = ("method " : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.go.types.Types_selectionkind.SelectionKind))) {
                _k = ("method expr " : stdgo.GoString);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L130"
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L133"
        _buf.writeString(_k?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L134"
        _buf.writeByte((40 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L135"
        stdgo._internal.go.types.Types_writetype.writeType((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _s.recv(), _qf);
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L136"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (") %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._obj.name()));
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L137"
        {
            var t = (_s.type() : stdgo._internal.go.types.Types_type_.Type_);
            if ((@:checkr _s ?? throw "null pointer dereference")._kind == ((0 : stdgo._internal.go.types.Types_selectionkind.SelectionKind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L138"
                _buf.writeByte((32 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L139"
                stdgo._internal.go.types.Types_writetype.writeType((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), t, _qf);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L141"
                stdgo._internal.go.types.Types_writesignature.writeSignature((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _qf);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/selection.go#L143"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
