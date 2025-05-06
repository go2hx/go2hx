package stdgo._internal.go.doc;
@:keep @:allow(stdgo._internal.go.doc.Doc.T_data_asInterface) class T_data_static_extension {
    @:keep
    @:tdfield
    static public function less( _d:stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L827"
        return (@:checkr _d ?? throw "null pointer dereference")._less(_i, _j);
    }
    @:keep
    @:tdfield
    static public function swap( _d:stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L826"
        (@:checkr _d ?? throw "null pointer dereference")._swap(_i, _j);
    }
    @:keep
    @:tdfield
    static public function len( _d:stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L825"
        return (@:checkr _d ?? throw "null pointer dereference")._n;
    }
}
