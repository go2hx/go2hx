package stdgo._internal.flag;
function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>):stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>> {
        var _result = (new stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>((_flags.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L419"
        for (__0 => _f in _flags) {
            _result[(_i : stdgo.GoInt)] = _f;
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L421"
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L423"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_result), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L424"
            return ((@:checkr _result[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").name < (@:checkr _result[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").name : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L426"
        return _result;
    }
