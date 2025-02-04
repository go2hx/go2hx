package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s8_54753_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___S8_54753 {
    @:embedded
    @:tag("`json:\"embed1\"`")
    public var _embed1 : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 = ({} : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365);
    @:embedded
    @:tag("`json:\"embed2\"`")
    public var _embed2 : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 = ({} : stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390);
    public var q : stdgo.GoInt = 0;
    public function new(?_embed1:stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390, ?q:stdgo.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (_embed2 != null) this._embed2 = _embed2;
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___S8_54753(_embed1, _embed2, q);
    }
}
