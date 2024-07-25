package stdgo._internal.encoding.json_test;
import stdgo._internal.encoding.json.Json;
final unknown : stdgo._internal.encoding.json_test.Json_test.Animal = (2 : stdgo._internal.encoding.json_test.Json_test.Animal);
final gopher = (2 : stdgo._internal.encoding.json_test.Json_test.Animal);
final zebra = (2 : stdgo._internal.encoding.json_test.Json_test.Animal);
final unrecognized : stdgo._internal.encoding.json_test.Json_test.Size = (2 : stdgo._internal.encoding.json_test.Json_test.Size);
final small = (2 : stdgo._internal.encoding.json_test.Json_test.Size);
final large = (2 : stdgo._internal.encoding.json_test.Json_test.Size);
class T__struct_47_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_47>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.json_test.Json_test.T__struct_47_asInterface) class T__struct_47_static_extension {

}
@:local @:using(stdgo._internal.encoding.json_test.Json_test.T__struct_47_static_extension) typedef T__struct_47 = {
    @:tag("`json:\"header\"`")
    public var header : stdgo.Ref<stdgo._internal.encoding.json.Json.RawMessage>;
    @:tag("`json:\"body\"`")
    public var body : stdgo.GoString;
};
@:named @:using(stdgo._internal.encoding.json_test.Json_test.Animal_static_extension) typedef Animal = stdgo.GoInt;
@:named @:using(stdgo._internal.encoding.json_test.Json_test.Size_static_extension) typedef Size = stdgo.GoInt;
function example_customMarshalJSON():Void {
        var _blob = ("[\"gopher\",\"armadillo\",\"zebra\",\"unknown\",\"gopher\",\"bee\",\"gopher\",\"zebra\"]" : stdgo.GoString);
        var _zoo:stdgo.Slice<Animal> = (null : stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.Animal>);
        {
            var _err = (stdgo._internal.encoding.json.Json.unmarshal((_blob : stdgo.Slice<stdgo.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_zoo) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.Animal>>))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _census = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json_test.Json_test.Animal, stdgo.GoInt>);
        for (__0 => _animal in _zoo) {
            _census[_animal] = ((_census[_animal] ?? (0 : stdgo.GoInt)) + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        };
        stdgo._internal.fmt.Fmt.printf(("Zoo Census:\n* Gophers: %d\n* Zebras:  %d\n* Unknown: %d\n" : stdgo.GoString), stdgo.Go.toInterface((_census[(1 : stdgo._internal.encoding.json_test.Json_test.Animal)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_census[(2 : stdgo._internal.encoding.json_test.Json_test.Animal)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_census[(0 : stdgo._internal.encoding.json_test.Json_test.Animal)] ?? (0 : stdgo.GoInt))));
    }
@:structInit class T_exampleMarshal___localname___ColorGroup_284 {
    public var id : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public var colors : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?id:stdgo.GoInt, ?name:stdgo.GoString, ?colors:stdgo.Slice<stdgo.GoString>) {
        if (id != null) this.id = id;
        if (name != null) this.name = name;
        if (colors != null) this.colors = colors;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleMarshal___localname___ColorGroup_284(id, name, colors);
    }
}
function exampleMarshal():Void {
        {};
        var _group = ({ id : (1 : stdgo.GoInt), name : ("Reds" : stdgo.GoString), colors : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Crimson" : stdgo.GoString), ("Red" : stdgo.GoString), ("Ruby" : stdgo.GoString), ("Maroon" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.encoding.json_test.Json_test.T_exampleMarshal___localname___ColorGroup_284);
        var __tmp__ = stdgo._internal.encoding.json.Json.marshal(stdgo.Go.toInterface(_group)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.os.Os.stdout.write(_b);
    }
@:structInit class T_exampleUnmarshal___localname___Animal_809 {
    public var name : stdgo.GoString = "";
    public var order : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?order:stdgo.GoString) {
        if (name != null) this.name = name;
        if (order != null) this.order = order;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleUnmarshal___localname___Animal_809(name, order);
    }
}
function exampleUnmarshal():Void {
        var _jsonBlob:stdgo.Slice<stdgo.GoUInt8> = (("[\n\t{\"Name\": \"Platypus\", \"Order\": \"Monotremata\"},\n\t{\"Name\": \"Quoll\",    \"Order\": \"Dasyuromorphia\"}\n]" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {};
        var _animals:stdgo.Slice<T_exampleUnmarshal___localname___Animal_809> = (null : stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.T_exampleUnmarshal___localname___Animal_809>);
        var _err = (stdgo._internal.encoding.json.Json.unmarshal(_jsonBlob, stdgo.Go.toInterface((stdgo.Go.setRef(_animals) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.T_exampleUnmarshal___localname___Animal_809>>))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%+v" : stdgo.GoString), stdgo.Go.toInterface(_animals));
    }
@:structInit class T_exampleDecoder___localname___Message_1418 {
    public var name : stdgo.GoString = "";
    public var text : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?text:stdgo.GoString) {
        if (name != null) this.name = name;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleDecoder___localname___Message_1418(name, text);
    }
}
function exampleDecoder():Void {
        {};
        {};
        var _dec = stdgo._internal.encoding.json.Json.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n\t{\"Name\": \"Ed\", \"Text\": \"Knock knock.\"}\n\t{\"Name\": \"Sam\", \"Text\": \"Who\'s there?\"}\n\t{\"Name\": \"Ed\", \"Text\": \"Go fmt.\"}\n\t{\"Name\": \"Sam\", \"Text\": \"Go fmt who?\"}\n\t{\"Name\": \"Ed\", \"Text\": \"Go fmt yourself!\"}\n" : stdgo.GoString))));
        while (true) {
            var _m:T_exampleDecoder___localname___Message_1418 = ({} : stdgo._internal.encoding.json_test.Json_test.T_exampleDecoder___localname___Message_1418);
            {
                var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json_test.Json_test.T_exampleDecoder___localname___Message_1418>))) : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    break;
                } else if (_err != null) {
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            stdgo._internal.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_m.text));
        };
    }
