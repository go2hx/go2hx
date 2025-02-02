package stdgo._internal.mime.multipart;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_Form_static_extension.Form_static_extension) class Form {
    public var value : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
    public var file : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>);
    public function new(?value:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>, ?file:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>) {
        if (value != null) this.value = value;
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Form(value, file);
    }
}
