package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.Form_static_extension) abstract Form(stdgo._internal.mime.multipart.Multipart_Form.Form) from stdgo._internal.mime.multipart.Multipart_Form.Form to stdgo._internal.mime.multipart.Multipart_Form.Form {
    public var value(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>;
    function get_value():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> return this.value;
    function set_value(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> {
        this.value = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public var file(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>;
    function get_file():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>> return this.file;
    function set_file(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>> {
        this.file = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>);
        return v;
    }
    public function new(?value:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?file:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>) this = new stdgo._internal.mime.multipart.Multipart_Form.Form((value : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), (file : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
