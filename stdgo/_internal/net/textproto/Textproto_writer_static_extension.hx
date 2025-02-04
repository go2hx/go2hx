package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _closeDot( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._dot != null && (((@:checkr _w ?? throw "null pointer dereference")._dot : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._dot : Dynamic).__nil__))) {
            @:check2r (@:checkr _w ?? throw "null pointer dereference")._dot.close();
        };
    }
    @:keep
    @:tdfield
    static public function dotWriter( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>):stdgo._internal.io.Io_writecloser.WriteCloser {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = _w;
        @:check2r _w._closeDot();
        (@:checkr _w ?? throw "null pointer dereference")._dot = (stdgo.Go.setRef(({ _w : _w } : stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
        return stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._dot);
    }
    @:keep
    @:tdfield
    static public function printfLine( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = _w;
        @:check2r _w._closeDot();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference").w), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        @:check2r (@:checkr _w ?? throw "null pointer dereference").w.write(stdgo._internal.net.textproto.Textproto__crnl._crnl);
        return @:check2r (@:checkr _w ?? throw "null pointer dereference").w.flush();
    }
}
