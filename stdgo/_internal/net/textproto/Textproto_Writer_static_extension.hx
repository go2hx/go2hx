package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _closeDot( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._dot != null && (((@:checkr _w ?? throw "null pointer dereference")._dot : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._dot : Dynamic).__nil__))) {
            @:check2r (@:checkr _w ?? throw "null pointer dereference")._dot.close();
        };
    }
    @:keep
    @:tdfield
    static public function dotWriter( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> = _w;
        @:check2r _w._closeDot();
        (@:checkr _w ?? throw "null pointer dereference")._dot = (stdgo.Go.setRef(({ _w : _w } : stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>);
        return stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._dot);
    }
    @:keep
    @:tdfield
    static public function printfLine( _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> = _w;
        @:check2r _w._closeDot();
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference").w), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        @:check2r (@:checkr _w ?? throw "null pointer dereference").w.write(stdgo._internal.net.textproto.Textproto__crnl._crnl);
        return @:check2r (@:checkr _w ?? throw "null pointer dereference").w.flush();
    }
}
