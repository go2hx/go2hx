package stdgo._internal.hash.adler32;
private var __go2hxdoc__package : Bool;
final _mod : stdgo.GoUInt64 = (65521i64 : stdgo.GoUInt64);
final _nmax : stdgo.GoUInt64 = (5552i64 : stdgo.GoUInt64);
final size : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _magic : stdgo.GoString = stdgo.Go.str("adl", 1);
final _marshaledSize : stdgo.GoInt = (8 : stdgo.GoInt);
var _golden : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(43, 43, ...[
({ _out : (1u32 : stdgo.GoUInt32), _in : stdgo.Go.str()?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 0, 0, 0, 1)?.__copy__() } : T__struct_0),
({ _out : (6422626u32 : stdgo.GoUInt32), _in : ("a" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 0, 0, 0, 1)?.__copy__() } : T__struct_0),
({ _out : (19267780u32 : stdgo.GoUInt32), _in : ("ab" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 0, "b", 0, "b")?.__copy__() } : T__struct_0),
({ _out : (38600999u32 : stdgo.GoUInt32), _in : ("abc" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 0, "b", 0, "b")?.__copy__() } : T__struct_0),
({ _out : (64487819u32 : stdgo.GoUInt32), _in : ("abcd" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 1, "&", 0, 196)?.__copy__() } : T__struct_0),
({ _out : (96993776u32 : stdgo.GoUInt32), _in : ("abcde" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 1, "&", 0, 196)?.__copy__() } : T__struct_0),
({ _out : (136184406u32 : stdgo.GoUInt32), _in : ("abcdef" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 2, "M", 1, "\'")?.__copy__() } : T__struct_0),
({ _out : (182125245u32 : stdgo.GoUInt32), _in : ("abcdefg" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 2, "M", 1, "\'")?.__copy__() } : T__struct_0),
({ _out : (234881829u32 : stdgo.GoUInt32), _in : ("abcdefgh" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 3, 216, 1, 139)?.__copy__() } : T__struct_0),
({ _out : (294519694u32 : stdgo.GoUInt32), _in : ("abcdefghi" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 3, 216, 1, 139)?.__copy__() } : T__struct_0),
({ _out : (361104376u32 : stdgo.GoUInt32), _in : ("abcdefghij" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 5, 200, 1, 240)?.__copy__() } : T__struct_0),
({ _out : (1057558274u32 : stdgo.GoUInt32), _in : ("Discard medicine more than two years old." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "NU\x07", 135)?.__copy__() } : T__struct_0),
({ _out : (1188566135u32 : stdgo.GoUInt32), _in : ("He who has a shady past knows that nice guys finish last." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 137, 142, "\t", 233)?.__copy__() } : T__struct_0),
({ _out : (1089343201u32 : stdgo.GoUInt32), _in : ("I wouldn\'t marry him with a ten foot pole." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "R\t\x07g")?.__copy__() } : T__struct_0),
({ _out : (375788309u32 : stdgo.GoUInt32), _in : ("Free! Free!/A trip/to Mars/for 900/empty jars/Burma Shave" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 127, 187, "\t", 16)?.__copy__() } : T__struct_0),
({ _out : (1529746560u32 : stdgo.GoUInt32), _in : ("The days of the digital watch are numbered.  -Tom Stoppard" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 153, ":\n~")?.__copy__() } : T__struct_0),
({ _out : (-1942222358u32 : stdgo.GoUInt32), _in : ("Nepal premier won\'t resign." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "\"", 5, 5, 5)?.__copy__() } : T__struct_0),
({ _out : (1168906493u32 : stdgo.GoUInt32), _in : ("For every action there is an equal and opposite government program." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 204, 250, "\x0C", 0)?.__copy__() } : T__struct_0),
({ _out : (1405490274u32 : stdgo.GoUInt32), _in : ("His money is twice tainted: \'taint yours and \'taint mine." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 147, 169, "\n\x08")?.__copy__() } : T__struct_0),
({ _out : (2119245411u32 : stdgo.GoUInt32), _in : ("There is no reason for any individual to have a computer in their home. -Ken Olsen, 1977" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "e", 245, 16, 20)?.__copy__() } : T__struct_0),
({ _out : (-461366678u32 : stdgo.GoUInt32), _in : ("It\'s a tiny change to the code and not completely disgusting. - Bob Manchek" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 238, 0, "\x0C", 178)?.__copy__() } : T__struct_0),
({ _out : (1639253983u32 : stdgo.GoUInt32), _in : ("size:  a.out:  bad magic" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 26, 252, 4, 29)?.__copy__() } : T__struct_0),
({ _out : (-1201467023u32 : stdgo.GoUInt32), _in : ("The major problem is with sendmail.  -Mark Horton" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "mi\x08", 220)?.__copy__() } : T__struct_0),
({ _out : (-1956767484u32 : stdgo.GoUInt32), _in : ("Give me a rock, paper and scissors and I will move the world.  CCFestoon" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 227, "\n\x0C", 159)?.__copy__() } : T__struct_0),
({ _out : (2093355051u32 : stdgo.GoUInt32), _in : ("If the enemy is within range, then so are you." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "_", 224, "\x08", 30)?.__copy__() } : T__struct_0),
({ _out : (1879251175u32 : stdgo.GoUInt32), _in : ("It\'s well we cannot hear the screams/That we create in others\' dreams." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "ۘ\x0C", 135)?.__copy__() } : T__struct_0),
({ _out : (509613895u32 : stdgo.GoUInt32), _in : ("You remind me of a TV show, but that\'s all right: I watch it anyway." : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 204, "}\x0B", 131)?.__copy__() } : T__struct_0),
({ _out : (-1252324599u32 : stdgo.GoUInt32), _in : ("C is as portable as Stonehedge!!" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, ",^", 5, 173)?.__copy__() } : T__struct_0),
({ _out : (957423056u32 : stdgo.GoUInt32), _in : ("Even if I could be Shakespeare, I think I should still choose to be Faraday. - A. Huxley" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "M", 209, 14, 200)?.__copy__() } : T__struct_0),
({ _out : (-1847775153u32 : stdgo.GoUInt32), _in : ("The fugacity of a constituent in a mixture of gases at a given temperature is proportional to its mole fraction.  Lewis-Randall Rule" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "#", 216, 23, 215)?.__copy__() } : T__struct_0),
({ _out : (777851670u32 : stdgo.GoUInt32), _in : ("How can you write a big system without C++?  -Paul Glick" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, 143, "U\n", 15)?.__copy__() } : T__struct_0),
({ _out : (-803201546u32 : stdgo.GoUInt32), _in : ("\'Invariant assertions\' is the most elegant programming technique!  -Tom Szymanski" : stdgo.GoString), _halfState : stdgo.Go.str("adl", 1, "/", 152, 14, 196)?.__copy__() } : T__struct_0),
({ _out : (554866632u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5548 : stdgo.GoInt)) + ("8" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 154, 166, 203, 193)?.__copy__() } : T__struct_0),
({ _out : (-1163814712u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5549 : stdgo.GoInt)) + ("9" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, "gu", 204, 192)?.__copy__() } : T__struct_0),
({ _out : (1429510590u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5550 : stdgo.GoInt)) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, "gu", 204, 192)?.__copy__() } : T__struct_0),
({ _out : (-255747394u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5551 : stdgo.GoInt)) + ("1" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, "5CͿ")?.__copy__() } : T__struct_0),
({ _out : (-1923310658u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5552 : stdgo.GoInt)) + ("2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, "5CͿ")?.__copy__() } : T__struct_0),
({ _out : (720805054u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5553 : stdgo.GoInt)) + ("3" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 4, 16, "ξ")?.__copy__() } : T__struct_0),
({ _out : (-914317890u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5554 : stdgo.GoInt)) + ("4" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 4, 16, "ξ")?.__copy__() } : T__struct_0),
({ _out : (1763221182u32 : stdgo.GoUInt32), _in : (stdgo._internal.strings.Strings.repeat(stdgo.Go.str(255)?.__copy__(), (5555 : stdgo.GoInt)) + ("5" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 211, 205, "Ͻ")?.__copy__() } : T__struct_0),
({ _out : (-2035351551u32 : stdgo.GoUInt32), _in : stdgo._internal.strings.Strings.repeat(stdgo.Go.str(0)?.__copy__(), (100000 : stdgo.GoInt))?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 195, "P", 0, 1)?.__copy__() } : T__struct_0),
({ _out : (2036730701u32 : stdgo.GoUInt32), _in : stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (100000 : stdgo.GoInt))?.__copy__(), _halfState : stdgo.Go.str("adl", 1, 129, "k", 5, 167)?.__copy__() } : T__struct_0),
({ _out : (285575406u32 : stdgo.GoUInt32), _in : stdgo._internal.strings.Strings.repeat(("ABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__(), _halfState : stdgo.Go.str("adl", 1, "e", 210, 196, "p")?.__copy__() } : T__struct_0)].concat([for (i in 43 ... (43 > 43 ? 43 : 43 : stdgo.GoInt).toBasic()) ({ _out : (0 : stdgo.GoUInt32), _in : ("" : stdgo.GoString), _halfState : ("" : stdgo.GoString) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.hash.adler32.Adler32.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.hash.adler32.Adler32.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _out : stdgo.GoUInt32;
    public var _in : stdgo.GoString;
    public var _halfState : stdgo.GoString;
};
@:named @:using(stdgo._internal.hash.adler32.Adler32.T_digest_static_extension) typedef T_digest = stdgo.GoUInt32;
function new_():stdgo._internal.hash.Hash.Hash32 {
        var _d = stdgo.Go.pointer(((0 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32.T_digest));
        _d.value.reset(_d);
        return stdgo.Go.asInterface(_d);
    }
function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> {
        var _a = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), (_x : stdgo.GoByte)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        return (_b.__append__(...((_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        var __blank__ = _b[(3 : stdgo.GoInt)];
        return ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
function _update(_d:T_digest, _p:stdgo.Slice<stdgo.GoByte>):T_digest {
        var __0:stdgo.GoUInt32 = ((_d & (65535u32 : stdgo._internal.hash.adler32.Adler32.T_digest) : stdgo._internal.hash.adler32.Adler32.T_digest) : stdgo.GoUInt32), __1:stdgo.GoUInt32 = ((_d >> (16i64 : stdgo.GoUInt64) : stdgo._internal.hash.adler32.Adler32.T_digest) : stdgo.GoUInt32), _s2:stdgo.GoUInt32 = __1, _s1:stdgo.GoUInt32 = __0;
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _q:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (((_p.length) > (5552 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_p.__slice__(0, (5552 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (_p.__slice__((5552 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _p = __tmp__0;
                    _q = __tmp__1;
                };
            };
            while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
                _s1 = (_s1 + ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            for (__0 => _x in _p) {
                _s1 = (_s1 + ((_x : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
            };
            _s1 = (_s1 % ((65521u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _s2 = (_s2 % ((65521u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _p = _q;
        };
        return (((_s2 << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _s1 : stdgo.GoUInt32) : T_digest);
    }
function checksum(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        return (_update((1u32 : stdgo._internal.hash.adler32.Adler32.T_digest), _data) : stdgo.GoUInt32);
    }
function _checksum(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        var __0:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0u32 : stdgo.GoUInt32), _s2:stdgo.GoUInt32 = __1, _s1:stdgo.GoUInt32 = __0;
        for (__0 => _x in _p) {
            _s1 = (((_s1 + (_x : stdgo.GoUInt32) : stdgo.GoUInt32)) % (65521u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _s2 = (((_s2 + _s1 : stdgo.GoUInt32)) % (65521u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        return ((_s2 << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _s1 : stdgo.GoUInt32);
    }
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _g in _golden) {
            var _in:stdgo.GoString = _g._in?.__copy__();
            if (((_in.length) > (220 : stdgo.GoInt) : Bool)) {
                _in = (((_in.__slice__(0, (100 : stdgo.GoInt)) : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_in.__slice__(((_in.length) - (100 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
            var _p = (_g._in : stdgo.Slice<stdgo.GoByte>);
            {
                var _got:stdgo.GoUInt32 = _checksum(_p);
                if (_got != (_g._out)) {
                    _t.errorf(("simple implementation: checksum(%q) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_g._out));
                    continue;
                };
            };
            {
                var _got:stdgo.GoUInt32 = checksum(_p);
                if (_got != (_g._out)) {
                    _t.errorf(("optimized implementation: Checksum(%q) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_g._out));
                    continue;
                };
            };
        };
    }
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _g in _golden) {
            var _h:stdgo._internal.hash.Hash.Hash32 = new_();
            var _h2:stdgo._internal.hash.Hash.Hash32 = new_();
            stdgo._internal.io.Io.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding.BinaryMarshaler)) : stdgo._internal.encoding.Encoding.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_state : stdgo.GoString) != (_g._halfState)) {
                _t.errorf(("checksum(%q) state = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                continue;
            };
            {
                var _err:stdgo.Error = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler).unmarshalBinary(_state);
                if (_err != null) {
                    _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            stdgo._internal.io.Io.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            stdgo._internal.io.Io.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            if (_h.sum32() != (_h2.sum32())) {
                _t.errorf(("checksum(%q) = 0x%x != marshaled (0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_h.sum32()), stdgo.Go.toInterface(_h2.sum32()));
            };
        };
    }
function benchmarkAdler32KB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((1024i64 : stdgo.GoInt64));
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
        };
        var _h:stdgo._internal.hash.Hash.Hash32 = new_();
        var _in = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _h.size()).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _h.reset();
                _h.write(_data);
                _h.sum(_in);
            });
        };
    }
class T_digest_asInterface {
    @:keep
    @:pointer
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.sum(__self__, _in);
    @:keep
    @:pointer
    public dynamic function sum32():stdgo.GoUInt32 return __self__.value.sum32(__self__);
    @:keep
    @:pointer
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(__self__, _p);
    @:keep
    @:pointer
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(__self__, _b);
    @:keep
    @:pointer
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary(__self__);
    @:keep
    @:pointer
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize(__self__);
    @:keep
    @:pointer
    public dynamic function size():stdgo.GoInt return __self__.value.size(__self__);
    @:keep
    @:pointer
    public dynamic function reset():Void __self__.value.reset(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_digest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.hash.adler32.Adler32.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    @:pointer
    static public function sum(____:T_digest,  _d:stdgo.Pointer<T_digest>, _in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var _s:stdgo.GoUInt32 = (_d.value : stdgo.GoUInt32);
        return (_in.__append__(((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), (_s : stdgo.GoByte)));
    }
    @:keep
    @:pointer
    static public function sum32(____:T_digest,  _d:stdgo.Pointer<T_digest>):stdgo.GoUInt32 {
        return (_d.value : stdgo.GoUInt32);
    }
    @:keep
    @:pointer
    static public function write(____:T_digest,  _d:stdgo.Pointer<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _nn:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _d.value = _update(_d.value, _p);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function unmarshalBinary(____:T_digest,  _d:stdgo.Pointer<T_digest>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        if ((((_b.length) < (stdgo.Go.str("adl", 1).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("adl", 1).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("adl", 1)) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("hash/adler32: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((8 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors.new_(("hash/adler32: invalid hash state size" : stdgo.GoString));
        };
        _d.value = (_readUint32((_b.__slice__((stdgo.Go.str("adl", 1).length)) : stdgo.Slice<stdgo.GoUInt8>)) : T_digest);
        return (null : stdgo.Error);
    }
    @:keep
    @:pointer
    static public function marshalBinary(____:T_digest,  _d:stdgo.Pointer<T_digest>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("adl", 1) : Array<stdgo.GoUInt8>)));
        _b = _appendUint32(_b, (_d.value : stdgo.GoUInt32));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function blockSize(____:T_digest,  _d:stdgo.Pointer<T_digest>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function size(____:T_digest,  _d:stdgo.Pointer<T_digest>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function reset(____:T_digest,  _d:stdgo.Pointer<T_digest>):Void {
        _d.value = (1u32 : stdgo._internal.hash.adler32.Adler32.T_digest);
    }
}
