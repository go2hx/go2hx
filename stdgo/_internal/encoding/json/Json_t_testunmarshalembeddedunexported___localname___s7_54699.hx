package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s7_54699_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S7_54699 {
    @:embedded
    @:tag("`json:\"embed1\"`")
    public var _embed1 : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 = ({} : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365);
    @:embedded
    public var _embed2 : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 = ({} : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390);
    public function new(?_embed1:stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (_embed2 != null) this._embed2 = _embed2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S7_54699(_embed1, _embed2);
    }
}
