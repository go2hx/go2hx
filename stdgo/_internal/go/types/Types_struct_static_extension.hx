package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Struct_asInterface) class Struct_static_extension {
    @:keep
    @:tdfield
    static public function _markComplete( _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L63"
        if ((@:checkr _s ?? throw "null pointer dereference")._fields == null) {
            (@:checkr _s ?? throw "null pointer dereference")._fields = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        };
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L57"
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = _t;
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L56"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function tag( _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L50"
        if ((_i < ((@:checkr _s ?? throw "null pointer dereference")._tags.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L51"
            return (@:checkr _s ?? throw "null pointer dereference")._tags[(_i : stdgo.GoInt)]?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L53"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function field( _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L46"
        return (@:checkr _s ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function numFields( _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/struct.go#L43"
        return ((@:checkr _s ?? throw "null pointer dereference")._fields.length);
    }
}
