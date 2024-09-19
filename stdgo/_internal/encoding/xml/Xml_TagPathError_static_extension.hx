package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.TagPathError_asInterface) class TagPathError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s field %q with tag %q conflicts with field %q with tag %q" : stdgo.GoString), stdgo.Go.toInterface(_e.struct_), stdgo.Go.toInterface(_e.field1), stdgo.Go.toInterface(_e.tag1), stdgo.Go.toInterface(_e.field2), stdgo.Go.toInterface(_e.tag2))?.__copy__();
    }
}
