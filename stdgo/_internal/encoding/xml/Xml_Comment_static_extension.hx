package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Comment_asInterface) class Comment_static_extension {
    @:keep
    static public function copy( _c:stdgo._internal.encoding.xml.Xml_Comment.Comment):stdgo._internal.encoding.xml.Xml_Comment.Comment {
        @:recv var _c:stdgo._internal.encoding.xml.Xml_Comment.Comment = _c;
        return (stdgo._internal.bytes.Bytes_clone.clone(_c) : stdgo._internal.encoding.xml.Xml_Comment.Comment);
    }
}