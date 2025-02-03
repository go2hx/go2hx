package stdgo.net.textproto;
class Writer_static_extension {
    static public function _closeDot(_w:Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>);
        stdgo._internal.net.textproto.Textproto_Writer_static_extension.Writer_static_extension._closeDot(_w);
    }
    static public function dotWriter(_w:Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>);
        return stdgo._internal.net.textproto.Textproto_Writer_static_extension.Writer_static_extension.dotWriter(_w);
    }
    static public function printfLine(_w:Writer, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_Writer_static_extension.Writer_static_extension.printfLine(_w, _format, ...[for (i in _args) i]);
    }
}
