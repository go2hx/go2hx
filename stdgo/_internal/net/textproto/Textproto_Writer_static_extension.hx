package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function _closeDot( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> = _w;
        if (_w._dot != null && ((_w._dot : Dynamic).__nil__ == null || !(_w._dot : Dynamic).__nil__)) {
            _w._dot.close();
        };
    }
    @:keep
    static public function dotWriter( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> = _w;
        _w._closeDot();
        _w._dot = (stdgo.Go.setRef(({ _w : _w } : stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>);
        return stdgo.Go.asInterface(_w._dot);
    }
    @:keep
    static public function printfLine( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> = _w;
        _w._closeDot();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_w.w), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        _w.w.write(stdgo._internal.net.textproto.Textproto__crnl._crnl);
        return _w.w.flush();
    }
}
