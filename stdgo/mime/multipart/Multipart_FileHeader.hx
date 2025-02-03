package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.FileHeader_static_extension) abstract FileHeader(stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader) from stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader to stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader {
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = (v : stdgo.GoString);
        return v;
    }
    public var header(get, set) : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader;
    function get_header():stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader return this.header;
    function set_header(v:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader {
        this.header = v;
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = (v : stdgo.GoInt64);
        return v;
    }
    public var _content(get, set) : Array<std.UInt>;
    function get__content():Array<std.UInt> return [for (i in this._content) i];
    function set__content(v:Array<std.UInt>):Array<std.UInt> {
        this._content = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmpfile(get, set) : String;
    function get__tmpfile():String return this._tmpfile;
    function set__tmpfile(v:String):String {
        this._tmpfile = (v : stdgo.GoString);
        return v;
    }
    public var _tmpoff(get, set) : haxe.Int64;
    function get__tmpoff():haxe.Int64 return this._tmpoff;
    function set__tmpoff(v:haxe.Int64):haxe.Int64 {
        this._tmpoff = (v : stdgo.GoInt64);
        return v;
    }
    public var _tmpshared(get, set) : Bool;
    function get__tmpshared():Bool return this._tmpshared;
    function set__tmpshared(v:Bool):Bool {
        this._tmpshared = v;
        return v;
    }
    public function new(?filename:String, ?header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader, ?size:haxe.Int64, ?_content:Array<std.UInt>, ?_tmpfile:String, ?_tmpoff:haxe.Int64, ?_tmpshared:Bool) this = new stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader((filename : stdgo.GoString), header, (size : stdgo.GoInt64), ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_tmpfile : stdgo.GoString), (_tmpoff : stdgo.GoInt64), _tmpshared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
