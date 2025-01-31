package stdgo._internal.net.mail;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.net.mail.Mail.T_debugT_asInterface) class T_debugT_static_extension {
    @:keep
    @:tdfield
    static public function printf( _d:stdgo._internal.net.mail.Mail_T_debugT.T_debugT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _d:stdgo._internal.net.mail.Mail_T_debugT.T_debugT = _d;
        if (_d) {
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
}
