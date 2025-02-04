package stdgo._internal.math.big;
function benchmarkExpMont(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(("297778224889315382157302278696111964193" : stdgo.GoString), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(("2548977943381019743024248146923164919440527843026415174732254534318292492375775985739511369575861449426580651447974311336267954477239437734832604782764979371984246675241012538135715981292390886872929238062252506842498360562303324154310849745753254532852868768268023732398278338025070694508489163836616810661033068070127919590264734220833816416141878688318329193389865030063416339367925710474801991305827284114894677717927892032165200876093838921477120036402410731159852999623461591709308405270748511350289172153076023215" : stdgo.GoString), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
        var _mods = (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_40.T__struct_40>(15, 15, ...[
({ _name : ("Odd" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even1" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FE" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even2" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FC" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even3" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281F8" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even4" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281F0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even8" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B21828100" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even32" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B00000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even64" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828282828200FF0000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even96" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF82828283000000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even128" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF82828282828200FFFF28FF2B218281FF00000000000000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("Even255" : stdgo.GoString), _val : ("0x82828282828200FFFF28FF2B218281FF8000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("SmallEven1" : stdgo.GoString), _val : ("0x7E" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("SmallEven2" : stdgo.GoString), _val : ("0x7C" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("SmallEven3" : stdgo.GoString), _val : ("0x78" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40),
({ _name : ("SmallEven4" : stdgo.GoString), _val : ("0x70" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _val : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_40.T__struct_40)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_40.T__struct_40>);
        for (__10 => _mod in _mods) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_mod._val?.__copy__(), (0 : stdgo.GoInt)), _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __11:Bool = __tmp__._1;
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            @:check2r _b.run(_mod._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                @:check2r _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        @:check2r _out.exp(_x, _y, _n);
                        _i++;
                    };
                };
            });
        };
    }