function exampleDecoder_Token():Void {
        {};
        var _dec = stdgo._internal.encoding.json.Json.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n\t{\"Message\": \"Hello\", \"Array\": [1, 2, 3], \"Null\": null, \"Number\": 1.234}\n" : stdgo.GoString))));
        while (true) {
            var __tmp__ = _dec.token(), _t:stdgo._internal.encoding.json.Json.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt.printf(("%T: %v" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
            if (_dec.more()) {
                stdgo._internal.fmt.Fmt.printf((" (more)" : stdgo.GoString));
            };
            stdgo._internal.fmt.Fmt.printf(("\n" : stdgo.GoString));
        };
    }
@:structInit class T_exampleDecoder_Decode_stream___localname___Message_2956 {
    public var name : stdgo.GoString = "";
    public var text : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?text:stdgo.GoString) {
        if (name != null) this.name = name;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleDecoder_Decode_stream___localname___Message_2956(name, text);
    }
}
function exampleDecoder_Decode_stream():Void {
        {};
        {};
        var _dec = stdgo._internal.encoding.json.Json.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n\t[\n\t\t{\"Name\": \"Ed\", \"Text\": \"Knock knock.\"},\n\t\t{\"Name\": \"Sam\", \"Text\": \"Who\'s there?\"},\n\t\t{\"Name\": \"Ed\", \"Text\": \"Go fmt.\"},\n\t\t{\"Name\": \"Sam\", \"Text\": \"Go fmt who?\"},\n\t\t{\"Name\": \"Ed\", \"Text\": \"Go fmt yourself!\"}\n\t]\n" : stdgo.GoString))));
        var __tmp__ = _dec.token(), _t:stdgo._internal.encoding.json.Json.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%T: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
        while (_dec.more()) {
            var _m:T_exampleDecoder_Decode_stream___localname___Message_2956 = ({} : stdgo._internal.encoding.json_test.Json_test.T_exampleDecoder_Decode_stream___localname___Message_2956);
            var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json_test.Json_test.T_exampleDecoder_Decode_stream___localname___Message_2956>))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt.printf(("%v: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_m.text));
        };
        {
            var __tmp__ = _dec.token();
            _t = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%T: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_t));
    }
