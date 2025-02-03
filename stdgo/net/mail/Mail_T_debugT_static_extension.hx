package stdgo.net.mail;
class T_debugT_static_extension {
    static public function printf(_d:T_debugT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.net.mail.Mail_T_debugT_static_extension.T_debugT_static_extension.printf(_d, _format, ...[for (i in _args) i]);
    }
}
