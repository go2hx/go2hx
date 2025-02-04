package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s6_54655_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S6_54655 {
    @:embedded
    @:tag("`json:\"embed1\"`")
    public var _embed1 : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 = ({} : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365);
    public function new(?_embed1:stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) {
        if (_embed1 != null) this._embed1 = _embed1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S6_54655(_embed1);
    }
}
