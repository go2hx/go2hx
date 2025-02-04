package stdgo._internal.internal.txtar;
function format(_a:stdgo.Ref<stdgo._internal.internal.txtar.Txtar_archive.Archive>):stdgo.Slice<stdgo.GoUInt8> {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        @:check2 _buf.write(stdgo._internal.internal.txtar.Txtar__fixnl._fixNL((@:checkr _a ?? throw "null pointer dereference").comment));
        for (__0 => _f in (@:checkr _a ?? throw "null pointer dereference").files) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("-- %s --\n" : stdgo.GoString), stdgo.Go.toInterface(_f.name));
            @:check2 _buf.write(stdgo._internal.internal.txtar.Txtar__fixnl._fixNL(_f.data));
        };
        return @:check2 _buf.bytes();
    }
