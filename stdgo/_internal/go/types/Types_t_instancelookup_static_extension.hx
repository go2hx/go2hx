package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_instanceLookup_asInterface) class T_instanceLookup_static_extension {
    @:keep
    @:tdfield
    static public function _add( _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup>, _inst:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L303"
        for (_i => _t in (@:checkr _l ?? throw "null pointer dereference")._buf.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L304"
            if (({
                final value = _t;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _l ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] = _inst;
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L306"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L309"
        if ((@:checkr _l ?? throw "null pointer dereference")._m == null) {
            (@:checkr _l ?? throw "null pointer dereference")._m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>);
        };
        var _insts = ((@:checkr _l ?? throw "null pointer dereference")._m[_inst.origin()] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>));
        (@:checkr _l ?? throw "null pointer dereference")._m[_inst.origin()] = (_insts.__append__(_inst) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>);
    }
    @:keep
    @:tdfield
    static public function _lookup( _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup>, _inst:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup> = _l;
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L289"
        for (__0 => _t in (@:checkr _l ?? throw "null pointer dereference")._buf.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L290"
            if ((({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && stdgo._internal.go.types.Types_identical.identical(stdgo.Go.asInterface(_inst), stdgo.Go.asInterface(_t)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L291"
                return _t;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L294"
        for (__9 => _t in ((@:checkr _l ?? throw "null pointer dereference")._m[_inst.origin()] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L295"
            if (stdgo._internal.go.types.Types_identical.identical(stdgo.Go.asInterface(_inst), stdgo.Go.asInterface(_t))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L296"
                return _t;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L299"
        return null;
    }
}
