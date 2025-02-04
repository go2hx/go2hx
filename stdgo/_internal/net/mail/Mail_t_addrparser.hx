package stdgo._internal.net.mail;
@:structInit @:using(stdgo._internal.net.mail.Mail_t_addrparser_static_extension.T_addrParser_static_extension) class T_addrParser {
    public var _s : stdgo.GoString = "";
    public var _dec : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = (null : stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>);
    public function new(?_s:stdgo.GoString, ?_dec:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>) {
        if (_s != null) this._s = _s;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_addrParser(_s, _dec);
    }
}
