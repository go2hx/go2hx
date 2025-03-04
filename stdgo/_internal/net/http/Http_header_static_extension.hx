package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Header_asInterface) class Header_static_extension {
    @:keep
    @:tdfield
    static public function writeSubset( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error throw "Header:net.http.writeSubset is not yet implemented";
    @:keep
    @:tdfield
    static public function clone( _h:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header throw "Header:net.http.clone is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error throw "Header:net.http.write is not yet implemented";
    @:keep
    @:tdfield
    static public function del( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):Void throw "Header:net.http.del is not yet implemented";
    @:keep
    @:tdfield
    static public function values( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.Slice<stdgo.GoString> throw "Header:net.http.values is not yet implemented";
    @:keep
    @:tdfield
    static public function get( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.GoString throw "Header:net.http.get is not yet implemented";
    @:keep
    @:tdfield
    static public function set( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void throw "Header:net.http.set is not yet implemented";
    @:keep
    @:tdfield
    static public function add( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void throw "Header:net.http.add is not yet implemented";
}
