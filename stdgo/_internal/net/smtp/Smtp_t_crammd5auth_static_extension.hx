package stdgo._internal.net.smtp;
@:keep @:allow(stdgo._internal.net.smtp.Smtp.T_cramMD5Auth_asInterface) class T_cramMD5Auth_static_extension {
    @:keep
    @:tdfield
    static public function next( _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth>, _fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth> = _a;
        if (_more) {
            var _d = (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.md5.Md5_new_.new_, ((@:checkr _a ?? throw "null pointer dereference")._secret : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_hash.Hash);
            _d.write(_fromServer);
            var _s = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _d.size()).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            return { _0 : stdgo._internal.fmt.Fmt_appendf.appendf((null : stdgo.Slice<stdgo.GoUInt8>), ("%s %x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _a ?? throw "null pointer dereference")._username), stdgo.Go.toInterface(_d.sum(_s))), _1 : (null : stdgo.Error) };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function start( _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth>, _server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth> = _a;
        return { _0 : ("CRAM-MD5" : stdgo.GoString), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
}