@:structInit class T_exampleRawMessage_unmarshal___localname___Color_3769 {
    public var space : stdgo.GoString = "";
    public var point : stdgo._internal.encoding.json.Json.RawMessage = new stdgo._internal.encoding.json.Json.RawMessage(0, 0);
    public function new(?space:stdgo.GoString, ?point:stdgo._internal.encoding.json.Json.RawMessage) {
        if (space != null) this.space = space;
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleRawMessage_unmarshal___localname___Color_3769(space, point);
    }
}
@:structInit class T_exampleRawMessage_unmarshal___localname___RGB_3879 {
    public var r : stdgo.GoUInt8 = 0;
    public var g : stdgo.GoUInt8 = 0;
    public var b : stdgo.GoUInt8 = 0;
    public function new(?r:stdgo.GoUInt8, ?g:stdgo.GoUInt8, ?b:stdgo.GoUInt8) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleRawMessage_unmarshal___localname___RGB_3879(r, g, b);
    }
}
@:structInit class T_exampleRawMessage_unmarshal___localname___YCbCr_3931 {
    public var y : stdgo.GoUInt8 = 0;
    public var cb : stdgo.GoInt8 = 0;
    public var cr : stdgo.GoInt8 = 0;
    public function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoInt8, ?cr:stdgo.GoInt8) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleRawMessage_unmarshal___localname___YCbCr_3931(y, cb, cr);
    }
}
function exampleRawMessage_unmarshal():Void {
        {};
        {};
        {};
        var _j:stdgo.Slice<stdgo.GoUInt8> = (("[\n\t{\"Space\": \"YCbCr\", \"Point\": {\"Y\": 255, \"Cb\": 0, \"Cr\": -10}},\n\t{\"Space\": \"RGB\",   \"Point\": {\"R\": 98, \"G\": 218, \"B\": 255}}\n]" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _colors:stdgo.Slice<T_exampleRawMessage_unmarshal___localname___Color_3769> = (null : stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.T_exampleRawMessage_unmarshal___localname___Color_3769>);
        var _err = (stdgo._internal.encoding.json.Json.unmarshal(_j, stdgo.Go.toInterface((stdgo.Go.setRef(_colors) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.T_exampleRawMessage_unmarshal___localname___Color_3769>>))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log.fatalln(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (__0 => _c in _colors) {
            var _dst:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            {
                final __value__ = _c.space;
                if (__value__ == (("RGB" : stdgo.GoString))) {
                    _dst = stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.json_test.Json_test.T_exampleRawMessage_unmarshal___localname___RGB_3879)) : stdgo.Ref<stdgo._internal.encoding.json_test.Json_test.T_exampleRawMessage_unmarshal___localname___RGB_3879>));
                } else if (__value__ == (("YCbCr" : stdgo.GoString))) {
                    _dst = stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.json_test.Json_test.T_exampleRawMessage_unmarshal___localname___YCbCr_3931)) : stdgo.Ref<stdgo._internal.encoding.json_test.Json_test.T_exampleRawMessage_unmarshal___localname___YCbCr_3931>));
                };
            };
            var _err = (stdgo._internal.encoding.json.Json.unmarshal(_c.point, _dst) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log.fatalln(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_c.space), _dst);
        };
    }
function exampleRawMessage_marshal():Void {
        var _h = (("{\"precomputed\": true}" : stdgo.GoString) : stdgo._internal.encoding.json.Json.RawMessage);
        var _c = ({ header : (stdgo.Go.setRef(_h) : stdgo.Ref<stdgo._internal.encoding.json.Json.RawMessage>), body : ("Hello Gophers!" : stdgo.GoString) } : T__struct_47);
        var __tmp__ = stdgo._internal.encoding.json.Json.marshalIndent(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<T__struct_47>))), stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.os.Os.stdout.write(_b);
    }
