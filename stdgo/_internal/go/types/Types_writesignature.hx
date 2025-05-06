package stdgo._internal.go.types;
function writeSignature(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typestring.go#L65"
        stdgo._internal.go.types.Types__newtypewriter._newTypeWriter(_buf, _qf)._signature(_sig);
    }
