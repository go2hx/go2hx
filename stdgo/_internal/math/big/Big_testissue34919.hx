package stdgo._internal.math.big;
function testIssue34919(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _acc in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_63.T__struct_63>(6, 6, ...[({ _name : ("Float32" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
            @:check2r _x.float32();
        } } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63), ({ _name : ("Float64" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
            @:check2r _x.float64();
        } } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63), ({ _name : ("Inv" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
            @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).inv(_x);
        } } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63), ({ _name : ("Sign" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
            @:check2r _x.sign();
        } } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63), ({ _name : ("IsInt" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
            @:check2r _x.isInt();
        } } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63), ({ _name : ("Num" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void {
            @:check2r _x.num();
        } } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : stdgo._internal.math.big.Big_t__struct_63.T__struct_63)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_63.T__struct_63>)) {
            var _r = (stdgo.Go.setRef((new stdgo._internal.math.big.Big_rat.Rat(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(991u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat) } : stdgo._internal.math.big.Big_int_.Int_), ({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((0 : stdgo.GoInt).toBasic(), (1 : stdgo.GoInt)).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat) } : stdgo._internal.math.big.Big_int_.Int_)) : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
            _acc._f(_r);
            {
                var _d = (((@:checkr _r ?? throw "null pointer dereference")._b._abs.__slice__(0, (1 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat)[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
                if (_d != ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
                    @:check2r _t.errorf(("%s modified denominator: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_acc._name), stdgo.Go.toInterface(_d));
                };
            };
        };
    }
