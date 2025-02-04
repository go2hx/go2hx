package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.TagPathError_asInterface) class TagPathError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_tagpatherror.TagPathError> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s field %q with tag %q conflicts with field %q with tag %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").struct_), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").field1), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").tag1), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").field2), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").tag2))?.__copy__();
    }
}
