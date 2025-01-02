package stdgo._internal.encoding.gob;
function testStructType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _sstruct = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("Foo" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_Foo.Foo() : stdgo._internal.encoding.gob.Gob_Foo.Foo)))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        var _str = (_sstruct._string()?.__copy__() : stdgo.GoString);
        var _expected = ("Foo = struct { A int; B int; C string; D bytes; E float; F float; G Bar = struct { X string; }; H Bar; I Foo; }" : stdgo.GoString);
        if (_str != (_expected)) {
            @:check2r _t.errorf(("struct printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
