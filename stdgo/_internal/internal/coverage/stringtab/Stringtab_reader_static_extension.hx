package stdgo._internal.internal.coverage.stringtab;
@:keep @:allow(stdgo._internal.internal.coverage.stringtab.Stringtab.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function get( _str:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>, _idx:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _str:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> = _str;
        return (@:checkr _str ?? throw "null pointer dereference")._strs[(_idx : stdgo.GoInt)]?.__copy__();
    }
    @:keep
    @:tdfield
    static public function entries( _str:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>):stdgo.GoInt {
        @:recv var _str:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> = _str;
        return ((@:checkr _str ?? throw "null pointer dereference")._strs.length);
    }
    @:keep
    @:tdfield
    static public function read( _str:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>):Void {
        @:recv var _str:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> = _str;
        var _numEntries = (@:check2r (@:checkr _str ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoInt);
        (@:checkr _str ?? throw "null pointer dereference")._strs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), _numEntries).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _idx = (0 : stdgo.GoInt);
            while ((_idx < _numEntries : Bool)) {
                var _slen = (@:check2r (@:checkr _str ?? throw "null pointer dereference")._r.readULEB128() : stdgo.GoUInt64);
(@:checkr _str ?? throw "null pointer dereference")._strs = ((@:checkr _str ?? throw "null pointer dereference")._strs.__append__(@:check2r (@:checkr _str ?? throw "null pointer dereference")._r.readString((_slen : stdgo.GoInt64)).__copy__()));
                _idx++;
            };
        };
    }
}
