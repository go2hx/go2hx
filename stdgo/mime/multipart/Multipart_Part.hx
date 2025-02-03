package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.Part_static_extension) abstract Part(stdgo._internal.mime.multipart.Multipart_Part.Part) from stdgo._internal.mime.multipart.Multipart_Part.Part to stdgo._internal.mime.multipart.Multipart_Part.Part {
    public var header(get, set) : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader;
    function get_header():stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader return this.header;
    function set_header(v:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader {
        this.header = v;
        return v;
    }
    public var _mr(get, set) : Reader;
    function get__mr():Reader return this._mr;
    function set__mr(v:Reader):Reader {
        this._mr = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>);
        return v;
    }
    public var _disposition(get, set) : String;
    function get__disposition():String return this._disposition;
    function set__disposition(v:String):String {
        this._disposition = (v : stdgo.GoString);
        return v;
    }
    public var _dispositionParams(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__dispositionParams():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._dispositionParams;
    function set__dispositionParams(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._dispositionParams = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _total(get, set) : haxe.Int64;
    function get__total():haxe.Int64 return this._total;
    function set__total(v:haxe.Int64):haxe.Int64 {
        this._total = (v : stdgo.GoInt64);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = (v : stdgo.Error);
        return v;
    }
    public function new(?header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader, ?_mr:Reader, ?_disposition:String, ?_dispositionParams:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_n:StdTypes.Int, ?_total:haxe.Int64, ?_err:stdgo.Error, ?_readErr:stdgo.Error) this = new stdgo._internal.mime.multipart.Multipart_Part.Part(header, (_mr : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>), (_disposition : stdgo.GoString), (_dispositionParams : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _r, (_n : stdgo.GoInt), (_total : stdgo.GoInt64), (_err : stdgo.Error), (_readErr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
