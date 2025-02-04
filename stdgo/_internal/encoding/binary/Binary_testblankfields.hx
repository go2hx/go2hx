package stdgo._internal.encoding.binary;
function testBlankFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _b1 = ({ a : (1234567890u32 : stdgo.GoUInt32), b : (2.718281828 : stdgo.GoFloat64), c : (42 : stdgo.GoUInt8) } : stdgo._internal.encoding.binary.Binary_blankfields.BlankFields);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_blankfields.BlankFields>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _p:stdgo._internal.encoding.binary.Binary_blankfieldsprobe.BlankFieldsProbe = ({} : stdgo._internal.encoding.binary.Binary_blankfieldsprobe.BlankFieldsProbe);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_blankfieldsprobe.BlankFieldsProbe>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((((_p.p0 != ((0 : stdgo.GoInt32)) || _p.p1[(0 : stdgo.GoInt)] != ((0 : stdgo.GoInt16)) : Bool) || _p.p2[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) || (_p.p3.f[(0 : stdgo.GoInt)] != (0 : stdgo.GoFloat64)) : Bool)) {
            @:check2r _t.errorf(("non-zero values for originally blank fields: %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
        };
        {
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_blankfieldsprobe.BlankFieldsProbe>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _b2:stdgo._internal.encoding.binary.Binary_blankfields.BlankFields = ({} : stdgo._internal.encoding.binary.Binary_blankfields.BlankFields);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_blankfields.BlankFields>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if (((_b1.a != (_b2.a) || _b1.b != (_b2.b) : Bool) || (_b1.c != _b2.c) : Bool)) {
            @:check2r _t.errorf(("%#v != %#v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_b2)));
        };
    }
