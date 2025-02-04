package stdgo._internal.slices;
function benchmarkReplace(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _cases = (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_12.T__struct_12>(2, 2, ...[({ _name : ("fast" : stdgo.GoString), _s : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _v : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _i : (10 : stdgo.GoInt), _j : (40 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_12.T__struct_12), ({ _name : ("slow" : stdgo.GoString), _s : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _v : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_12.T__struct_12)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : null, _v : null, _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_12.T__struct_12)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_12.T__struct_12>);
        for (__0 => _c in _cases) {
            @:check2r _b.run((("naive-" : stdgo.GoString) + _c._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                {
                    var _k = (0 : stdgo.GoInt);
                    while ((_k < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        var _s = _c._s();
var _v = _c._v();
var __blank__ = stdgo._internal.slices.Slices__naivereplace._naiveReplace(_s, _c._i, _c._j, ...(_v : Array<stdgo.GoInt>));
                        _k++;
                    };
                };
            });
            @:check2r _b.run((("optimized-" : stdgo.GoString) + _c._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                {
                    var _k = (0 : stdgo.GoInt);
                    while ((_k < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        var _s = _c._s();
var _v = _c._v();
var __blank__ = stdgo._internal.slices.Slices_replace.replace(_s, _c._i, _c._j, ...(_v : Array<stdgo.GoInt>));
                        _k++;
                    };
                };
            });
        };
    }
