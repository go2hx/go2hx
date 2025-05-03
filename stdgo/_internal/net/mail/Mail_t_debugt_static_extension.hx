package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.T_debugT_asInterface) class T_debugT_static_extension {
    @:keep
    @:tdfield
    static public function printf( _d:stdgo._internal.net.mail.Mail_t_debugt.T_debugT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _d:stdgo._internal.net.mail.Mail_t_debugt.T_debugT = _d;
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L40"
        if (_d) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L41"
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
}
