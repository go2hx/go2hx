package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.T_partReader_static_extension) abstract T_partReader(stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader) from stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader to stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader {
    public var _p(get, set) : Part;
    function get__p():Part return this._p;
    function set__p(v:Part):Part {
        this._p = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        return v;
    }
    public function new(?_p:Part) this = new stdgo._internal.mime.multipart.Multipart_T_partReader.T_partReader((_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
