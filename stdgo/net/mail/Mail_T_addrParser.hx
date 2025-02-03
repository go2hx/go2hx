package stdgo.net.mail;
@:structInit @:using(stdgo.net.mail.Mail.T_addrParser_static_extension) abstract T_addrParser(stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser) from stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser to stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _dec(get, set) : stdgo._internal.mime.Mime_WordDecoder.WordDecoder;
    function get__dec():stdgo._internal.mime.Mime_WordDecoder.WordDecoder return this._dec;
    function set__dec(v:stdgo._internal.mime.Mime_WordDecoder.WordDecoder):stdgo._internal.mime.Mime_WordDecoder.WordDecoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
        return v;
    }
    public function new(?_s:String, ?_dec:stdgo._internal.mime.Mime_WordDecoder.WordDecoder) this = new stdgo._internal.net.mail.Mail_T_addrParser.T_addrParser((_s : stdgo.GoString), (_dec : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
