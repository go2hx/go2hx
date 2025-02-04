package stdgo._internal.mime.multipart;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_t_partreader_static_extension.T_partReader_static_extension) class T_partReader {
    public var _p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>);
    public function new(?_p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_partReader(_p);
    }
}