@:structInit class T_exampleIndent___localname___Road_5090 {
    public var name : stdgo.GoString = "";
    public var number : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?number:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (number != null) this.number = number;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleIndent___localname___Road_5090(name, number);
    }
}
function exampleIndent():Void {
        {};
        var _roads = (new stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090>(2, 2, ...[(new stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090(("Diamond Fork" : stdgo.GoString), (29 : stdgo.GoInt)) : stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090), (new stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090(("Sheep Creek" : stdgo.GoString), (51 : stdgo.GoInt)) : stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090)])) : stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.T_exampleIndent___localname___Road_5090>);
        var __tmp__ = stdgo._internal.encoding.json.Json.marshal(stdgo.Go.toInterface(_roads)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        var _out:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        stdgo._internal.encoding.json.Json.indent((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), _b, ("=" : stdgo.GoString), ("\t" : stdgo.GoString));
        _out.writeTo(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
    }
function exampleMarshalIndent():Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("b" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.json.Json.marshalIndent(stdgo.Go.toInterface(_data), ("<prefix>" : stdgo.GoString), ("<indent>" : stdgo.GoString)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
function exampleValid():Void {
        var _goodJSON = ("{\"example\": 1}" : stdgo.GoString);
        var _badJSON = ("{\"example\":2:]}}" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.encoding.json.Json.valid((_goodJSON : stdgo.Slice<stdgo.GoByte>))), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json.valid((_badJSON : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleHTMLEscape():Void {
        var _out:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        stdgo._internal.encoding.json.Json.htmlescape((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>), (("{\"Name\":\"<b>HTML content</b>\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _out.writeTo(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
    }
function example_textMarshalJSON():Void {
        var _blob = ("[\"small\",\"regular\",\"large\",\"unrecognized\",\"small\",\"normal\",\"small\",\"large\"]" : stdgo.GoString);
        var _inventory:stdgo.Slice<Size> = (null : stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.Size>);
        {
            var _err = (stdgo._internal.encoding.json.Json.unmarshal((_blob : stdgo.Slice<stdgo.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_inventory) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json_test.Json_test.Size>>))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _counts = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json_test.Json_test.Size, stdgo.GoInt>);
        for (__0 => _size in _inventory) {
            _counts[_size] = ((_counts[_size] ?? (0 : stdgo.GoInt)) + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        };
        stdgo._internal.fmt.Fmt.printf(("Inventory Counts:\n* Small:        %d\n* Large:        %d\n* Unrecognized: %d\n" : stdgo.GoString), stdgo.Go.toInterface((_counts[(1 : stdgo._internal.encoding.json_test.Json_test.Size)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_counts[(2 : stdgo._internal.encoding.json_test.Json_test.Size)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_counts[(0 : stdgo._internal.encoding.json_test.Json_test.Size)] ?? (0 : stdgo.GoInt))));
    }
class Animal_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Animal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.json_test.Json_test.Animal_asInterface) class Animal_static_extension {
    @:keep
    static public function marshalJSON( _a:Animal):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _a:Animal = _a;
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = _a;
            if (__value__ == ((1 : stdgo._internal.encoding.json_test.Json_test.Animal))) {
                _s = ("gopher" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.encoding.json_test.Json_test.Animal))) {
                _s = ("zebra" : stdgo.GoString);
            } else {
                _s = ("unknown" : stdgo.GoString);
            };
        };
        return stdgo._internal.encoding.json.Json.marshal(stdgo.Go.toInterface(_s));
    }
    @:keep
    @:pointer
    static public function unmarshalJSON(____:Animal,  _a:stdgo.Pointer<Animal>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        {
            var _err = (stdgo._internal.encoding.json.Json.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.pointer(_s))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            final __value__ = stdgo._internal.strings.Strings.toLower(_s?.__copy__());
            if (__value__ == (("gopher" : stdgo.GoString))) {
                _a.value = (1 : stdgo._internal.encoding.json_test.Json_test.Animal);
            } else if (__value__ == (("zebra" : stdgo.GoString))) {
                _a.value = (2 : stdgo._internal.encoding.json_test.Json_test.Animal);
            } else {
                _a.value = (0 : stdgo._internal.encoding.json_test.Json_test.Animal);
            };
        };
        return (null : stdgo.Error);
    }
}
class Size_asInterface {
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    @:pointer
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _text);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Size>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.json_test.Json_test.Size_asInterface) class Size_static_extension {
    @:keep
    static public function marshalText( _s:Size):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _s:Size = _s;
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = _s;
            if (__value__ == ((1 : stdgo._internal.encoding.json_test.Json_test.Size))) {
                _name = ("small" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.encoding.json_test.Json_test.Size))) {
                _name = ("large" : stdgo.GoString);
            } else {
                _name = ("unrecognized" : stdgo.GoString);
            };
        };
        return { _0 : (_name : stdgo.Slice<stdgo.GoByte>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function unmarshalText(____:Size,  _s:stdgo.Pointer<Size>, _text:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        {
            final __value__ = stdgo._internal.strings.Strings.toLower((_text : stdgo.GoString)?.__copy__());
            if (__value__ == (("small" : stdgo.GoString))) {
                _s.value = (1 : stdgo._internal.encoding.json_test.Json_test.Size);
            } else if (__value__ == (("large" : stdgo.GoString))) {
                _s.value = (2 : stdgo._internal.encoding.json_test.Json_test.Size);
            } else {
                _s.value = (0 : stdgo._internal.encoding.json_test.Json_test.Size);
            };
        };
        return (null : stdgo.Error);
    }
}
