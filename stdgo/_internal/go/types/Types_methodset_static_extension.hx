package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.MethodSet_asInterface) class MethodSet_static_extension {
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L44"
        if (_s.len() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L45"
            return null;
        };
        var _key = (stdgo._internal.go.types.Types_id.id(_pkg, _name?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = (stdgo._internal.sort.Sort_search.search(((@:checkr _s ?? throw "null pointer dereference")._list.length), function(_i:stdgo.GoInt):Bool {
            var _m = (@:checkr _s ?? throw "null pointer dereference")._list[(_i : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L51"
            return ((@:checkr _m ?? throw "null pointer dereference")._obj.id() >= _key : Bool);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L53"
        if ((_i < ((@:checkr _s ?? throw "null pointer dereference")._list.length) : Bool)) {
            var _m = (@:checkr _s ?? throw "null pointer dereference")._list[(_i : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L55"
            if ((@:checkr _m ?? throw "null pointer dereference")._obj.id() == (_key)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L56"
                return _m;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L59"
        return null;
    }
    @:keep
    @:tdfield
    static public function at( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L40"
        return (@:checkr _s ?? throw "null pointer dereference")._list[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L37"
        return ((@:checkr _s ?? throw "null pointer dereference")._list.length);
    }
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L23"
        if (_s.len() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L24"
            return ("MethodSet {}" : stdgo.GoString);
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L28"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("MethodSet {" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L29"
        for (__0 => _f in (@:checkr _s ?? throw "null pointer dereference")._list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L30"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L32"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("}" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L33"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
