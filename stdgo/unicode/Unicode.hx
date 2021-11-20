package stdgo.unicode;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class RangeTable {
    public var r16 : Slice<Range16> = new Slice<Range16>().nil();
    public var r32 : Slice<Range32> = new Slice<Range32>().nil();
    public var latinOffset : GoInt = ((0 : GoInt));
    public function new(?r16:Slice<Range16>, ?r32:Slice<Range32>, ?latinOffset:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(r16) + " " + Go.string(r32) + " " + Go.string(latinOffset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RangeTable(r16, r32, latinOffset);
    }
    public function __set__(__tmp__) {
        this.r16 = __tmp__.r16;
        this.r32 = __tmp__.r32;
        this.latinOffset = __tmp__.latinOffset;
        return this;
    }
}
@:structInit class Range16 {
    public var lo : GoUInt16 = ((0 : GoUInt16));
    public var hi : GoUInt16 = ((0 : GoUInt16));
    public var stride : GoUInt16 = ((0 : GoUInt16));
    public function new(?lo:GoUInt16, ?hi:GoUInt16, ?stride:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(lo) + " " + Go.string(hi) + " " + Go.string(stride) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Range16(lo, hi, stride);
    }
    public function __set__(__tmp__) {
        this.lo = __tmp__.lo;
        this.hi = __tmp__.hi;
        this.stride = __tmp__.stride;
        return this;
    }
}
@:structInit class Range32 {
    public var lo : GoUInt32 = ((0 : GoUInt32));
    public var hi : GoUInt32 = ((0 : GoUInt32));
    public var stride : GoUInt32 = ((0 : GoUInt32));
    public function new(?lo:GoUInt32, ?hi:GoUInt32, ?stride:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(lo) + " " + Go.string(hi) + " " + Go.string(stride) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Range32(lo, hi, stride);
    }
    public function __set__(__tmp__) {
        this.lo = __tmp__.lo;
        this.hi = __tmp__.hi;
        this.stride = __tmp__.stride;
        return this;
    }
}
@:structInit class CaseRange {
    public var lo : GoUInt32 = ((0 : GoUInt32));
    public var hi : GoUInt32 = ((0 : GoUInt32));
    public var delta : T_d = new T_d();
    public function new(?lo:GoUInt32, ?hi:GoUInt32, ?delta:T_d) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(lo) + " " + Go.string(hi) + " " + Go.string(delta) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CaseRange(lo, hi, delta);
    }
    public function __set__(__tmp__) {
        this.lo = __tmp__.lo;
        this.hi = __tmp__.hi;
        this.delta = __tmp__.delta;
        return this;
    }
}
@:named class SpecialCase {
    public function toLower(_r:GoRune):GoRune {
        var _special = this.__copy__();
        var __tmp__ = _to(lowerCase, _r, _special.__t__), _r1:GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if (_r1 == _r && !_hadMapping) {
            _r1 = Unicode.toLower(_r);
        };
        return _r1;
    }
    public function toTitle(_r:GoRune):GoRune {
        var _special = this.__copy__();
        var __tmp__ = _to(titleCase, _r, _special.__t__), _r1:GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if (_r1 == _r && !_hadMapping) {
            _r1 = Unicode.toTitle(_r);
        };
        return _r1;
    }
    public function toUpper(_r:GoRune):GoRune {
        var _special = this.__copy__();
        var __tmp__ = _to(upperCase, _r, _special.__t__), _r1:GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if (_r1 == _r && !_hadMapping) {
            _r1 = Unicode.toUpper(_r);
        };
        return _r1;
    }
    public var __t__ : Slice<CaseRange>;
    public function new(?t:Slice<CaseRange>) {
        __t__ = t == null ? new Slice<CaseRange>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new SpecialCase(__t__);
    public function __append__(args:haxe.Rest<CaseRange>) return new SpecialCase(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new SpecialCase(this.__t__.__slice__(low, high));
}
@:named class T_d {
    public var __t__ : GoArray<GoInt32>;
    public function new(?t:GoArray<GoInt32>) {
        __t__ = t == null ? new GoArray<GoInt32>(...[for (i in 0 ... 3) ((0 : GoInt32))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_d(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:structInit class T_foldPair {
    public var from : GoUInt16 = ((0 : GoUInt16));
    public var to : GoUInt16 = ((0 : GoUInt16));
    public function new(?from:GoUInt16, ?to:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(from) + " " + Go.string(to) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_foldPair(from, to);
    }
    public function __set__(__tmp__) {
        this.from = __tmp__.from;
        this.to = __tmp__.to;
        return this;
    }
}
var __Tai_Tham : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6688 : GoUInt16)), ((6750 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6752 : GoUInt16)), ((6780 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6783 : GoUInt16)), ((6793 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6800 : GoUInt16)), ((6809 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6816 : GoUInt16)), ((6829 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var tai_Tham : Pointer<RangeTable> = __Tai_Tham;
var __Cyrillic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1024 : GoUInt16)), ((1156 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1159 : GoUInt16)), ((1327 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7296 : GoUInt16)), ((7304 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7467 : GoUInt16)), ((7544 : GoUInt16)), ((77 : GoUInt16))).__copy__(), new Range16(((11744 : GoUInt16)), ((11775 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((42560 : GoUInt16)), ((42655 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65070 : GoUInt16)), ((65071 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var cyrillic : Pointer<RangeTable> = __Cyrillic;
var __Georgian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((4256 : GoUInt16)), ((4293 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((4295 : GoUInt16)), ((4301 : GoUInt16)), ((6 : GoUInt16))).__copy__(), new Range16(((4304 : GoUInt16)), ((4346 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((4348 : GoUInt16)), ((4351 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7312 : GoUInt16)), ((7354 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7357 : GoUInt16)), ((7359 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11520 : GoUInt16)), ((11557 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11559 : GoUInt16)), ((11565 : GoUInt16)), ((6 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var georgian : Pointer<RangeTable> = __Georgian;
var __Vai : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((42240 : GoUInt16)), ((42539 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Ol_Chiki : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((7248 : GoUInt16)), ((7295 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var ol_Chiki : Pointer<RangeTable> = __Ol_Chiki;
var __Inherited : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((768 : GoUInt16)), ((879 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1157 : GoUInt16)), ((1158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1611 : GoUInt16)), ((1621 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1648 : GoUInt16)), ((2385 : GoUInt16)), ((737 : GoUInt16))).__copy__(),
new Range16(((2386 : GoUInt16)), ((2388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6832 : GoUInt16)), ((6848 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7376 : GoUInt16)), ((7378 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7380 : GoUInt16)), ((7392 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7394 : GoUInt16)), ((7400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7405 : GoUInt16)), ((7412 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((7416 : GoUInt16)), ((7417 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7616 : GoUInt16)), ((7673 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7675 : GoUInt16)), ((7679 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8204 : GoUInt16)), ((8205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8400 : GoUInt16)), ((8432 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12330 : GoUInt16)), ((12333 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12441 : GoUInt16)), ((12442 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65024 : GoUInt16)), ((65039 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65056 : GoUInt16)), ((65069 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((66045 : GoUInt32)), ((66272 : GoUInt32)), ((227 : GoUInt32))).__copy__(), new Range32(((70459 : GoUInt32)), ((119143 : GoUInt32)), ((48684 : GoUInt32))).__copy__(), new Range32(((119144 : GoUInt32)), ((119145 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((119163 : GoUInt32)), ((119170 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((119173 : GoUInt32)), ((119179 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((119210 : GoUInt32)), ((119213 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((917760 : GoUInt32)), ((917999 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Cf : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((173 : GoUInt16)), ((1536 : GoUInt16)), ((1363 : GoUInt16))).__copy__(),
new Range16(((1537 : GoUInt16)), ((1541 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1564 : GoUInt16)), ((1757 : GoUInt16)), ((193 : GoUInt16))).__copy__(),
new Range16(((1807 : GoUInt16)), ((2274 : GoUInt16)), ((467 : GoUInt16))).__copy__(),
new Range16(((6158 : GoUInt16)), ((8203 : GoUInt16)), ((2045 : GoUInt16))).__copy__(),
new Range16(((8204 : GoUInt16)), ((8207 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8234 : GoUInt16)), ((8238 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8288 : GoUInt16)), ((8292 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8294 : GoUInt16)), ((8303 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65279 : GoUInt16)), ((65529 : GoUInt16)), ((250 : GoUInt16))).__copy__(),
new Range16(((65530 : GoUInt16)), ((65531 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((69821 : GoUInt32)), ((69837 : GoUInt32)), ((16 : GoUInt32))).__copy__(), new Range32(((78896 : GoUInt32)), ((78904 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((113824 : GoUInt32)), ((113827 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((119155 : GoUInt32)), ((119162 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((917505 : GoUInt32)), ((917536 : GoUInt32)), ((31 : GoUInt32))).__copy__(), new Range32(((917537 : GoUInt32)), ((917631 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var cf : Pointer<RangeTable> = __Cf;
var __Khitan_Small_Script : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((94180 : GoUInt32)), ((101120 : GoUInt32)), ((6940 : GoUInt32))).__copy__(), new Range32(((101121 : GoUInt32)), ((101589 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var khitan_Small_Script : Pointer<RangeTable> = __Khitan_Small_Script;
var __Pc : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((95 : GoUInt16)), ((8255 : GoUInt16)), ((8160 : GoUInt16))).__copy__(), new Range16(((8256 : GoUInt16)), ((8276 : GoUInt16)), ((20 : GoUInt16))).__copy__(), new Range16(((65075 : GoUInt16)), ((65076 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65101 : GoUInt16)), ((65103 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65343 : GoUInt16)), ((65343 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Pd : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((45 : GoUInt16)), ((1418 : GoUInt16)), ((1373 : GoUInt16))).__copy__(),
new Range16(((1470 : GoUInt16)), ((5120 : GoUInt16)), ((3650 : GoUInt16))).__copy__(),
new Range16(((6150 : GoUInt16)), ((8208 : GoUInt16)), ((2058 : GoUInt16))).__copy__(),
new Range16(((8209 : GoUInt16)), ((8213 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11799 : GoUInt16)), ((11802 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11834 : GoUInt16)), ((11835 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11840 : GoUInt16)), ((12316 : GoUInt16)), ((476 : GoUInt16))).__copy__(),
new Range16(((12336 : GoUInt16)), ((12448 : GoUInt16)), ((112 : GoUInt16))).__copy__(),
new Range16(((65073 : GoUInt16)), ((65074 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65112 : GoUInt16)), ((65123 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((65293 : GoUInt16)), ((65293 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((69293 : GoUInt32)), ((69293 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Pattern_Syntax : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((33 : GoUInt16)), ((47 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((58 : GoUInt16)), ((64 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((91 : GoUInt16)), ((94 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((96 : GoUInt16)), ((123 : GoUInt16)), ((27 : GoUInt16))).__copy__(),
new Range16(((124 : GoUInt16)), ((126 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((161 : GoUInt16)), ((167 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((169 : GoUInt16)), ((171 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((172 : GoUInt16)), ((176 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((177 : GoUInt16)), ((187 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((191 : GoUInt16)), ((215 : GoUInt16)), ((24 : GoUInt16))).__copy__(),
new Range16(((247 : GoUInt16)), ((8208 : GoUInt16)), ((7961 : GoUInt16))).__copy__(),
new Range16(((8209 : GoUInt16)), ((8231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8240 : GoUInt16)), ((8254 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8257 : GoUInt16)), ((8275 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8277 : GoUInt16)), ((8286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8592 : GoUInt16)), ((9311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9472 : GoUInt16)), ((10101 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10132 : GoUInt16)), ((11263 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11776 : GoUInt16)), ((11903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12289 : GoUInt16)), ((12291 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12296 : GoUInt16)), ((12320 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12336 : GoUInt16)), ((64830 : GoUInt16)), ((52494 : GoUInt16))).__copy__(),
new Range16(((64831 : GoUInt16)), ((65093 : GoUInt16)), ((262 : GoUInt16))).__copy__(),
new Range16(((65094 : GoUInt16)), ((65094 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((10 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var __Phoenician : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67840 : GoUInt32)), ((67867 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67871 : GoUInt32)), ((67871 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Pe : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((41 : GoUInt16)), ((93 : GoUInt16)), ((52 : GoUInt16))).__copy__(),
new Range16(((125 : GoUInt16)), ((3899 : GoUInt16)), ((3774 : GoUInt16))).__copy__(),
new Range16(((3901 : GoUInt16)), ((5788 : GoUInt16)), ((1887 : GoUInt16))).__copy__(),
new Range16(((8262 : GoUInt16)), ((8318 : GoUInt16)), ((56 : GoUInt16))).__copy__(),
new Range16(((8334 : GoUInt16)), ((8969 : GoUInt16)), ((635 : GoUInt16))).__copy__(),
new Range16(((8971 : GoUInt16)), ((9002 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((10089 : GoUInt16)), ((10101 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10182 : GoUInt16)), ((10215 : GoUInt16)), ((33 : GoUInt16))).__copy__(),
new Range16(((10217 : GoUInt16)), ((10223 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10628 : GoUInt16)), ((10648 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10713 : GoUInt16)), ((10715 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10749 : GoUInt16)), ((11811 : GoUInt16)), ((1062 : GoUInt16))).__copy__(),
new Range16(((11813 : GoUInt16)), ((11817 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12297 : GoUInt16)), ((12305 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12309 : GoUInt16)), ((12315 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12318 : GoUInt16)), ((12319 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64830 : GoUInt16)), ((65048 : GoUInt16)), ((218 : GoUInt16))).__copy__(),
new Range16(((65078 : GoUInt16)), ((65092 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65096 : GoUInt16)), ((65114 : GoUInt16)), ((18 : GoUInt16))).__copy__(),
new Range16(((65116 : GoUInt16)), ((65118 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65289 : GoUInt16)), ((65341 : GoUInt16)), ((52 : GoUInt16))).__copy__(),
new Range16(((65373 : GoUInt16)), ((65379 : GoUInt16)), ((3 : GoUInt16))).__copy__()), latinOffset : ((1 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var __Z : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((32 : GoUInt16)), ((160 : GoUInt16)), ((128 : GoUInt16))).__copy__(), new Range16(((5760 : GoUInt16)), ((8192 : GoUInt16)), ((2432 : GoUInt16))).__copy__(), new Range16(((8193 : GoUInt16)), ((8202 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8232 : GoUInt16)), ((8233 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8239 : GoUInt16)), ((8287 : GoUInt16)), ((48 : GoUInt16))).__copy__(), new Range16(((12288 : GoUInt16)), ((12288 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((1 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var space : Pointer<RangeTable> = __Z;
var __Pf : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((187 : GoUInt16)), ((8217 : GoUInt16)), ((8030 : GoUInt16))).__copy__(), new Range16(((8221 : GoUInt16)), ((8250 : GoUInt16)), ((29 : GoUInt16))).__copy__(), new Range16(((11779 : GoUInt16)), ((11781 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((11786 : GoUInt16)), ((11789 : GoUInt16)), ((3 : GoUInt16))).__copy__(), new Range16(((11805 : GoUInt16)), ((11809 : GoUInt16)), ((4 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Other_Uppercase : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((8544 : GoUInt16)), ((8559 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((9398 : GoUInt16)), ((9423 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((127280 : GoUInt32)), ((127305 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((127312 : GoUInt32)), ((127337 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((127344 : GoUInt32)), ((127369 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Mn : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((768 : GoUInt16)), ((879 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1155 : GoUInt16)), ((1159 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1425 : GoUInt16)), ((1469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1471 : GoUInt16)), ((1473 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1474 : GoUInt16)), ((1476 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1477 : GoUInt16)), ((1479 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1552 : GoUInt16)), ((1562 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1611 : GoUInt16)), ((1631 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1648 : GoUInt16)), ((1750 : GoUInt16)), ((102 : GoUInt16))).__copy__(),
new Range16(((1751 : GoUInt16)), ((1756 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1759 : GoUInt16)), ((1764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1767 : GoUInt16)), ((1768 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1770 : GoUInt16)), ((1773 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1809 : GoUInt16)), ((1840 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((1841 : GoUInt16)), ((1866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1958 : GoUInt16)), ((1968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2027 : GoUInt16)), ((2035 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2045 : GoUInt16)), ((2070 : GoUInt16)), ((25 : GoUInt16))).__copy__(),
new Range16(((2071 : GoUInt16)), ((2073 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2075 : GoUInt16)), ((2083 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2085 : GoUInt16)), ((2087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2089 : GoUInt16)), ((2093 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2137 : GoUInt16)), ((2139 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2259 : GoUInt16)), ((2273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2275 : GoUInt16)), ((2306 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2362 : GoUInt16)), ((2364 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2369 : GoUInt16)), ((2376 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2381 : GoUInt16)), ((2385 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2386 : GoUInt16)), ((2391 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2402 : GoUInt16)), ((2403 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2433 : GoUInt16)), ((2492 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((2497 : GoUInt16)), ((2500 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2509 : GoUInt16)), ((2530 : GoUInt16)), ((21 : GoUInt16))).__copy__(),
new Range16(((2531 : GoUInt16)), ((2558 : GoUInt16)), ((27 : GoUInt16))).__copy__(),
new Range16(((2561 : GoUInt16)), ((2562 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2620 : GoUInt16)), ((2625 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((2626 : GoUInt16)), ((2631 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((2632 : GoUInt16)), ((2635 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((2636 : GoUInt16)), ((2637 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2641 : GoUInt16)), ((2672 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((2673 : GoUInt16)), ((2677 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2689 : GoUInt16)), ((2690 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2748 : GoUInt16)), ((2753 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((2754 : GoUInt16)), ((2757 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2759 : GoUInt16)), ((2760 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2765 : GoUInt16)), ((2786 : GoUInt16)), ((21 : GoUInt16))).__copy__(),
new Range16(((2787 : GoUInt16)), ((2810 : GoUInt16)), ((23 : GoUInt16))).__copy__(),
new Range16(((2811 : GoUInt16)), ((2815 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2817 : GoUInt16)), ((2876 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((2879 : GoUInt16)), ((2881 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2882 : GoUInt16)), ((2884 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2893 : GoUInt16)), ((2901 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((2902 : GoUInt16)), ((2914 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((2915 : GoUInt16)), ((2946 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((3008 : GoUInt16)), ((3021 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((3072 : GoUInt16)), ((3076 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((3134 : GoUInt16)), ((3136 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3142 : GoUInt16)), ((3144 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3146 : GoUInt16)), ((3149 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3157 : GoUInt16)), ((3158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3170 : GoUInt16)), ((3171 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3201 : GoUInt16)), ((3260 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((3263 : GoUInt16)), ((3270 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((3276 : GoUInt16)), ((3277 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3298 : GoUInt16)), ((3299 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3328 : GoUInt16)), ((3329 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3387 : GoUInt16)), ((3388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3393 : GoUInt16)), ((3396 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3405 : GoUInt16)), ((3426 : GoUInt16)), ((21 : GoUInt16))).__copy__(),
new Range16(((3427 : GoUInt16)), ((3457 : GoUInt16)), ((30 : GoUInt16))).__copy__(),
new Range16(((3530 : GoUInt16)), ((3538 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((3539 : GoUInt16)), ((3540 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3542 : GoUInt16)), ((3633 : GoUInt16)), ((91 : GoUInt16))).__copy__(),
new Range16(((3636 : GoUInt16)), ((3642 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3655 : GoUInt16)), ((3662 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3761 : GoUInt16)), ((3764 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3765 : GoUInt16)), ((3772 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3784 : GoUInt16)), ((3789 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3864 : GoUInt16)), ((3865 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3893 : GoUInt16)), ((3897 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3953 : GoUInt16)), ((3966 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3968 : GoUInt16)), ((3972 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3974 : GoUInt16)), ((3975 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3981 : GoUInt16)), ((3991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3993 : GoUInt16)), ((4028 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4038 : GoUInt16)), ((4141 : GoUInt16)), ((103 : GoUInt16))).__copy__(),
new Range16(((4142 : GoUInt16)), ((4144 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4146 : GoUInt16)), ((4151 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4153 : GoUInt16)), ((4154 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4157 : GoUInt16)), ((4158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4184 : GoUInt16)), ((4185 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4190 : GoUInt16)), ((4192 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4209 : GoUInt16)), ((4212 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4226 : GoUInt16)), ((4229 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((4230 : GoUInt16)), ((4237 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((4253 : GoUInt16)), ((4957 : GoUInt16)), ((704 : GoUInt16))).__copy__(),
new Range16(((4958 : GoUInt16)), ((4959 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5906 : GoUInt16)), ((5908 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5938 : GoUInt16)), ((5940 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5970 : GoUInt16)), ((5971 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6002 : GoUInt16)), ((6003 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6068 : GoUInt16)), ((6069 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6071 : GoUInt16)), ((6077 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6086 : GoUInt16)), ((6089 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((6090 : GoUInt16)), ((6099 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6109 : GoUInt16)), ((6155 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((6156 : GoUInt16)), ((6157 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6277 : GoUInt16)), ((6278 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6313 : GoUInt16)), ((6432 : GoUInt16)), ((119 : GoUInt16))).__copy__(),
new Range16(((6433 : GoUInt16)), ((6434 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6439 : GoUInt16)), ((6440 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6450 : GoUInt16)), ((6457 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((6458 : GoUInt16)), ((6459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6679 : GoUInt16)), ((6680 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6683 : GoUInt16)), ((6742 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((6744 : GoUInt16)), ((6750 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6752 : GoUInt16)), ((6754 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((6757 : GoUInt16)), ((6764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6771 : GoUInt16)), ((6780 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6783 : GoUInt16)), ((6832 : GoUInt16)), ((49 : GoUInt16))).__copy__(),
new Range16(((6833 : GoUInt16)), ((6845 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6847 : GoUInt16)), ((6848 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6912 : GoUInt16)), ((6915 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6964 : GoUInt16)), ((6966 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((6967 : GoUInt16)), ((6970 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6972 : GoUInt16)), ((6978 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((7019 : GoUInt16)), ((7027 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7040 : GoUInt16)), ((7041 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7074 : GoUInt16)), ((7077 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7080 : GoUInt16)), ((7081 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7083 : GoUInt16)), ((7085 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7142 : GoUInt16)), ((7144 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7145 : GoUInt16)), ((7149 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((7151 : GoUInt16)), ((7153 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7212 : GoUInt16)), ((7219 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7222 : GoUInt16)), ((7223 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7376 : GoUInt16)), ((7378 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7380 : GoUInt16)), ((7392 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7394 : GoUInt16)), ((7400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7405 : GoUInt16)), ((7412 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((7416 : GoUInt16)), ((7417 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7616 : GoUInt16)), ((7673 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7675 : GoUInt16)), ((7679 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8400 : GoUInt16)), ((8412 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8417 : GoUInt16)), ((8421 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8422 : GoUInt16)), ((8432 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11503 : GoUInt16)), ((11505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11647 : GoUInt16)), ((11744 : GoUInt16)), ((97 : GoUInt16))).__copy__(),
new Range16(((11745 : GoUInt16)), ((11775 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12330 : GoUInt16)), ((12333 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12441 : GoUInt16)), ((12442 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42607 : GoUInt16)), ((42612 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((42613 : GoUInt16)), ((42621 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42654 : GoUInt16)), ((42655 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42736 : GoUInt16)), ((42737 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43010 : GoUInt16)), ((43014 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43019 : GoUInt16)), ((43045 : GoUInt16)), ((26 : GoUInt16))).__copy__(),
new Range16(((43046 : GoUInt16)), ((43052 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((43204 : GoUInt16)), ((43205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43232 : GoUInt16)), ((43249 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43263 : GoUInt16)), ((43302 : GoUInt16)), ((39 : GoUInt16))).__copy__(),
new Range16(((43303 : GoUInt16)), ((43309 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43335 : GoUInt16)), ((43345 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43392 : GoUInt16)), ((43394 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43443 : GoUInt16)), ((43446 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((43447 : GoUInt16)), ((43449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43452 : GoUInt16)), ((43453 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43493 : GoUInt16)), ((43561 : GoUInt16)), ((68 : GoUInt16))).__copy__(),
new Range16(((43562 : GoUInt16)), ((43566 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43569 : GoUInt16)), ((43570 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43573 : GoUInt16)), ((43574 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43587 : GoUInt16)), ((43596 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((43644 : GoUInt16)), ((43696 : GoUInt16)), ((52 : GoUInt16))).__copy__(),
new Range16(((43698 : GoUInt16)), ((43700 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43703 : GoUInt16)), ((43704 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43710 : GoUInt16)), ((43711 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43713 : GoUInt16)), ((43756 : GoUInt16)), ((43 : GoUInt16))).__copy__(),
new Range16(((43757 : GoUInt16)), ((43766 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((44005 : GoUInt16)), ((44008 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((44013 : GoUInt16)), ((64286 : GoUInt16)), ((20273 : GoUInt16))).__copy__(),
new Range16(((65024 : GoUInt16)), ((65039 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65056 : GoUInt16)), ((65071 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66045 : GoUInt32)), ((66272 : GoUInt32)), ((227 : GoUInt32))).__copy__(),
new Range32(((66422 : GoUInt32)), ((66426 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68097 : GoUInt32)), ((68099 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68101 : GoUInt32)), ((68102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68108 : GoUInt32)), ((68111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68152 : GoUInt32)), ((68154 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68159 : GoUInt32)), ((68325 : GoUInt32)), ((166 : GoUInt32))).__copy__(),
new Range32(((68326 : GoUInt32)), ((68900 : GoUInt32)), ((574 : GoUInt32))).__copy__(),
new Range32(((68901 : GoUInt32)), ((68903 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69291 : GoUInt32)), ((69292 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69446 : GoUInt32)), ((69456 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69633 : GoUInt32)), ((69688 : GoUInt32)), ((55 : GoUInt32))).__copy__(),
new Range32(((69689 : GoUInt32)), ((69702 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69759 : GoUInt32)), ((69761 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69811 : GoUInt32)), ((69814 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69817 : GoUInt32)), ((69818 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69888 : GoUInt32)), ((69890 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69927 : GoUInt32)), ((69931 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69933 : GoUInt32)), ((69940 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70003 : GoUInt32)), ((70016 : GoUInt32)), ((13 : GoUInt32))).__copy__(),
new Range32(((70017 : GoUInt32)), ((70070 : GoUInt32)), ((53 : GoUInt32))).__copy__(),
new Range32(((70071 : GoUInt32)), ((70078 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70089 : GoUInt32)), ((70092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70095 : GoUInt32)), ((70191 : GoUInt32)), ((96 : GoUInt32))).__copy__(),
new Range32(((70192 : GoUInt32)), ((70193 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70196 : GoUInt32)), ((70198 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70199 : GoUInt32)), ((70206 : GoUInt32)), ((7 : GoUInt32))).__copy__(),
new Range32(((70367 : GoUInt32)), ((70371 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((70372 : GoUInt32)), ((70378 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70400 : GoUInt32)), ((70401 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70459 : GoUInt32)), ((70460 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70464 : GoUInt32)), ((70502 : GoUInt32)), ((38 : GoUInt32))).__copy__(),
new Range32(((70503 : GoUInt32)), ((70508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70512 : GoUInt32)), ((70516 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70712 : GoUInt32)), ((70719 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70722 : GoUInt32)), ((70724 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70726 : GoUInt32)), ((70750 : GoUInt32)), ((24 : GoUInt32))).__copy__(),
new Range32(((70835 : GoUInt32)), ((70840 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70842 : GoUInt32)), ((70847 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((70848 : GoUInt32)), ((70850 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70851 : GoUInt32)), ((71090 : GoUInt32)), ((239 : GoUInt32))).__copy__(),
new Range32(((71091 : GoUInt32)), ((71093 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71100 : GoUInt32)), ((71101 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71103 : GoUInt32)), ((71104 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71132 : GoUInt32)), ((71133 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71219 : GoUInt32)), ((71226 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71229 : GoUInt32)), ((71231 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((71232 : GoUInt32)), ((71339 : GoUInt32)), ((107 : GoUInt32))).__copy__(),
new Range32(((71341 : GoUInt32)), ((71344 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((71345 : GoUInt32)), ((71349 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71351 : GoUInt32)), ((71453 : GoUInt32)), ((102 : GoUInt32))).__copy__(),
new Range32(((71454 : GoUInt32)), ((71455 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71458 : GoUInt32)), ((71461 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71463 : GoUInt32)), ((71467 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71727 : GoUInt32)), ((71735 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71737 : GoUInt32)), ((71738 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71995 : GoUInt32)), ((71996 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71998 : GoUInt32)), ((72003 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((72148 : GoUInt32)), ((72151 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72154 : GoUInt32)), ((72155 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72160 : GoUInt32)), ((72193 : GoUInt32)), ((33 : GoUInt32))).__copy__(),
new Range32(((72194 : GoUInt32)), ((72202 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72243 : GoUInt32)), ((72248 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72251 : GoUInt32)), ((72254 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72263 : GoUInt32)), ((72273 : GoUInt32)), ((10 : GoUInt32))).__copy__(),
new Range32(((72274 : GoUInt32)), ((72278 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72281 : GoUInt32)), ((72283 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72330 : GoUInt32)), ((72342 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72344 : GoUInt32)), ((72345 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72752 : GoUInt32)), ((72758 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72760 : GoUInt32)), ((72765 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72767 : GoUInt32)), ((72850 : GoUInt32)), ((83 : GoUInt32))).__copy__(),
new Range32(((72851 : GoUInt32)), ((72871 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72874 : GoUInt32)), ((72880 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72882 : GoUInt32)), ((72883 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72885 : GoUInt32)), ((72886 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73009 : GoUInt32)), ((73014 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73018 : GoUInt32)), ((73020 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73021 : GoUInt32)), ((73023 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73024 : GoUInt32)), ((73029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73031 : GoUInt32)), ((73104 : GoUInt32)), ((73 : GoUInt32))).__copy__(),
new Range32(((73105 : GoUInt32)), ((73109 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((73111 : GoUInt32)), ((73459 : GoUInt32)), ((348 : GoUInt32))).__copy__(),
new Range32(((73460 : GoUInt32)), ((92912 : GoUInt32)), ((19452 : GoUInt32))).__copy__(),
new Range32(((92913 : GoUInt32)), ((92916 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92976 : GoUInt32)), ((92982 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94031 : GoUInt32)), ((94095 : GoUInt32)), ((64 : GoUInt32))).__copy__(),
new Range32(((94096 : GoUInt32)), ((94098 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94180 : GoUInt32)), ((113821 : GoUInt32)), ((19641 : GoUInt32))).__copy__(),
new Range32(((113822 : GoUInt32)), ((119143 : GoUInt32)), ((5321 : GoUInt32))).__copy__(),
new Range32(((119144 : GoUInt32)), ((119145 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119163 : GoUInt32)), ((119170 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119173 : GoUInt32)), ((119179 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119210 : GoUInt32)), ((119213 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119362 : GoUInt32)), ((119364 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121344 : GoUInt32)), ((121398 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121403 : GoUInt32)), ((121452 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121461 : GoUInt32)), ((121476 : GoUInt32)), ((15 : GoUInt32))).__copy__(),
new Range32(((121499 : GoUInt32)), ((121503 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121505 : GoUInt32)), ((121519 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122880 : GoUInt32)), ((122886 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122888 : GoUInt32)), ((122904 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122907 : GoUInt32)), ((122913 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122915 : GoUInt32)), ((122916 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122918 : GoUInt32)), ((122922 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123184 : GoUInt32)), ((123190 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123628 : GoUInt32)), ((123631 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125136 : GoUInt32)), ((125142 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125252 : GoUInt32)), ((125258 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((917760 : GoUInt32)), ((917999 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Hanunoo : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5920 : GoUInt16)), ((5940 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var _foldMn : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((921 : GoUInt16)), ((953 : GoUInt16)), ((32 : GoUInt16))).__copy__(), new Range16(((8126 : GoUInt16)), ((8126 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Shavian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66640 : GoUInt32)), ((66687 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Old_Hungarian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68736 : GoUInt32)), ((68786 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68800 : GoUInt32)), ((68850 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68858 : GoUInt32)), ((68863 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_Hungarian : Pointer<RangeTable> = __Old_Hungarian;
var __Pattern_White_Space : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((9 : GoUInt16)), ((13 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((32 : GoUInt16)), ((133 : GoUInt16)), ((101 : GoUInt16))).__copy__(), new Range16(((8206 : GoUInt16)), ((8207 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8232 : GoUInt16)), ((8233 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((2 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var pattern_White_Space : Pointer<RangeTable> = __Pattern_White_Space;
var __Myanmar : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((4096 : GoUInt16)), ((4255 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43488 : GoUInt16)), ((43518 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43616 : GoUInt16)), ((43647 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Newa : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((70656 : GoUInt32)), ((70747 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70749 : GoUInt32)), ((70753 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Pi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((171 : GoUInt16)), ((8216 : GoUInt16)), ((8045 : GoUInt16))).__copy__(), new Range16(((8219 : GoUInt16)), ((8220 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8223 : GoUInt16)), ((8249 : GoUInt16)), ((26 : GoUInt16))).__copy__(), new Range16(((11778 : GoUInt16)), ((11780 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((11785 : GoUInt16)), ((11788 : GoUInt16)), ((3 : GoUInt16))).__copy__(), new Range16(((11804 : GoUInt16)), ((11808 : GoUInt16)), ((4 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Hanifi_Rohingya : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68864 : GoUInt32)), ((68903 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68912 : GoUInt32)), ((68921 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Masaram_Gondi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72960 : GoUInt32)), ((72966 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72968 : GoUInt32)), ((72969 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72971 : GoUInt32)), ((73014 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73018 : GoUInt32)), ((73020 : GoUInt32)), ((2 : GoUInt32))).__copy__(), new Range32(((73021 : GoUInt32)), ((73023 : GoUInt32)), ((2 : GoUInt32))).__copy__(), new Range32(((73024 : GoUInt32)), ((73031 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73040 : GoUInt32)), ((73049 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Sc : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((36 : GoUInt16)), ((162 : GoUInt16)), ((126 : GoUInt16))).__copy__(),
new Range16(((163 : GoUInt16)), ((165 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1423 : GoUInt16)), ((1547 : GoUInt16)), ((124 : GoUInt16))).__copy__(),
new Range16(((2046 : GoUInt16)), ((2047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2546 : GoUInt16)), ((2547 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2555 : GoUInt16)), ((2801 : GoUInt16)), ((246 : GoUInt16))).__copy__(),
new Range16(((3065 : GoUInt16)), ((3647 : GoUInt16)), ((582 : GoUInt16))).__copy__(),
new Range16(((6107 : GoUInt16)), ((8352 : GoUInt16)), ((2245 : GoUInt16))).__copy__(),
new Range16(((8353 : GoUInt16)), ((8383 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43064 : GoUInt16)), ((65020 : GoUInt16)), ((21956 : GoUInt16))).__copy__(),
new Range16(((65129 : GoUInt16)), ((65284 : GoUInt16)), ((155 : GoUInt16))).__copy__(),
new Range16(((65504 : GoUInt16)), ((65505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65509 : GoUInt16)), ((65510 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((73693 : GoUInt32)), ((73696 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((123647 : GoUInt32)), ((126128 : GoUInt32)), ((2481 : GoUInt32))).__copy__()), latinOffset : ((2 : GoInt)) } : RangeTable)));
var __Co : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((57344 : GoUInt16)), ((63743 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((983040 : GoUInt32)), ((1048573 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((1048576 : GoUInt32)), ((1114109 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var co : Pointer<RangeTable> = __Co;
var inherited : Pointer<RangeTable> = __Inherited;
var __Prepended_Concatenation_Mark : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1536 : GoUInt16)), ((1541 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1757 : GoUInt16)), ((1807 : GoUInt16)), ((50 : GoUInt16))).__copy__(), new Range16(((2274 : GoUInt16)), ((2274 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((69821 : GoUInt32)), ((69837 : GoUInt32)), ((16 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Cs : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((55296 : GoUInt16)), ((57343 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var cs : Pointer<RangeTable> = __Cs;
var __Po : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((33 : GoUInt16)), ((35 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((37 : GoUInt16)), ((39 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42 : GoUInt16)), ((46 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((47 : GoUInt16)), ((58 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((59 : GoUInt16)), ((63 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((64 : GoUInt16)), ((92 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((161 : GoUInt16)), ((167 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((182 : GoUInt16)), ((183 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((191 : GoUInt16)), ((894 : GoUInt16)), ((703 : GoUInt16))).__copy__(),
new Range16(((903 : GoUInt16)), ((1370 : GoUInt16)), ((467 : GoUInt16))).__copy__(),
new Range16(((1371 : GoUInt16)), ((1375 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1417 : GoUInt16)), ((1472 : GoUInt16)), ((55 : GoUInt16))).__copy__(),
new Range16(((1475 : GoUInt16)), ((1478 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1523 : GoUInt16)), ((1524 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1545 : GoUInt16)), ((1546 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1548 : GoUInt16)), ((1549 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1563 : GoUInt16)), ((1566 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1567 : GoUInt16)), ((1642 : GoUInt16)), ((75 : GoUInt16))).__copy__(),
new Range16(((1643 : GoUInt16)), ((1645 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1748 : GoUInt16)), ((1792 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((1793 : GoUInt16)), ((1805 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2039 : GoUInt16)), ((2041 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2096 : GoUInt16)), ((2110 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2142 : GoUInt16)), ((2404 : GoUInt16)), ((262 : GoUInt16))).__copy__(),
new Range16(((2405 : GoUInt16)), ((2416 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((2557 : GoUInt16)), ((2678 : GoUInt16)), ((121 : GoUInt16))).__copy__(),
new Range16(((2800 : GoUInt16)), ((3191 : GoUInt16)), ((391 : GoUInt16))).__copy__(),
new Range16(((3204 : GoUInt16)), ((3572 : GoUInt16)), ((368 : GoUInt16))).__copy__(),
new Range16(((3663 : GoUInt16)), ((3674 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((3675 : GoUInt16)), ((3844 : GoUInt16)), ((169 : GoUInt16))).__copy__(),
new Range16(((3845 : GoUInt16)), ((3858 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3860 : GoUInt16)), ((3973 : GoUInt16)), ((113 : GoUInt16))).__copy__(),
new Range16(((4048 : GoUInt16)), ((4052 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4057 : GoUInt16)), ((4058 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4170 : GoUInt16)), ((4175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4347 : GoUInt16)), ((4960 : GoUInt16)), ((613 : GoUInt16))).__copy__(),
new Range16(((4961 : GoUInt16)), ((4968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5742 : GoUInt16)), ((5867 : GoUInt16)), ((125 : GoUInt16))).__copy__(),
new Range16(((5868 : GoUInt16)), ((5869 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5941 : GoUInt16)), ((5942 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6100 : GoUInt16)), ((6102 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6104 : GoUInt16)), ((6106 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6144 : GoUInt16)), ((6149 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6151 : GoUInt16)), ((6154 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6468 : GoUInt16)), ((6469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6686 : GoUInt16)), ((6687 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6816 : GoUInt16)), ((6822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6824 : GoUInt16)), ((6829 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7002 : GoUInt16)), ((7008 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7164 : GoUInt16)), ((7167 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7227 : GoUInt16)), ((7231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7294 : GoUInt16)), ((7295 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7360 : GoUInt16)), ((7367 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7379 : GoUInt16)), ((8214 : GoUInt16)), ((835 : GoUInt16))).__copy__(),
new Range16(((8215 : GoUInt16)), ((8224 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((8225 : GoUInt16)), ((8231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8240 : GoUInt16)), ((8248 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8251 : GoUInt16)), ((8254 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8257 : GoUInt16)), ((8259 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8263 : GoUInt16)), ((8273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8275 : GoUInt16)), ((8277 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8278 : GoUInt16)), ((8286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11513 : GoUInt16)), ((11516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11518 : GoUInt16)), ((11519 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11632 : GoUInt16)), ((11776 : GoUInt16)), ((144 : GoUInt16))).__copy__(),
new Range16(((11777 : GoUInt16)), ((11782 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((11783 : GoUInt16)), ((11784 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11787 : GoUInt16)), ((11790 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11791 : GoUInt16)), ((11798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11800 : GoUInt16)), ((11801 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11803 : GoUInt16)), ((11806 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11807 : GoUInt16)), ((11818 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((11819 : GoUInt16)), ((11822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11824 : GoUInt16)), ((11833 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11836 : GoUInt16)), ((11839 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11841 : GoUInt16)), ((11843 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11844 : GoUInt16)), ((11855 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11858 : GoUInt16)), ((12289 : GoUInt16)), ((431 : GoUInt16))).__copy__(),
new Range16(((12290 : GoUInt16)), ((12291 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12349 : GoUInt16)), ((12539 : GoUInt16)), ((190 : GoUInt16))).__copy__(),
new Range16(((42238 : GoUInt16)), ((42239 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42509 : GoUInt16)), ((42511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42611 : GoUInt16)), ((42622 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((42738 : GoUInt16)), ((42743 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43124 : GoUInt16)), ((43127 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43214 : GoUInt16)), ((43215 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43256 : GoUInt16)), ((43258 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43260 : GoUInt16)), ((43310 : GoUInt16)), ((50 : GoUInt16))).__copy__(),
new Range16(((43311 : GoUInt16)), ((43359 : GoUInt16)), ((48 : GoUInt16))).__copy__(),
new Range16(((43457 : GoUInt16)), ((43469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43486 : GoUInt16)), ((43487 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43612 : GoUInt16)), ((43615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43742 : GoUInt16)), ((43743 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43760 : GoUInt16)), ((43761 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44011 : GoUInt16)), ((65040 : GoUInt16)), ((21029 : GoUInt16))).__copy__(),
new Range16(((65041 : GoUInt16)), ((65046 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65049 : GoUInt16)), ((65072 : GoUInt16)), ((23 : GoUInt16))).__copy__(),
new Range16(((65093 : GoUInt16)), ((65094 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65097 : GoUInt16)), ((65100 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65104 : GoUInt16)), ((65106 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65108 : GoUInt16)), ((65111 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65119 : GoUInt16)), ((65121 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65128 : GoUInt16)), ((65130 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65131 : GoUInt16)), ((65281 : GoUInt16)), ((150 : GoUInt16))).__copy__(),
new Range16(((65282 : GoUInt16)), ((65283 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65285 : GoUInt16)), ((65287 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65290 : GoUInt16)), ((65294 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65295 : GoUInt16)), ((65306 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((65307 : GoUInt16)), ((65311 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((65312 : GoUInt16)), ((65340 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((65377 : GoUInt16)), ((65380 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((65381 : GoUInt16)), ((65381 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65792 : GoUInt32)), ((65794 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66463 : GoUInt32)), ((66512 : GoUInt32)), ((49 : GoUInt32))).__copy__(),
new Range32(((66927 : GoUInt32)), ((67671 : GoUInt32)), ((744 : GoUInt32))).__copy__(),
new Range32(((67871 : GoUInt32)), ((67903 : GoUInt32)), ((32 : GoUInt32))).__copy__(),
new Range32(((68176 : GoUInt32)), ((68184 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68223 : GoUInt32)), ((68336 : GoUInt32)), ((113 : GoUInt32))).__copy__(),
new Range32(((68337 : GoUInt32)), ((68342 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68409 : GoUInt32)), ((68415 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68505 : GoUInt32)), ((68508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69461 : GoUInt32)), ((69465 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69703 : GoUInt32)), ((69709 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69819 : GoUInt32)), ((69820 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69822 : GoUInt32)), ((69825 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69952 : GoUInt32)), ((69955 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70004 : GoUInt32)), ((70005 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70085 : GoUInt32)), ((70088 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70093 : GoUInt32)), ((70107 : GoUInt32)), ((14 : GoUInt32))).__copy__(),
new Range32(((70109 : GoUInt32)), ((70111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70200 : GoUInt32)), ((70205 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70313 : GoUInt32)), ((70731 : GoUInt32)), ((418 : GoUInt32))).__copy__(),
new Range32(((70732 : GoUInt32)), ((70735 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70746 : GoUInt32)), ((70747 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70749 : GoUInt32)), ((70854 : GoUInt32)), ((105 : GoUInt32))).__copy__(),
new Range32(((71105 : GoUInt32)), ((71127 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71233 : GoUInt32)), ((71235 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71264 : GoUInt32)), ((71276 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71484 : GoUInt32)), ((71486 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71739 : GoUInt32)), ((72004 : GoUInt32)), ((265 : GoUInt32))).__copy__(),
new Range32(((72005 : GoUInt32)), ((72006 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72162 : GoUInt32)), ((72255 : GoUInt32)), ((93 : GoUInt32))).__copy__(),
new Range32(((72256 : GoUInt32)), ((72262 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72346 : GoUInt32)), ((72348 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72350 : GoUInt32)), ((72354 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72769 : GoUInt32)), ((72773 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72816 : GoUInt32)), ((72817 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73463 : GoUInt32)), ((73464 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73727 : GoUInt32)), ((74864 : GoUInt32)), ((1137 : GoUInt32))).__copy__(),
new Range32(((74865 : GoUInt32)), ((74868 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92782 : GoUInt32)), ((92783 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92917 : GoUInt32)), ((92983 : GoUInt32)), ((66 : GoUInt32))).__copy__(),
new Range32(((92984 : GoUInt32)), ((92987 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92996 : GoUInt32)), ((93847 : GoUInt32)), ((851 : GoUInt32))).__copy__(),
new Range32(((93848 : GoUInt32)), ((93850 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94178 : GoUInt32)), ((113823 : GoUInt32)), ((19645 : GoUInt32))).__copy__(),
new Range32(((121479 : GoUInt32)), ((121483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125278 : GoUInt32)), ((125279 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((8 : GoInt)) } : RangeTable)));
var __Gunjala_Gondi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((73056 : GoUInt32)), ((73061 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73063 : GoUInt32)), ((73064 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73066 : GoUInt32)), ((73102 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73104 : GoUInt32)), ((73105 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73107 : GoUInt32)), ((73112 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73120 : GoUInt32)), ((73129 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var gunjala_Gondi : Pointer<RangeTable> = __Gunjala_Gondi;
var pattern_Syntax : Pointer<RangeTable> = __Pattern_Syntax;
var __Sk : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((94 : GoUInt16)), ((96 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((168 : GoUInt16)), ((175 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((180 : GoUInt16)), ((184 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((706 : GoUInt16)), ((709 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((722 : GoUInt16)), ((735 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((741 : GoUInt16)), ((747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((749 : GoUInt16)), ((751 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((752 : GoUInt16)), ((767 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((885 : GoUInt16)), ((900 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((901 : GoUInt16)), ((8125 : GoUInt16)), ((7224 : GoUInt16))).__copy__(),
new Range16(((8127 : GoUInt16)), ((8129 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8141 : GoUInt16)), ((8143 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8157 : GoUInt16)), ((8159 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8173 : GoUInt16)), ((8175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8189 : GoUInt16)), ((8190 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12443 : GoUInt16)), ((12444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42752 : GoUInt16)), ((42774 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42784 : GoUInt16)), ((42785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42889 : GoUInt16)), ((42890 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43867 : GoUInt16)), ((43882 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((43883 : GoUInt16)), ((64434 : GoUInt16)), ((20551 : GoUInt16))).__copy__(),
new Range16(((64435 : GoUInt16)), ((64449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65342 : GoUInt16)), ((65344 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65507 : GoUInt16)), ((65507 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((127995 : GoUInt32)), ((127999 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((3 : GoInt)) } : RangeTable)));
var __Mandaic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((2112 : GoUInt16)), ((2139 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((2142 : GoUInt16)), ((2142 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Nd : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((48 : GoUInt16)), ((57 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1632 : GoUInt16)), ((1641 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1776 : GoUInt16)), ((1785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1984 : GoUInt16)), ((1993 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2406 : GoUInt16)), ((2415 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2534 : GoUInt16)), ((2543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2662 : GoUInt16)), ((2671 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2790 : GoUInt16)), ((2799 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2918 : GoUInt16)), ((2927 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3046 : GoUInt16)), ((3055 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3174 : GoUInt16)), ((3183 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3302 : GoUInt16)), ((3311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3430 : GoUInt16)), ((3439 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3558 : GoUInt16)), ((3567 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3664 : GoUInt16)), ((3673 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3792 : GoUInt16)), ((3801 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3872 : GoUInt16)), ((3881 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4160 : GoUInt16)), ((4169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4240 : GoUInt16)), ((4249 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6112 : GoUInt16)), ((6121 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6160 : GoUInt16)), ((6169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6470 : GoUInt16)), ((6479 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6608 : GoUInt16)), ((6617 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6784 : GoUInt16)), ((6793 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6800 : GoUInt16)), ((6809 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6992 : GoUInt16)), ((7001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7088 : GoUInt16)), ((7097 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7232 : GoUInt16)), ((7241 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7248 : GoUInt16)), ((7257 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42528 : GoUInt16)), ((42537 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43216 : GoUInt16)), ((43225 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43264 : GoUInt16)), ((43273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43472 : GoUInt16)), ((43481 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43504 : GoUInt16)), ((43513 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43600 : GoUInt16)), ((43609 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44016 : GoUInt16)), ((44025 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65296 : GoUInt16)), ((65305 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66720 : GoUInt32)), ((66729 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68912 : GoUInt32)), ((68921 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69734 : GoUInt32)), ((69743 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69872 : GoUInt32)), ((69881 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69942 : GoUInt32)), ((69951 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70096 : GoUInt32)), ((70105 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70384 : GoUInt32)), ((70393 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70736 : GoUInt32)), ((70745 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70864 : GoUInt32)), ((70873 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71248 : GoUInt32)), ((71257 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71360 : GoUInt32)), ((71369 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71472 : GoUInt32)), ((71481 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71904 : GoUInt32)), ((71913 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72016 : GoUInt32)), ((72025 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72784 : GoUInt32)), ((72793 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73040 : GoUInt32)), ((73049 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73120 : GoUInt32)), ((73129 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92768 : GoUInt32)), ((92777 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93008 : GoUInt32)), ((93017 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120782 : GoUInt32)), ((120831 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123200 : GoUInt32)), ((123209 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123632 : GoUInt32)), ((123641 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125264 : GoUInt32)), ((125273 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((130032 : GoUInt32)), ((130041 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((1 : GoInt)) } : RangeTable)));
var digit : Pointer<RangeTable> = __Nd;
var __Multani : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((70272 : GoUInt32)), ((70278 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70280 : GoUInt32)), ((70282 : GoUInt32)), ((2 : GoUInt32))).__copy__(), new Range32(((70283 : GoUInt32)), ((70285 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70287 : GoUInt32)), ((70301 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70303 : GoUInt32)), ((70313 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var multani : Pointer<RangeTable> = __Multani;
var __Malayalam : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((3328 : GoUInt16)), ((3340 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3342 : GoUInt16)), ((3344 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3346 : GoUInt16)), ((3396 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3398 : GoUInt16)), ((3400 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3402 : GoUInt16)), ((3407 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3412 : GoUInt16)), ((3427 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3430 : GoUInt16)), ((3455 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var malayalam : Pointer<RangeTable> = __Malayalam;
var __Ps : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((40 : GoUInt16)), ((91 : GoUInt16)), ((51 : GoUInt16))).__copy__(),
new Range16(((123 : GoUInt16)), ((3898 : GoUInt16)), ((3775 : GoUInt16))).__copy__(),
new Range16(((3900 : GoUInt16)), ((5787 : GoUInt16)), ((1887 : GoUInt16))).__copy__(),
new Range16(((8218 : GoUInt16)), ((8222 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8261 : GoUInt16)), ((8317 : GoUInt16)), ((56 : GoUInt16))).__copy__(),
new Range16(((8333 : GoUInt16)), ((8968 : GoUInt16)), ((635 : GoUInt16))).__copy__(),
new Range16(((8970 : GoUInt16)), ((9001 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((10088 : GoUInt16)), ((10100 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10181 : GoUInt16)), ((10214 : GoUInt16)), ((33 : GoUInt16))).__copy__(),
new Range16(((10216 : GoUInt16)), ((10222 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10627 : GoUInt16)), ((10647 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10712 : GoUInt16)), ((10714 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((10748 : GoUInt16)), ((11810 : GoUInt16)), ((1062 : GoUInt16))).__copy__(),
new Range16(((11812 : GoUInt16)), ((11816 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11842 : GoUInt16)), ((12296 : GoUInt16)), ((454 : GoUInt16))).__copy__(),
new Range16(((12298 : GoUInt16)), ((12304 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12308 : GoUInt16)), ((12314 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12317 : GoUInt16)), ((64831 : GoUInt16)), ((52514 : GoUInt16))).__copy__(),
new Range16(((65047 : GoUInt16)), ((65077 : GoUInt16)), ((30 : GoUInt16))).__copy__(),
new Range16(((65079 : GoUInt16)), ((65091 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65095 : GoUInt16)), ((65113 : GoUInt16)), ((18 : GoUInt16))).__copy__(),
new Range16(((65115 : GoUInt16)), ((65117 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65288 : GoUInt16)), ((65339 : GoUInt16)), ((51 : GoUInt16))).__copy__(),
new Range16(((65371 : GoUInt16)), ((65375 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((65378 : GoUInt16)), ((65378 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((1 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var __Sm : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((43 : GoUInt16)), ((60 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((61 : GoUInt16)), ((62 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((124 : GoUInt16)), ((126 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((172 : GoUInt16)), ((177 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((215 : GoUInt16)), ((247 : GoUInt16)), ((32 : GoUInt16))).__copy__(),
new Range16(((1014 : GoUInt16)), ((1542 : GoUInt16)), ((528 : GoUInt16))).__copy__(),
new Range16(((1543 : GoUInt16)), ((1544 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8260 : GoUInt16)), ((8274 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((8314 : GoUInt16)), ((8316 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8330 : GoUInt16)), ((8332 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8472 : GoUInt16)), ((8512 : GoUInt16)), ((40 : GoUInt16))).__copy__(),
new Range16(((8513 : GoUInt16)), ((8516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8523 : GoUInt16)), ((8592 : GoUInt16)), ((69 : GoUInt16))).__copy__(),
new Range16(((8593 : GoUInt16)), ((8596 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8602 : GoUInt16)), ((8603 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8608 : GoUInt16)), ((8614 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((8622 : GoUInt16)), ((8654 : GoUInt16)), ((32 : GoUInt16))).__copy__(),
new Range16(((8655 : GoUInt16)), ((8658 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((8660 : GoUInt16)), ((8692 : GoUInt16)), ((32 : GoUInt16))).__copy__(),
new Range16(((8693 : GoUInt16)), ((8959 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8992 : GoUInt16)), ((8993 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9084 : GoUInt16)), ((9115 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((9116 : GoUInt16)), ((9139 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9180 : GoUInt16)), ((9185 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9655 : GoUInt16)), ((9665 : GoUInt16)), ((10 : GoUInt16))).__copy__(),
new Range16(((9720 : GoUInt16)), ((9727 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9839 : GoUInt16)), ((10176 : GoUInt16)), ((337 : GoUInt16))).__copy__(),
new Range16(((10177 : GoUInt16)), ((10180 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10183 : GoUInt16)), ((10213 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10224 : GoUInt16)), ((10239 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10496 : GoUInt16)), ((10626 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10649 : GoUInt16)), ((10711 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10716 : GoUInt16)), ((10747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10750 : GoUInt16)), ((11007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11056 : GoUInt16)), ((11076 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11079 : GoUInt16)), ((11084 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64297 : GoUInt16)), ((65122 : GoUInt16)), ((825 : GoUInt16))).__copy__(),
new Range16(((65124 : GoUInt16)), ((65126 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65291 : GoUInt16)), ((65308 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((65309 : GoUInt16)), ((65310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65372 : GoUInt16)), ((65374 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65506 : GoUInt16)), ((65513 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((65514 : GoUInt16)), ((65516 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((120513 : GoUInt32)), ((120539 : GoUInt32)), ((26 : GoUInt32))).__copy__(), new Range32(((120571 : GoUInt32)), ((120597 : GoUInt32)), ((26 : GoUInt32))).__copy__(), new Range32(((120629 : GoUInt32)), ((120655 : GoUInt32)), ((26 : GoUInt32))).__copy__(), new Range32(((120687 : GoUInt32)), ((120713 : GoUInt32)), ((26 : GoUInt32))).__copy__(), new Range32(((120745 : GoUInt32)), ((120771 : GoUInt32)), ((26 : GoUInt32))).__copy__(), new Range32(((126704 : GoUInt32)), ((126705 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((5 : GoInt)) } : RangeTable)));
var __Meroitic_Hieroglyphs : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67968 : GoUInt32)), ((67999 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __So : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((166 : GoUInt16)), ((169 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((174 : GoUInt16)), ((176 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1154 : GoUInt16)), ((1421 : GoUInt16)), ((267 : GoUInt16))).__copy__(),
new Range16(((1422 : GoUInt16)), ((1550 : GoUInt16)), ((128 : GoUInt16))).__copy__(),
new Range16(((1551 : GoUInt16)), ((1758 : GoUInt16)), ((207 : GoUInt16))).__copy__(),
new Range16(((1769 : GoUInt16)), ((1789 : GoUInt16)), ((20 : GoUInt16))).__copy__(),
new Range16(((1790 : GoUInt16)), ((2038 : GoUInt16)), ((248 : GoUInt16))).__copy__(),
new Range16(((2554 : GoUInt16)), ((2928 : GoUInt16)), ((374 : GoUInt16))).__copy__(),
new Range16(((3059 : GoUInt16)), ((3064 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3066 : GoUInt16)), ((3199 : GoUInt16)), ((133 : GoUInt16))).__copy__(),
new Range16(((3407 : GoUInt16)), ((3449 : GoUInt16)), ((42 : GoUInt16))).__copy__(),
new Range16(((3841 : GoUInt16)), ((3843 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3859 : GoUInt16)), ((3861 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3862 : GoUInt16)), ((3863 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3866 : GoUInt16)), ((3871 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3892 : GoUInt16)), ((3896 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4030 : GoUInt16)), ((4037 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4039 : GoUInt16)), ((4044 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4046 : GoUInt16)), ((4047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4053 : GoUInt16)), ((4056 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4254 : GoUInt16)), ((4255 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5008 : GoUInt16)), ((5017 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5741 : GoUInt16)), ((6464 : GoUInt16)), ((723 : GoUInt16))).__copy__(),
new Range16(((6622 : GoUInt16)), ((6655 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7009 : GoUInt16)), ((7018 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7028 : GoUInt16)), ((7036 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8448 : GoUInt16)), ((8449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8451 : GoUInt16)), ((8454 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8456 : GoUInt16)), ((8457 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8468 : GoUInt16)), ((8470 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8471 : GoUInt16)), ((8478 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((8479 : GoUInt16)), ((8483 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8485 : GoUInt16)), ((8489 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8494 : GoUInt16)), ((8506 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((8507 : GoUInt16)), ((8522 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((8524 : GoUInt16)), ((8525 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8527 : GoUInt16)), ((8586 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((8587 : GoUInt16)), ((8597 : GoUInt16)), ((10 : GoUInt16))).__copy__(),
new Range16(((8598 : GoUInt16)), ((8601 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8604 : GoUInt16)), ((8607 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8609 : GoUInt16)), ((8610 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8612 : GoUInt16)), ((8613 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8615 : GoUInt16)), ((8621 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8623 : GoUInt16)), ((8653 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8656 : GoUInt16)), ((8657 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8659 : GoUInt16)), ((8661 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8662 : GoUInt16)), ((8691 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8960 : GoUInt16)), ((8967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8972 : GoUInt16)), ((8991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8994 : GoUInt16)), ((9000 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9003 : GoUInt16)), ((9083 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9085 : GoUInt16)), ((9114 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9140 : GoUInt16)), ((9179 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9186 : GoUInt16)), ((9254 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9280 : GoUInt16)), ((9290 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9372 : GoUInt16)), ((9449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9472 : GoUInt16)), ((9654 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9656 : GoUInt16)), ((9664 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9666 : GoUInt16)), ((9719 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9728 : GoUInt16)), ((9838 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9840 : GoUInt16)), ((10087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10132 : GoUInt16)), ((10175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10240 : GoUInt16)), ((10495 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11008 : GoUInt16)), ((11055 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11077 : GoUInt16)), ((11078 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11085 : GoUInt16)), ((11123 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11126 : GoUInt16)), ((11157 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11159 : GoUInt16)), ((11263 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11493 : GoUInt16)), ((11498 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11856 : GoUInt16)), ((11857 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11904 : GoUInt16)), ((11929 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11931 : GoUInt16)), ((12019 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12032 : GoUInt16)), ((12245 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12272 : GoUInt16)), ((12283 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12292 : GoUInt16)), ((12306 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((12307 : GoUInt16)), ((12320 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((12342 : GoUInt16)), ((12343 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12350 : GoUInt16)), ((12351 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12688 : GoUInt16)), ((12689 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12694 : GoUInt16)), ((12703 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12736 : GoUInt16)), ((12771 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12800 : GoUInt16)), ((12830 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12842 : GoUInt16)), ((12871 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12880 : GoUInt16)), ((12896 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((12897 : GoUInt16)), ((12927 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12938 : GoUInt16)), ((12976 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12992 : GoUInt16)), ((13311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((19904 : GoUInt16)), ((19967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42128 : GoUInt16)), ((42182 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43048 : GoUInt16)), ((43051 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43062 : GoUInt16)), ((43063 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43065 : GoUInt16)), ((43639 : GoUInt16)), ((574 : GoUInt16))).__copy__(),
new Range16(((43640 : GoUInt16)), ((43641 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65021 : GoUInt16)), ((65508 : GoUInt16)), ((487 : GoUInt16))).__copy__(),
new Range16(((65512 : GoUInt16)), ((65517 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((65518 : GoUInt16)), ((65532 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((65533 : GoUInt16)), ((65533 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65847 : GoUInt32)), ((65855 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65913 : GoUInt32)), ((65929 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65932 : GoUInt32)), ((65934 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65936 : GoUInt32)), ((65948 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65952 : GoUInt32)), ((66000 : GoUInt32)), ((48 : GoUInt32))).__copy__(),
new Range32(((66001 : GoUInt32)), ((66044 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67703 : GoUInt32)), ((67704 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68296 : GoUInt32)), ((71487 : GoUInt32)), ((3191 : GoUInt32))).__copy__(),
new Range32(((73685 : GoUInt32)), ((73692 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73697 : GoUInt32)), ((73713 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92988 : GoUInt32)), ((92991 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92997 : GoUInt32)), ((113820 : GoUInt32)), ((20823 : GoUInt32))).__copy__(),
new Range32(((118784 : GoUInt32)), ((119029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119040 : GoUInt32)), ((119078 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119081 : GoUInt32)), ((119140 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119146 : GoUInt32)), ((119148 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119171 : GoUInt32)), ((119172 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119180 : GoUInt32)), ((119209 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119214 : GoUInt32)), ((119272 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119296 : GoUInt32)), ((119361 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119365 : GoUInt32)), ((119552 : GoUInt32)), ((187 : GoUInt32))).__copy__(),
new Range32(((119553 : GoUInt32)), ((119638 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120832 : GoUInt32)), ((121343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121399 : GoUInt32)), ((121402 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121453 : GoUInt32)), ((121460 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121462 : GoUInt32)), ((121475 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121477 : GoUInt32)), ((121478 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123215 : GoUInt32)), ((126124 : GoUInt32)), ((2909 : GoUInt32))).__copy__(),
new Range32(((126254 : GoUInt32)), ((126976 : GoUInt32)), ((722 : GoUInt32))).__copy__(),
new Range32(((126977 : GoUInt32)), ((127019 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127024 : GoUInt32)), ((127123 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127136 : GoUInt32)), ((127150 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127153 : GoUInt32)), ((127167 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127169 : GoUInt32)), ((127183 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127185 : GoUInt32)), ((127221 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127245 : GoUInt32)), ((127405 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127462 : GoUInt32)), ((127490 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127504 : GoUInt32)), ((127547 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127552 : GoUInt32)), ((127560 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127568 : GoUInt32)), ((127569 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127584 : GoUInt32)), ((127589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127744 : GoUInt32)), ((127994 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128000 : GoUInt32)), ((128727 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128736 : GoUInt32)), ((128748 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128752 : GoUInt32)), ((128764 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128768 : GoUInt32)), ((128883 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128896 : GoUInt32)), ((128984 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128992 : GoUInt32)), ((129003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129024 : GoUInt32)), ((129035 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129040 : GoUInt32)), ((129095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129104 : GoUInt32)), ((129113 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129120 : GoUInt32)), ((129159 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129168 : GoUInt32)), ((129197 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129200 : GoUInt32)), ((129201 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129280 : GoUInt32)), ((129400 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129402 : GoUInt32)), ((129483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129485 : GoUInt32)), ((129619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129632 : GoUInt32)), ((129645 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129648 : GoUInt32)), ((129652 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129656 : GoUInt32)), ((129658 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129664 : GoUInt32)), ((129670 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129680 : GoUInt32)), ((129704 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129712 : GoUInt32)), ((129718 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129728 : GoUInt32)), ((129730 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129744 : GoUInt32)), ((129750 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129792 : GoUInt32)), ((129938 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129940 : GoUInt32)), ((129994 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((2 : GoInt)) } : RangeTable)));
var __Thaana : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1920 : GoUInt16)), ((1969 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Psalter_Pahlavi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68480 : GoUInt32)), ((68497 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68505 : GoUInt32)), ((68508 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68521 : GoUInt32)), ((68527 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var psalter_Pahlavi : Pointer<RangeTable> = __Psalter_Pahlavi;
var __Adlam : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((125184 : GoUInt32)), ((125259 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125264 : GoUInt32)), ((125273 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125278 : GoUInt32)), ((125279 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var adlam : Pointer<RangeTable> = __Adlam;
var __Canadian_Aboriginal : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5120 : GoUInt16)), ((5759 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6320 : GoUInt16)), ((6389 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Grantha : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(
new Range32(((70400 : GoUInt32)), ((70403 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70405 : GoUInt32)), ((70412 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70415 : GoUInt32)), ((70416 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70419 : GoUInt32)), ((70440 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70442 : GoUInt32)), ((70448 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70450 : GoUInt32)), ((70451 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70453 : GoUInt32)), ((70457 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70460 : GoUInt32)), ((70468 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70471 : GoUInt32)), ((70472 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70475 : GoUInt32)), ((70477 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70480 : GoUInt32)), ((70487 : GoUInt32)), ((7 : GoUInt32))).__copy__(),
new Range32(((70493 : GoUInt32)), ((70499 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70502 : GoUInt32)), ((70508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70512 : GoUInt32)), ((70516 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var grantha : Pointer<RangeTable> = __Grantha;
var __Ugaritic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66432 : GoUInt32)), ((66461 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66463 : GoUInt32)), ((66463 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var ugaritic : Pointer<RangeTable> = __Ugaritic;
var __Imperial_Aramaic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67648 : GoUInt32)), ((67669 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67671 : GoUInt32)), ((67679 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var imperial_Aramaic : Pointer<RangeTable> = __Imperial_Aramaic;
var __Sogdian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69424 : GoUInt32)), ((69465 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var sogdian : Pointer<RangeTable> = __Sogdian;
var __Other_Grapheme_Extend : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((2494 : GoUInt16)), ((2519 : GoUInt16)), ((25 : GoUInt16))).__copy__(), new Range16(((2878 : GoUInt16)), ((2903 : GoUInt16)), ((25 : GoUInt16))).__copy__(), new Range16(((3006 : GoUInt16)), ((3031 : GoUInt16)), ((25 : GoUInt16))).__copy__(), new Range16(((3266 : GoUInt16)), ((3285 : GoUInt16)), ((19 : GoUInt16))).__copy__(), new Range16(((3286 : GoUInt16)), ((3390 : GoUInt16)), ((104 : GoUInt16))).__copy__(), new Range16(((3415 : GoUInt16)), ((3535 : GoUInt16)), ((120 : GoUInt16))).__copy__(), new Range16(((3551 : GoUInt16)), ((6965 : GoUInt16)), ((3414 : GoUInt16))).__copy__(), new Range16(((8204 : GoUInt16)), ((12334 : GoUInt16)), ((4130 : GoUInt16))).__copy__(), new Range16(((12335 : GoUInt16)), ((65438 : GoUInt16)), ((53103 : GoUInt16))).__copy__(), new Range16(((65439 : GoUInt16)), ((65439 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((70462 : GoUInt32)), ((70487 : GoUInt32)), ((25 : GoUInt32))).__copy__(), new Range32(((70832 : GoUInt32)), ((70845 : GoUInt32)), ((13 : GoUInt32))).__copy__(), new Range32(((71087 : GoUInt32)), ((71984 : GoUInt32)), ((897 : GoUInt32))).__copy__(), new Range32(((119141 : GoUInt32)), ((119150 : GoUInt32)), ((9 : GoUInt32))).__copy__(), new Range32(((119151 : GoUInt32)), ((119154 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((917536 : GoUInt32)), ((917631 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var other_Grapheme_Extend : Pointer<RangeTable> = __Other_Grapheme_Extend;
var __Ll : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((97 : GoUInt16)), ((122 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((181 : GoUInt16)), ((223 : GoUInt16)), ((42 : GoUInt16))).__copy__(),
new Range16(((224 : GoUInt16)), ((246 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((248 : GoUInt16)), ((255 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((257 : GoUInt16)), ((311 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((312 : GoUInt16)), ((328 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((329 : GoUInt16)), ((375 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((378 : GoUInt16)), ((382 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((383 : GoUInt16)), ((384 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((387 : GoUInt16)), ((389 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((392 : GoUInt16)), ((396 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((397 : GoUInt16)), ((402 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((405 : GoUInt16)), ((409 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((410 : GoUInt16)), ((411 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((414 : GoUInt16)), ((417 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((419 : GoUInt16)), ((421 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((424 : GoUInt16)), ((426 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((427 : GoUInt16)), ((429 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((432 : GoUInt16)), ((436 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((438 : GoUInt16)), ((441 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((442 : GoUInt16)), ((445 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((446 : GoUInt16)), ((447 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((454 : GoUInt16)), ((460 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((462 : GoUInt16)), ((476 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((477 : GoUInt16)), ((495 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((496 : GoUInt16)), ((499 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((501 : GoUInt16)), ((505 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((507 : GoUInt16)), ((563 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((564 : GoUInt16)), ((569 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((572 : GoUInt16)), ((575 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((576 : GoUInt16)), ((578 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((583 : GoUInt16)), ((591 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((592 : GoUInt16)), ((659 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((661 : GoUInt16)), ((687 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((881 : GoUInt16)), ((883 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((887 : GoUInt16)), ((891 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((892 : GoUInt16)), ((893 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((912 : GoUInt16)), ((940 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((941 : GoUInt16)), ((974 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((976 : GoUInt16)), ((977 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((981 : GoUInt16)), ((983 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((985 : GoUInt16)), ((1007 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1008 : GoUInt16)), ((1011 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1013 : GoUInt16)), ((1019 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1020 : GoUInt16)), ((1072 : GoUInt16)), ((52 : GoUInt16))).__copy__(),
new Range16(((1073 : GoUInt16)), ((1119 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1121 : GoUInt16)), ((1153 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1163 : GoUInt16)), ((1215 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1218 : GoUInt16)), ((1230 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1231 : GoUInt16)), ((1327 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1376 : GoUInt16)), ((1416 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4304 : GoUInt16)), ((4346 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4349 : GoUInt16)), ((4351 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5112 : GoUInt16)), ((5117 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7296 : GoUInt16)), ((7304 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7424 : GoUInt16)), ((7467 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7531 : GoUInt16)), ((7543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7545 : GoUInt16)), ((7578 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7681 : GoUInt16)), ((7829 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7830 : GoUInt16)), ((7837 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7839 : GoUInt16)), ((7935 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7936 : GoUInt16)), ((7943 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7952 : GoUInt16)), ((7957 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7968 : GoUInt16)), ((7975 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7984 : GoUInt16)), ((7991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8000 : GoUInt16)), ((8005 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8016 : GoUInt16)), ((8023 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8032 : GoUInt16)), ((8039 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8048 : GoUInt16)), ((8061 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8064 : GoUInt16)), ((8071 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8080 : GoUInt16)), ((8087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8096 : GoUInt16)), ((8103 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8112 : GoUInt16)), ((8116 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8118 : GoUInt16)), ((8119 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8126 : GoUInt16)), ((8130 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8131 : GoUInt16)), ((8132 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8134 : GoUInt16)), ((8135 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8144 : GoUInt16)), ((8147 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8150 : GoUInt16)), ((8151 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8160 : GoUInt16)), ((8167 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8178 : GoUInt16)), ((8180 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8182 : GoUInt16)), ((8183 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8458 : GoUInt16)), ((8462 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8463 : GoUInt16)), ((8467 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8495 : GoUInt16)), ((8505 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8508 : GoUInt16)), ((8509 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8518 : GoUInt16)), ((8521 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8526 : GoUInt16)), ((8580 : GoUInt16)), ((54 : GoUInt16))).__copy__(),
new Range16(((11312 : GoUInt16)), ((11358 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11361 : GoUInt16)), ((11365 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((11366 : GoUInt16)), ((11372 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11377 : GoUInt16)), ((11379 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11380 : GoUInt16)), ((11382 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11383 : GoUInt16)), ((11387 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11393 : GoUInt16)), ((11491 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11492 : GoUInt16)), ((11500 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((11502 : GoUInt16)), ((11507 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((11520 : GoUInt16)), ((11557 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11559 : GoUInt16)), ((11565 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((42561 : GoUInt16)), ((42605 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42625 : GoUInt16)), ((42651 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42787 : GoUInt16)), ((42799 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42800 : GoUInt16)), ((42801 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42803 : GoUInt16)), ((42865 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42866 : GoUInt16)), ((42872 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42874 : GoUInt16)), ((42876 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42879 : GoUInt16)), ((42887 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42892 : GoUInt16)), ((42894 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42897 : GoUInt16)), ((42899 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42900 : GoUInt16)), ((42901 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42903 : GoUInt16)), ((42921 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42927 : GoUInt16)), ((42933 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((42935 : GoUInt16)), ((42943 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42947 : GoUInt16)), ((42952 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((42954 : GoUInt16)), ((42998 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((43002 : GoUInt16)), ((43824 : GoUInt16)), ((822 : GoUInt16))).__copy__(),
new Range16(((43825 : GoUInt16)), ((43866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43872 : GoUInt16)), ((43880 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43888 : GoUInt16)), ((43967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64256 : GoUInt16)), ((64262 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64275 : GoUInt16)), ((64279 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65345 : GoUInt16)), ((65370 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66600 : GoUInt32)), ((66639 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66776 : GoUInt32)), ((66811 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68800 : GoUInt32)), ((68850 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71872 : GoUInt32)), ((71903 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93792 : GoUInt32)), ((93823 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119834 : GoUInt32)), ((119859 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119886 : GoUInt32)), ((119892 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119894 : GoUInt32)), ((119911 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119938 : GoUInt32)), ((119963 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119990 : GoUInt32)), ((119993 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119995 : GoUInt32)), ((119997 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((119998 : GoUInt32)), ((120003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120005 : GoUInt32)), ((120015 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120042 : GoUInt32)), ((120067 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120094 : GoUInt32)), ((120119 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120146 : GoUInt32)), ((120171 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120198 : GoUInt32)), ((120223 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120250 : GoUInt32)), ((120275 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120302 : GoUInt32)), ((120327 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120354 : GoUInt32)), ((120379 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120406 : GoUInt32)), ((120431 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120458 : GoUInt32)), ((120485 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120514 : GoUInt32)), ((120538 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120540 : GoUInt32)), ((120545 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120572 : GoUInt32)), ((120596 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120598 : GoUInt32)), ((120603 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120630 : GoUInt32)), ((120654 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120656 : GoUInt32)), ((120661 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120688 : GoUInt32)), ((120712 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120714 : GoUInt32)), ((120719 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120746 : GoUInt32)), ((120770 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120772 : GoUInt32)), ((120777 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120779 : GoUInt32)), ((125218 : GoUInt32)), ((4439 : GoUInt32))).__copy__(),
new Range32(((125219 : GoUInt32)), ((125251 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((4 : GoInt)) } : RangeTable)));
var ll : Pointer<RangeTable> = __Ll;
var __Yezidi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69248 : GoUInt32)), ((69289 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69291 : GoUInt32)), ((69293 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69296 : GoUInt32)), ((69297 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var yezidi : Pointer<RangeTable> = __Yezidi;
var __Lm : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((688 : GoUInt16)), ((705 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((710 : GoUInt16)), ((721 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((736 : GoUInt16)), ((740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((748 : GoUInt16)), ((750 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((884 : GoUInt16)), ((890 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((1369 : GoUInt16)), ((1600 : GoUInt16)), ((231 : GoUInt16))).__copy__(),
new Range16(((1765 : GoUInt16)), ((1766 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2036 : GoUInt16)), ((2037 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2042 : GoUInt16)), ((2074 : GoUInt16)), ((32 : GoUInt16))).__copy__(),
new Range16(((2084 : GoUInt16)), ((2088 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2417 : GoUInt16)), ((3654 : GoUInt16)), ((1237 : GoUInt16))).__copy__(),
new Range16(((3782 : GoUInt16)), ((4348 : GoUInt16)), ((566 : GoUInt16))).__copy__(),
new Range16(((6103 : GoUInt16)), ((6211 : GoUInt16)), ((108 : GoUInt16))).__copy__(),
new Range16(((6823 : GoUInt16)), ((7288 : GoUInt16)), ((465 : GoUInt16))).__copy__(),
new Range16(((7289 : GoUInt16)), ((7293 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7468 : GoUInt16)), ((7530 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7544 : GoUInt16)), ((7579 : GoUInt16)), ((35 : GoUInt16))).__copy__(),
new Range16(((7580 : GoUInt16)), ((7615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8305 : GoUInt16)), ((8319 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((8336 : GoUInt16)), ((8348 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11388 : GoUInt16)), ((11389 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11631 : GoUInt16)), ((11823 : GoUInt16)), ((192 : GoUInt16))).__copy__(),
new Range16(((12293 : GoUInt16)), ((12337 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((12338 : GoUInt16)), ((12341 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12347 : GoUInt16)), ((12445 : GoUInt16)), ((98 : GoUInt16))).__copy__(),
new Range16(((12446 : GoUInt16)), ((12540 : GoUInt16)), ((94 : GoUInt16))).__copy__(),
new Range16(((12541 : GoUInt16)), ((12542 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((40981 : GoUInt16)), ((42232 : GoUInt16)), ((1251 : GoUInt16))).__copy__(),
new Range16(((42233 : GoUInt16)), ((42237 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42508 : GoUInt16)), ((42623 : GoUInt16)), ((115 : GoUInt16))).__copy__(),
new Range16(((42652 : GoUInt16)), ((42653 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42775 : GoUInt16)), ((42783 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42864 : GoUInt16)), ((42888 : GoUInt16)), ((24 : GoUInt16))).__copy__(),
new Range16(((43000 : GoUInt16)), ((43001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43471 : GoUInt16)), ((43494 : GoUInt16)), ((23 : GoUInt16))).__copy__(),
new Range16(((43632 : GoUInt16)), ((43741 : GoUInt16)), ((109 : GoUInt16))).__copy__(),
new Range16(((43763 : GoUInt16)), ((43764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43868 : GoUInt16)), ((43871 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43881 : GoUInt16)), ((65392 : GoUInt16)), ((21511 : GoUInt16))).__copy__(),
new Range16(((65438 : GoUInt16)), ((65439 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((92992 : GoUInt32)), ((92995 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((94099 : GoUInt32)), ((94111 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((94176 : GoUInt32)), ((94177 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((94179 : GoUInt32)), ((123191 : GoUInt32)), ((29012 : GoUInt32))).__copy__(), new Range32(((123192 : GoUInt32)), ((123197 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125259 : GoUInt32)), ((125259 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var lm : Pointer<RangeTable> = __Lm;
var __Yi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((40960 : GoUInt16)), ((42124 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((42128 : GoUInt16)), ((42182 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __White_Space : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((9 : GoUInt16)), ((13 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((32 : GoUInt16)), ((133 : GoUInt16)), ((101 : GoUInt16))).__copy__(), new Range16(((160 : GoUInt16)), ((5760 : GoUInt16)), ((5600 : GoUInt16))).__copy__(), new Range16(((8192 : GoUInt16)), ((8202 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8232 : GoUInt16)), ((8233 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8239 : GoUInt16)), ((8287 : GoUInt16)), ((48 : GoUInt16))).__copy__(), new Range16(((12288 : GoUInt16)), ((12288 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((2 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var white_Space : Pointer<RangeTable> = __White_Space;
var __Armenian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1329 : GoUInt16)), ((1366 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1369 : GoUInt16)), ((1418 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1421 : GoUInt16)), ((1423 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64275 : GoUInt16)), ((64279 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var armenian : Pointer<RangeTable> = __Armenian;
var __Sora_Sompeng : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69840 : GoUInt32)), ((69864 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69872 : GoUInt32)), ((69881 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var sora_Sompeng : Pointer<RangeTable> = __Sora_Sompeng;
var __Lo : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((170 : GoUInt16)), ((186 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((443 : GoUInt16)), ((448 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((449 : GoUInt16)), ((451 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((660 : GoUInt16)), ((1488 : GoUInt16)), ((828 : GoUInt16))).__copy__(),
new Range16(((1489 : GoUInt16)), ((1514 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1519 : GoUInt16)), ((1522 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1568 : GoUInt16)), ((1599 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1601 : GoUInt16)), ((1610 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1646 : GoUInt16)), ((1647 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1649 : GoUInt16)), ((1747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1749 : GoUInt16)), ((1774 : GoUInt16)), ((25 : GoUInt16))).__copy__(),
new Range16(((1775 : GoUInt16)), ((1786 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((1787 : GoUInt16)), ((1788 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1791 : GoUInt16)), ((1808 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((1810 : GoUInt16)), ((1839 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1869 : GoUInt16)), ((1957 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1969 : GoUInt16)), ((1994 : GoUInt16)), ((25 : GoUInt16))).__copy__(),
new Range16(((1995 : GoUInt16)), ((2026 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2048 : GoUInt16)), ((2069 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2112 : GoUInt16)), ((2136 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2144 : GoUInt16)), ((2154 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2208 : GoUInt16)), ((2228 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2230 : GoUInt16)), ((2247 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2308 : GoUInt16)), ((2361 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2365 : GoUInt16)), ((2384 : GoUInt16)), ((19 : GoUInt16))).__copy__(),
new Range16(((2392 : GoUInt16)), ((2401 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2418 : GoUInt16)), ((2432 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2437 : GoUInt16)), ((2444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2447 : GoUInt16)), ((2448 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2451 : GoUInt16)), ((2472 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2474 : GoUInt16)), ((2480 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2482 : GoUInt16)), ((2486 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2487 : GoUInt16)), ((2489 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2493 : GoUInt16)), ((2510 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((2524 : GoUInt16)), ((2525 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2527 : GoUInt16)), ((2529 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2544 : GoUInt16)), ((2545 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2556 : GoUInt16)), ((2565 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((2566 : GoUInt16)), ((2570 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2575 : GoUInt16)), ((2576 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2579 : GoUInt16)), ((2600 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2602 : GoUInt16)), ((2608 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2610 : GoUInt16)), ((2611 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2613 : GoUInt16)), ((2614 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2616 : GoUInt16)), ((2617 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2649 : GoUInt16)), ((2652 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2654 : GoUInt16)), ((2674 : GoUInt16)), ((20 : GoUInt16))).__copy__(),
new Range16(((2675 : GoUInt16)), ((2676 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2693 : GoUInt16)), ((2701 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2703 : GoUInt16)), ((2705 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2707 : GoUInt16)), ((2728 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2730 : GoUInt16)), ((2736 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2738 : GoUInt16)), ((2739 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2741 : GoUInt16)), ((2745 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2749 : GoUInt16)), ((2768 : GoUInt16)), ((19 : GoUInt16))).__copy__(),
new Range16(((2784 : GoUInt16)), ((2785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2809 : GoUInt16)), ((2821 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((2822 : GoUInt16)), ((2828 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2831 : GoUInt16)), ((2832 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2835 : GoUInt16)), ((2856 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2858 : GoUInt16)), ((2864 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2866 : GoUInt16)), ((2867 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2869 : GoUInt16)), ((2873 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2877 : GoUInt16)), ((2908 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((2909 : GoUInt16)), ((2911 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2912 : GoUInt16)), ((2913 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2929 : GoUInt16)), ((2947 : GoUInt16)), ((18 : GoUInt16))).__copy__(),
new Range16(((2949 : GoUInt16)), ((2954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2958 : GoUInt16)), ((2960 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2962 : GoUInt16)), ((2965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2969 : GoUInt16)), ((2970 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2972 : GoUInt16)), ((2974 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2975 : GoUInt16)), ((2979 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2980 : GoUInt16)), ((2984 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2985 : GoUInt16)), ((2986 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2990 : GoUInt16)), ((3001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3024 : GoUInt16)), ((3077 : GoUInt16)), ((53 : GoUInt16))).__copy__(),
new Range16(((3078 : GoUInt16)), ((3084 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3086 : GoUInt16)), ((3088 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3090 : GoUInt16)), ((3112 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3114 : GoUInt16)), ((3129 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3133 : GoUInt16)), ((3160 : GoUInt16)), ((27 : GoUInt16))).__copy__(),
new Range16(((3161 : GoUInt16)), ((3162 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3168 : GoUInt16)), ((3169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3200 : GoUInt16)), ((3205 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((3206 : GoUInt16)), ((3212 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3214 : GoUInt16)), ((3216 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3218 : GoUInt16)), ((3240 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3242 : GoUInt16)), ((3251 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3253 : GoUInt16)), ((3257 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3261 : GoUInt16)), ((3294 : GoUInt16)), ((33 : GoUInt16))).__copy__(),
new Range16(((3296 : GoUInt16)), ((3297 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3313 : GoUInt16)), ((3314 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3332 : GoUInt16)), ((3340 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3342 : GoUInt16)), ((3344 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3346 : GoUInt16)), ((3386 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3389 : GoUInt16)), ((3406 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((3412 : GoUInt16)), ((3414 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3423 : GoUInt16)), ((3425 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3450 : GoUInt16)), ((3455 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3461 : GoUInt16)), ((3478 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3482 : GoUInt16)), ((3505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3507 : GoUInt16)), ((3515 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3517 : GoUInt16)), ((3520 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3521 : GoUInt16)), ((3526 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3585 : GoUInt16)), ((3632 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3634 : GoUInt16)), ((3635 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3648 : GoUInt16)), ((3653 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3713 : GoUInt16)), ((3714 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3716 : GoUInt16)), ((3718 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3719 : GoUInt16)), ((3722 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3724 : GoUInt16)), ((3747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3749 : GoUInt16)), ((3751 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3752 : GoUInt16)), ((3760 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3762 : GoUInt16)), ((3763 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3773 : GoUInt16)), ((3776 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3777 : GoUInt16)), ((3780 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3804 : GoUInt16)), ((3807 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3840 : GoUInt16)), ((3904 : GoUInt16)), ((64 : GoUInt16))).__copy__(),
new Range16(((3905 : GoUInt16)), ((3911 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3913 : GoUInt16)), ((3948 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3976 : GoUInt16)), ((3980 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4096 : GoUInt16)), ((4138 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4159 : GoUInt16)), ((4176 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((4177 : GoUInt16)), ((4181 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4186 : GoUInt16)), ((4189 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4193 : GoUInt16)), ((4197 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((4198 : GoUInt16)), ((4206 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((4207 : GoUInt16)), ((4208 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4213 : GoUInt16)), ((4225 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4238 : GoUInt16)), ((4352 : GoUInt16)), ((114 : GoUInt16))).__copy__(),
new Range16(((4353 : GoUInt16)), ((4680 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4682 : GoUInt16)), ((4685 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4688 : GoUInt16)), ((4694 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4696 : GoUInt16)), ((4698 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4699 : GoUInt16)), ((4701 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4704 : GoUInt16)), ((4744 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4746 : GoUInt16)), ((4749 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4752 : GoUInt16)), ((4784 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4786 : GoUInt16)), ((4789 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4792 : GoUInt16)), ((4798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4800 : GoUInt16)), ((4802 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4803 : GoUInt16)), ((4805 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4808 : GoUInt16)), ((4822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4824 : GoUInt16)), ((4880 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4882 : GoUInt16)), ((4885 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4888 : GoUInt16)), ((4954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4992 : GoUInt16)), ((5007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5121 : GoUInt16)), ((5740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5743 : GoUInt16)), ((5759 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5761 : GoUInt16)), ((5786 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5792 : GoUInt16)), ((5866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5873 : GoUInt16)), ((5880 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5888 : GoUInt16)), ((5900 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5902 : GoUInt16)), ((5905 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5920 : GoUInt16)), ((5937 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5952 : GoUInt16)), ((5969 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5984 : GoUInt16)), ((5996 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5998 : GoUInt16)), ((6000 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6016 : GoUInt16)), ((6067 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6108 : GoUInt16)), ((6176 : GoUInt16)), ((68 : GoUInt16))).__copy__(),
new Range16(((6177 : GoUInt16)), ((6210 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6212 : GoUInt16)), ((6264 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6272 : GoUInt16)), ((6276 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6279 : GoUInt16)), ((6312 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6314 : GoUInt16)), ((6320 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((6321 : GoUInt16)), ((6389 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6400 : GoUInt16)), ((6430 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6480 : GoUInt16)), ((6509 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6512 : GoUInt16)), ((6516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6528 : GoUInt16)), ((6571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6576 : GoUInt16)), ((6601 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6656 : GoUInt16)), ((6678 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6688 : GoUInt16)), ((6740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6917 : GoUInt16)), ((6963 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6981 : GoUInt16)), ((6987 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7043 : GoUInt16)), ((7072 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7086 : GoUInt16)), ((7087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7098 : GoUInt16)), ((7141 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7168 : GoUInt16)), ((7203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7245 : GoUInt16)), ((7247 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7258 : GoUInt16)), ((7287 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7401 : GoUInt16)), ((7404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7406 : GoUInt16)), ((7411 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7413 : GoUInt16)), ((7414 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7418 : GoUInt16)), ((8501 : GoUInt16)), ((1083 : GoUInt16))).__copy__(),
new Range16(((8502 : GoUInt16)), ((8504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11568 : GoUInt16)), ((11623 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11648 : GoUInt16)), ((11670 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11680 : GoUInt16)), ((11686 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11688 : GoUInt16)), ((11694 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11696 : GoUInt16)), ((11702 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11704 : GoUInt16)), ((11710 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11712 : GoUInt16)), ((11718 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11720 : GoUInt16)), ((11726 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11728 : GoUInt16)), ((11734 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11736 : GoUInt16)), ((11742 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12294 : GoUInt16)), ((12348 : GoUInt16)), ((54 : GoUInt16))).__copy__(),
new Range16(((12353 : GoUInt16)), ((12438 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12447 : GoUInt16)), ((12449 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12450 : GoUInt16)), ((12538 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12543 : GoUInt16)), ((12549 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((12550 : GoUInt16)), ((12591 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12593 : GoUInt16)), ((12686 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12704 : GoUInt16)), ((12735 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12784 : GoUInt16)), ((12799 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((13312 : GoUInt16)), ((19903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((19968 : GoUInt16)), ((40956 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((40960 : GoUInt16)), ((40980 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((40982 : GoUInt16)), ((42124 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42192 : GoUInt16)), ((42231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42240 : GoUInt16)), ((42507 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42512 : GoUInt16)), ((42527 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42538 : GoUInt16)), ((42539 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42606 : GoUInt16)), ((42656 : GoUInt16)), ((50 : GoUInt16))).__copy__(),
new Range16(((42657 : GoUInt16)), ((42725 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42895 : GoUInt16)), ((42999 : GoUInt16)), ((104 : GoUInt16))).__copy__(),
new Range16(((43003 : GoUInt16)), ((43009 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43011 : GoUInt16)), ((43013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43015 : GoUInt16)), ((43018 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43020 : GoUInt16)), ((43042 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43072 : GoUInt16)), ((43123 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43138 : GoUInt16)), ((43187 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43250 : GoUInt16)), ((43255 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43259 : GoUInt16)), ((43261 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((43262 : GoUInt16)), ((43274 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((43275 : GoUInt16)), ((43301 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43312 : GoUInt16)), ((43334 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43360 : GoUInt16)), ((43388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43396 : GoUInt16)), ((43442 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43488 : GoUInt16)), ((43492 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43495 : GoUInt16)), ((43503 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43514 : GoUInt16)), ((43518 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43520 : GoUInt16)), ((43560 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43584 : GoUInt16)), ((43586 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43588 : GoUInt16)), ((43595 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43616 : GoUInt16)), ((43631 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43633 : GoUInt16)), ((43638 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43642 : GoUInt16)), ((43646 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43647 : GoUInt16)), ((43695 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43697 : GoUInt16)), ((43701 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43702 : GoUInt16)), ((43705 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((43706 : GoUInt16)), ((43709 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43712 : GoUInt16)), ((43714 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((43739 : GoUInt16)), ((43740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43744 : GoUInt16)), ((43754 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43762 : GoUInt16)), ((43777 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((43778 : GoUInt16)), ((43782 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43785 : GoUInt16)), ((43790 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43793 : GoUInt16)), ((43798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43808 : GoUInt16)), ((43814 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43816 : GoUInt16)), ((43822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43968 : GoUInt16)), ((44002 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44032 : GoUInt16)), ((55203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55216 : GoUInt16)), ((55238 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55243 : GoUInt16)), ((55291 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((63744 : GoUInt16)), ((64109 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64112 : GoUInt16)), ((64217 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64285 : GoUInt16)), ((64287 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64288 : GoUInt16)), ((64296 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64298 : GoUInt16)), ((64310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64312 : GoUInt16)), ((64316 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64318 : GoUInt16)), ((64320 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64321 : GoUInt16)), ((64323 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64324 : GoUInt16)), ((64326 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64327 : GoUInt16)), ((64433 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64467 : GoUInt16)), ((64829 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64848 : GoUInt16)), ((64911 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64914 : GoUInt16)), ((64967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65008 : GoUInt16)), ((65019 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65136 : GoUInt16)), ((65140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65142 : GoUInt16)), ((65276 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65382 : GoUInt16)), ((65391 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65393 : GoUInt16)), ((65437 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65440 : GoUInt16)), ((65470 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65474 : GoUInt16)), ((65479 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65482 : GoUInt16)), ((65487 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65490 : GoUInt16)), ((65495 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65498 : GoUInt16)), ((65500 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65536 : GoUInt32)), ((65547 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65549 : GoUInt32)), ((65574 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65576 : GoUInt32)), ((65594 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65596 : GoUInt32)), ((65597 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65599 : GoUInt32)), ((65613 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65616 : GoUInt32)), ((65629 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65664 : GoUInt32)), ((65786 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66176 : GoUInt32)), ((66204 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66208 : GoUInt32)), ((66256 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66304 : GoUInt32)), ((66335 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66349 : GoUInt32)), ((66368 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66370 : GoUInt32)), ((66377 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66384 : GoUInt32)), ((66421 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66432 : GoUInt32)), ((66461 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66464 : GoUInt32)), ((66499 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66504 : GoUInt32)), ((66511 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66640 : GoUInt32)), ((66717 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66816 : GoUInt32)), ((66855 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66864 : GoUInt32)), ((66915 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67072 : GoUInt32)), ((67382 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67392 : GoUInt32)), ((67413 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67424 : GoUInt32)), ((67431 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67584 : GoUInt32)), ((67589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67592 : GoUInt32)), ((67594 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((67595 : GoUInt32)), ((67637 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67639 : GoUInt32)), ((67640 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67644 : GoUInt32)), ((67647 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((67648 : GoUInt32)), ((67669 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67680 : GoUInt32)), ((67702 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67712 : GoUInt32)), ((67742 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67808 : GoUInt32)), ((67826 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67828 : GoUInt32)), ((67829 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67840 : GoUInt32)), ((67861 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67872 : GoUInt32)), ((67897 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67968 : GoUInt32)), ((68023 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68030 : GoUInt32)), ((68031 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68096 : GoUInt32)), ((68112 : GoUInt32)), ((16 : GoUInt32))).__copy__(),
new Range32(((68113 : GoUInt32)), ((68115 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68117 : GoUInt32)), ((68119 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68121 : GoUInt32)), ((68149 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68192 : GoUInt32)), ((68220 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68224 : GoUInt32)), ((68252 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68288 : GoUInt32)), ((68295 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68297 : GoUInt32)), ((68324 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68352 : GoUInt32)), ((68405 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68416 : GoUInt32)), ((68437 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68448 : GoUInt32)), ((68466 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68480 : GoUInt32)), ((68497 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68608 : GoUInt32)), ((68680 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68864 : GoUInt32)), ((68899 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69248 : GoUInt32)), ((69289 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69296 : GoUInt32)), ((69297 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69376 : GoUInt32)), ((69404 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69415 : GoUInt32)), ((69424 : GoUInt32)), ((9 : GoUInt32))).__copy__(),
new Range32(((69425 : GoUInt32)), ((69445 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69552 : GoUInt32)), ((69572 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69600 : GoUInt32)), ((69622 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69635 : GoUInt32)), ((69687 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69763 : GoUInt32)), ((69807 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69840 : GoUInt32)), ((69864 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69891 : GoUInt32)), ((69926 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69956 : GoUInt32)), ((69959 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((69968 : GoUInt32)), ((70002 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70006 : GoUInt32)), ((70019 : GoUInt32)), ((13 : GoUInt32))).__copy__(),
new Range32(((70020 : GoUInt32)), ((70066 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70081 : GoUInt32)), ((70084 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70106 : GoUInt32)), ((70108 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70144 : GoUInt32)), ((70161 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70163 : GoUInt32)), ((70187 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70272 : GoUInt32)), ((70278 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70280 : GoUInt32)), ((70282 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70283 : GoUInt32)), ((70285 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70287 : GoUInt32)), ((70301 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70303 : GoUInt32)), ((70312 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70320 : GoUInt32)), ((70366 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70405 : GoUInt32)), ((70412 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70415 : GoUInt32)), ((70416 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70419 : GoUInt32)), ((70440 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70442 : GoUInt32)), ((70448 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70450 : GoUInt32)), ((70451 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70453 : GoUInt32)), ((70457 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70461 : GoUInt32)), ((70480 : GoUInt32)), ((19 : GoUInt32))).__copy__(),
new Range32(((70493 : GoUInt32)), ((70497 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70656 : GoUInt32)), ((70708 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70727 : GoUInt32)), ((70730 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70751 : GoUInt32)), ((70753 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70784 : GoUInt32)), ((70831 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70852 : GoUInt32)), ((70853 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70855 : GoUInt32)), ((71040 : GoUInt32)), ((185 : GoUInt32))).__copy__(),
new Range32(((71041 : GoUInt32)), ((71086 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71128 : GoUInt32)), ((71131 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71168 : GoUInt32)), ((71215 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71236 : GoUInt32)), ((71296 : GoUInt32)), ((60 : GoUInt32))).__copy__(),
new Range32(((71297 : GoUInt32)), ((71338 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71352 : GoUInt32)), ((71424 : GoUInt32)), ((72 : GoUInt32))).__copy__(),
new Range32(((71425 : GoUInt32)), ((71450 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71680 : GoUInt32)), ((71723 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71935 : GoUInt32)), ((71942 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71945 : GoUInt32)), ((71948 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((71949 : GoUInt32)), ((71955 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71957 : GoUInt32)), ((71958 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71960 : GoUInt32)), ((71983 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71999 : GoUInt32)), ((72001 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72096 : GoUInt32)), ((72103 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72106 : GoUInt32)), ((72144 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72161 : GoUInt32)), ((72163 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72192 : GoUInt32)), ((72203 : GoUInt32)), ((11 : GoUInt32))).__copy__(),
new Range32(((72204 : GoUInt32)), ((72242 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72250 : GoUInt32)), ((72272 : GoUInt32)), ((22 : GoUInt32))).__copy__(),
new Range32(((72284 : GoUInt32)), ((72329 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72349 : GoUInt32)), ((72384 : GoUInt32)), ((35 : GoUInt32))).__copy__(),
new Range32(((72385 : GoUInt32)), ((72440 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72704 : GoUInt32)), ((72712 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72714 : GoUInt32)), ((72750 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72768 : GoUInt32)), ((72818 : GoUInt32)), ((50 : GoUInt32))).__copy__(),
new Range32(((72819 : GoUInt32)), ((72847 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72960 : GoUInt32)), ((72966 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72968 : GoUInt32)), ((72969 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72971 : GoUInt32)), ((73008 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73030 : GoUInt32)), ((73056 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((73057 : GoUInt32)), ((73061 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73063 : GoUInt32)), ((73064 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73066 : GoUInt32)), ((73097 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73112 : GoUInt32)), ((73440 : GoUInt32)), ((328 : GoUInt32))).__copy__(),
new Range32(((73441 : GoUInt32)), ((73458 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73648 : GoUInt32)), ((73728 : GoUInt32)), ((80 : GoUInt32))).__copy__(),
new Range32(((73729 : GoUInt32)), ((74649 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((74880 : GoUInt32)), ((75075 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((77824 : GoUInt32)), ((78894 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((82944 : GoUInt32)), ((83526 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92160 : GoUInt32)), ((92728 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92736 : GoUInt32)), ((92766 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92880 : GoUInt32)), ((92909 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92928 : GoUInt32)), ((92975 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93027 : GoUInt32)), ((93047 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93053 : GoUInt32)), ((93071 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93952 : GoUInt32)), ((94026 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94032 : GoUInt32)), ((94208 : GoUInt32)), ((176 : GoUInt32))).__copy__(),
new Range32(((94209 : GoUInt32)), ((100343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((100352 : GoUInt32)), ((101589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((101632 : GoUInt32)), ((101640 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110592 : GoUInt32)), ((110878 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110928 : GoUInt32)), ((110930 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110948 : GoUInt32)), ((110951 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110960 : GoUInt32)), ((111355 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113664 : GoUInt32)), ((113770 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113776 : GoUInt32)), ((113788 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113792 : GoUInt32)), ((113800 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113808 : GoUInt32)), ((113817 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123136 : GoUInt32)), ((123180 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123214 : GoUInt32)), ((123584 : GoUInt32)), ((370 : GoUInt32))).__copy__(),
new Range32(((123585 : GoUInt32)), ((123627 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((124928 : GoUInt32)), ((125124 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126464 : GoUInt32)), ((126467 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126469 : GoUInt32)), ((126495 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126497 : GoUInt32)), ((126498 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126500 : GoUInt32)), ((126503 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126505 : GoUInt32)), ((126514 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126516 : GoUInt32)), ((126519 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126521 : GoUInt32)), ((126523 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126530 : GoUInt32)), ((126535 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((126537 : GoUInt32)), ((126541 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126542 : GoUInt32)), ((126543 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126545 : GoUInt32)), ((126546 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126548 : GoUInt32)), ((126551 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126553 : GoUInt32)), ((126561 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126562 : GoUInt32)), ((126564 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126567 : GoUInt32)), ((126570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126572 : GoUInt32)), ((126578 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126580 : GoUInt32)), ((126583 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126585 : GoUInt32)), ((126588 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126590 : GoUInt32)), ((126592 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126593 : GoUInt32)), ((126601 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126603 : GoUInt32)), ((126619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126625 : GoUInt32)), ((126627 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126629 : GoUInt32)), ((126633 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126635 : GoUInt32)), ((126651 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((131072 : GoUInt32)), ((173789 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((173824 : GoUInt32)), ((177972 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((177984 : GoUInt32)), ((178205 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((178208 : GoUInt32)), ((183969 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((183984 : GoUInt32)), ((191456 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((194560 : GoUInt32)), ((195101 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((196608 : GoUInt32)), ((201546 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((1 : GoInt)) } : RangeTable)));
var lo : Pointer<RangeTable> = __Lo;
var __Dash : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((45 : GoUInt16)), ((1418 : GoUInt16)), ((1373 : GoUInt16))).__copy__(),
new Range16(((1470 : GoUInt16)), ((5120 : GoUInt16)), ((3650 : GoUInt16))).__copy__(),
new Range16(((6150 : GoUInt16)), ((8208 : GoUInt16)), ((2058 : GoUInt16))).__copy__(),
new Range16(((8209 : GoUInt16)), ((8213 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8275 : GoUInt16)), ((8315 : GoUInt16)), ((40 : GoUInt16))).__copy__(),
new Range16(((8331 : GoUInt16)), ((8722 : GoUInt16)), ((391 : GoUInt16))).__copy__(),
new Range16(((11799 : GoUInt16)), ((11802 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11834 : GoUInt16)), ((11835 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11840 : GoUInt16)), ((12316 : GoUInt16)), ((476 : GoUInt16))).__copy__(),
new Range16(((12336 : GoUInt16)), ((12448 : GoUInt16)), ((112 : GoUInt16))).__copy__(),
new Range16(((65073 : GoUInt16)), ((65074 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65112 : GoUInt16)), ((65123 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((65293 : GoUInt16)), ((65293 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((69293 : GoUInt32)), ((69293 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var dash : Pointer<RangeTable> = __Dash;
var __Lt : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((453 : GoUInt16)), ((459 : GoUInt16)), ((3 : GoUInt16))).__copy__(), new Range16(((498 : GoUInt16)), ((8072 : GoUInt16)), ((7574 : GoUInt16))).__copy__(), new Range16(((8073 : GoUInt16)), ((8079 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8088 : GoUInt16)), ((8095 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8104 : GoUInt16)), ((8111 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8124 : GoUInt16)), ((8140 : GoUInt16)), ((16 : GoUInt16))).__copy__(), new Range16(((8188 : GoUInt16)), ((8188 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var lt : Pointer<RangeTable> = __Lt;
var __Lu : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((65 : GoUInt16)), ((90 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((192 : GoUInt16)), ((214 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((216 : GoUInt16)), ((222 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((256 : GoUInt16)), ((310 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((313 : GoUInt16)), ((327 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((330 : GoUInt16)), ((376 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((377 : GoUInt16)), ((381 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((385 : GoUInt16)), ((386 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((388 : GoUInt16)), ((390 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((391 : GoUInt16)), ((393 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((394 : GoUInt16)), ((395 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((398 : GoUInt16)), ((401 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((403 : GoUInt16)), ((404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((406 : GoUInt16)), ((408 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((412 : GoUInt16)), ((413 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((415 : GoUInt16)), ((416 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((418 : GoUInt16)), ((422 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((423 : GoUInt16)), ((425 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((428 : GoUInt16)), ((430 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((431 : GoUInt16)), ((433 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((434 : GoUInt16)), ((435 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((437 : GoUInt16)), ((439 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((440 : GoUInt16)), ((444 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((452 : GoUInt16)), ((461 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((463 : GoUInt16)), ((475 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((478 : GoUInt16)), ((494 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((497 : GoUInt16)), ((500 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((502 : GoUInt16)), ((504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((506 : GoUInt16)), ((562 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((570 : GoUInt16)), ((571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((573 : GoUInt16)), ((574 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((577 : GoUInt16)), ((579 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((580 : GoUInt16)), ((582 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((584 : GoUInt16)), ((590 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((880 : GoUInt16)), ((882 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((886 : GoUInt16)), ((895 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((902 : GoUInt16)), ((904 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((905 : GoUInt16)), ((906 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((908 : GoUInt16)), ((910 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((911 : GoUInt16)), ((913 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((914 : GoUInt16)), ((929 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((931 : GoUInt16)), ((939 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((975 : GoUInt16)), ((978 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((979 : GoUInt16)), ((980 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((984 : GoUInt16)), ((1006 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1012 : GoUInt16)), ((1015 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1017 : GoUInt16)), ((1018 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1021 : GoUInt16)), ((1071 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1120 : GoUInt16)), ((1152 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1162 : GoUInt16)), ((1216 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1217 : GoUInt16)), ((1229 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1232 : GoUInt16)), ((1326 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1329 : GoUInt16)), ((1366 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4256 : GoUInt16)), ((4293 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4295 : GoUInt16)), ((4301 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((5024 : GoUInt16)), ((5109 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7312 : GoUInt16)), ((7354 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7357 : GoUInt16)), ((7359 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7680 : GoUInt16)), ((7828 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7838 : GoUInt16)), ((7934 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7944 : GoUInt16)), ((7951 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7960 : GoUInt16)), ((7965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7976 : GoUInt16)), ((7983 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7992 : GoUInt16)), ((7999 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8008 : GoUInt16)), ((8013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8025 : GoUInt16)), ((8031 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8040 : GoUInt16)), ((8047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8120 : GoUInt16)), ((8123 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8136 : GoUInt16)), ((8139 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8152 : GoUInt16)), ((8155 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8168 : GoUInt16)), ((8172 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8184 : GoUInt16)), ((8187 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8450 : GoUInt16)), ((8455 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8459 : GoUInt16)), ((8461 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8464 : GoUInt16)), ((8466 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8469 : GoUInt16)), ((8473 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8474 : GoUInt16)), ((8477 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8484 : GoUInt16)), ((8490 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8491 : GoUInt16)), ((8493 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8496 : GoUInt16)), ((8499 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8510 : GoUInt16)), ((8511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8517 : GoUInt16)), ((8579 : GoUInt16)), ((62 : GoUInt16))).__copy__(),
new Range16(((11264 : GoUInt16)), ((11310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11360 : GoUInt16)), ((11362 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11363 : GoUInt16)), ((11364 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11367 : GoUInt16)), ((11373 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11374 : GoUInt16)), ((11376 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11378 : GoUInt16)), ((11381 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11390 : GoUInt16)), ((11392 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11394 : GoUInt16)), ((11490 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11499 : GoUInt16)), ((11501 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11506 : GoUInt16)), ((42560 : GoUInt16)), ((31054 : GoUInt16))).__copy__(),
new Range16(((42562 : GoUInt16)), ((42604 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42624 : GoUInt16)), ((42650 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42786 : GoUInt16)), ((42798 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42802 : GoUInt16)), ((42862 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42873 : GoUInt16)), ((42877 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42878 : GoUInt16)), ((42886 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42891 : GoUInt16)), ((42893 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42896 : GoUInt16)), ((42898 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42902 : GoUInt16)), ((42922 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42923 : GoUInt16)), ((42926 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42928 : GoUInt16)), ((42932 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42934 : GoUInt16)), ((42942 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42946 : GoUInt16)), ((42948 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42949 : GoUInt16)), ((42951 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42953 : GoUInt16)), ((42997 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((65313 : GoUInt16)), ((65338 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66560 : GoUInt32)), ((66599 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66736 : GoUInt32)), ((66771 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68736 : GoUInt32)), ((68786 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71840 : GoUInt32)), ((71871 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93760 : GoUInt32)), ((93791 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119808 : GoUInt32)), ((119833 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119860 : GoUInt32)), ((119885 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119912 : GoUInt32)), ((119937 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119964 : GoUInt32)), ((119966 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((119967 : GoUInt32)), ((119973 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119974 : GoUInt32)), ((119977 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119978 : GoUInt32)), ((119980 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119982 : GoUInt32)), ((119989 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120016 : GoUInt32)), ((120041 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120068 : GoUInt32)), ((120069 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120071 : GoUInt32)), ((120074 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120077 : GoUInt32)), ((120084 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120086 : GoUInt32)), ((120092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120120 : GoUInt32)), ((120121 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120123 : GoUInt32)), ((120126 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120128 : GoUInt32)), ((120132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120134 : GoUInt32)), ((120138 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((120139 : GoUInt32)), ((120144 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120172 : GoUInt32)), ((120197 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120224 : GoUInt32)), ((120249 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120276 : GoUInt32)), ((120301 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120328 : GoUInt32)), ((120353 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120380 : GoUInt32)), ((120405 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120432 : GoUInt32)), ((120457 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120488 : GoUInt32)), ((120512 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120546 : GoUInt32)), ((120570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120604 : GoUInt32)), ((120628 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120662 : GoUInt32)), ((120686 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120720 : GoUInt32)), ((120744 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120778 : GoUInt32)), ((125184 : GoUInt32)), ((4406 : GoUInt32))).__copy__(),
new Range32(((125185 : GoUInt32)), ((125217 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((3 : GoInt)) } : RangeTable)));
var lu : Pointer<RangeTable> = __Lu;
var __Kayah_Li : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43264 : GoUInt16)), ((43309 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43311 : GoUInt16)), ((43311 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var kayah_Li : Pointer<RangeTable> = __Kayah_Li;
var __IDS_Binary_Operator : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((12272 : GoUInt16)), ((12273 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12276 : GoUInt16)), ((12283 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Khudawadi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((70320 : GoUInt32)), ((70378 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70384 : GoUInt32)), ((70393 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Makasar : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((73440 : GoUInt32)), ((73464 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var makasar : Pointer<RangeTable> = __Makasar;
var __Zanabazar_Square : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72192 : GoUInt32)), ((72263 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var zanabazar_Square : Pointer<RangeTable> = __Zanabazar_Square;
var __S : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((36 : GoUInt16)), ((43 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((60 : GoUInt16)), ((62 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((94 : GoUInt16)), ((96 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((124 : GoUInt16)), ((126 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((162 : GoUInt16)), ((166 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((168 : GoUInt16)), ((169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((172 : GoUInt16)), ((174 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((175 : GoUInt16)), ((177 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((180 : GoUInt16)), ((184 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((215 : GoUInt16)), ((247 : GoUInt16)), ((32 : GoUInt16))).__copy__(),
new Range16(((706 : GoUInt16)), ((709 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((722 : GoUInt16)), ((735 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((741 : GoUInt16)), ((747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((749 : GoUInt16)), ((751 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((752 : GoUInt16)), ((767 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((885 : GoUInt16)), ((900 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((901 : GoUInt16)), ((1014 : GoUInt16)), ((113 : GoUInt16))).__copy__(),
new Range16(((1154 : GoUInt16)), ((1421 : GoUInt16)), ((267 : GoUInt16))).__copy__(),
new Range16(((1422 : GoUInt16)), ((1423 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1542 : GoUInt16)), ((1544 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1547 : GoUInt16)), ((1550 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1551 : GoUInt16)), ((1758 : GoUInt16)), ((207 : GoUInt16))).__copy__(),
new Range16(((1769 : GoUInt16)), ((1789 : GoUInt16)), ((20 : GoUInt16))).__copy__(),
new Range16(((1790 : GoUInt16)), ((2038 : GoUInt16)), ((248 : GoUInt16))).__copy__(),
new Range16(((2046 : GoUInt16)), ((2047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2546 : GoUInt16)), ((2547 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2554 : GoUInt16)), ((2555 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2801 : GoUInt16)), ((2928 : GoUInt16)), ((127 : GoUInt16))).__copy__(),
new Range16(((3059 : GoUInt16)), ((3066 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3199 : GoUInt16)), ((3407 : GoUInt16)), ((208 : GoUInt16))).__copy__(),
new Range16(((3449 : GoUInt16)), ((3647 : GoUInt16)), ((198 : GoUInt16))).__copy__(),
new Range16(((3841 : GoUInt16)), ((3843 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3859 : GoUInt16)), ((3861 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3862 : GoUInt16)), ((3863 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3866 : GoUInt16)), ((3871 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3892 : GoUInt16)), ((3896 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4030 : GoUInt16)), ((4037 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4039 : GoUInt16)), ((4044 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4046 : GoUInt16)), ((4047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4053 : GoUInt16)), ((4056 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4254 : GoUInt16)), ((4255 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5008 : GoUInt16)), ((5017 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5741 : GoUInt16)), ((6107 : GoUInt16)), ((366 : GoUInt16))).__copy__(),
new Range16(((6464 : GoUInt16)), ((6622 : GoUInt16)), ((158 : GoUInt16))).__copy__(),
new Range16(((6623 : GoUInt16)), ((6655 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7009 : GoUInt16)), ((7018 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7028 : GoUInt16)), ((7036 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8125 : GoUInt16)), ((8127 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8128 : GoUInt16)), ((8129 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8141 : GoUInt16)), ((8143 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8157 : GoUInt16)), ((8159 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8173 : GoUInt16)), ((8175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8189 : GoUInt16)), ((8190 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8260 : GoUInt16)), ((8274 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((8314 : GoUInt16)), ((8316 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8330 : GoUInt16)), ((8332 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8352 : GoUInt16)), ((8383 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8448 : GoUInt16)), ((8449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8451 : GoUInt16)), ((8454 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8456 : GoUInt16)), ((8457 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8468 : GoUInt16)), ((8470 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8471 : GoUInt16)), ((8472 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8478 : GoUInt16)), ((8483 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8485 : GoUInt16)), ((8489 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8494 : GoUInt16)), ((8506 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((8507 : GoUInt16)), ((8512 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8513 : GoUInt16)), ((8516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8522 : GoUInt16)), ((8525 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8527 : GoUInt16)), ((8586 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((8587 : GoUInt16)), ((8592 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8593 : GoUInt16)), ((8967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8972 : GoUInt16)), ((9000 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9003 : GoUInt16)), ((9254 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9280 : GoUInt16)), ((9290 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9372 : GoUInt16)), ((9449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9472 : GoUInt16)), ((10087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10132 : GoUInt16)), ((10180 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10183 : GoUInt16)), ((10213 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10224 : GoUInt16)), ((10626 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10649 : GoUInt16)), ((10711 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10716 : GoUInt16)), ((10747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10750 : GoUInt16)), ((11123 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11126 : GoUInt16)), ((11157 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11159 : GoUInt16)), ((11263 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11493 : GoUInt16)), ((11498 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11856 : GoUInt16)), ((11857 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11904 : GoUInt16)), ((11929 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11931 : GoUInt16)), ((12019 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12032 : GoUInt16)), ((12245 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12272 : GoUInt16)), ((12283 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12292 : GoUInt16)), ((12306 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((12307 : GoUInt16)), ((12320 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((12342 : GoUInt16)), ((12343 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12350 : GoUInt16)), ((12351 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12443 : GoUInt16)), ((12444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12688 : GoUInt16)), ((12689 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12694 : GoUInt16)), ((12703 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12736 : GoUInt16)), ((12771 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12800 : GoUInt16)), ((12830 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12842 : GoUInt16)), ((12871 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12880 : GoUInt16)), ((12896 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((12897 : GoUInt16)), ((12927 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12938 : GoUInt16)), ((12976 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12992 : GoUInt16)), ((13311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((19904 : GoUInt16)), ((19967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42128 : GoUInt16)), ((42182 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42752 : GoUInt16)), ((42774 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42784 : GoUInt16)), ((42785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42889 : GoUInt16)), ((42890 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43048 : GoUInt16)), ((43051 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43062 : GoUInt16)), ((43065 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43639 : GoUInt16)), ((43641 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43867 : GoUInt16)), ((43882 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((43883 : GoUInt16)), ((64297 : GoUInt16)), ((20414 : GoUInt16))).__copy__(),
new Range16(((64434 : GoUInt16)), ((64449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65020 : GoUInt16)), ((65021 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65122 : GoUInt16)), ((65124 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65125 : GoUInt16)), ((65126 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65129 : GoUInt16)), ((65284 : GoUInt16)), ((155 : GoUInt16))).__copy__(),
new Range16(((65291 : GoUInt16)), ((65308 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((65309 : GoUInt16)), ((65310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65342 : GoUInt16)), ((65344 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65372 : GoUInt16)), ((65374 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65504 : GoUInt16)), ((65510 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65512 : GoUInt16)), ((65518 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65532 : GoUInt16)), ((65533 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65847 : GoUInt32)), ((65855 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65913 : GoUInt32)), ((65929 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65932 : GoUInt32)), ((65934 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65936 : GoUInt32)), ((65948 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65952 : GoUInt32)), ((66000 : GoUInt32)), ((48 : GoUInt32))).__copy__(),
new Range32(((66001 : GoUInt32)), ((66044 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67703 : GoUInt32)), ((67704 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68296 : GoUInt32)), ((71487 : GoUInt32)), ((3191 : GoUInt32))).__copy__(),
new Range32(((73685 : GoUInt32)), ((73713 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92988 : GoUInt32)), ((92991 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92997 : GoUInt32)), ((113820 : GoUInt32)), ((20823 : GoUInt32))).__copy__(),
new Range32(((118784 : GoUInt32)), ((119029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119040 : GoUInt32)), ((119078 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119081 : GoUInt32)), ((119140 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119146 : GoUInt32)), ((119148 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119171 : GoUInt32)), ((119172 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119180 : GoUInt32)), ((119209 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119214 : GoUInt32)), ((119272 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119296 : GoUInt32)), ((119361 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119365 : GoUInt32)), ((119552 : GoUInt32)), ((187 : GoUInt32))).__copy__(),
new Range32(((119553 : GoUInt32)), ((119638 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120513 : GoUInt32)), ((120539 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((120571 : GoUInt32)), ((120597 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((120629 : GoUInt32)), ((120655 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((120687 : GoUInt32)), ((120713 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((120745 : GoUInt32)), ((120771 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((120832 : GoUInt32)), ((121343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121399 : GoUInt32)), ((121402 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121453 : GoUInt32)), ((121460 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121462 : GoUInt32)), ((121475 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121477 : GoUInt32)), ((121478 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123215 : GoUInt32)), ((123647 : GoUInt32)), ((432 : GoUInt32))).__copy__(),
new Range32(((126124 : GoUInt32)), ((126128 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((126254 : GoUInt32)), ((126704 : GoUInt32)), ((450 : GoUInt32))).__copy__(),
new Range32(((126705 : GoUInt32)), ((126976 : GoUInt32)), ((271 : GoUInt32))).__copy__(),
new Range32(((126977 : GoUInt32)), ((127019 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127024 : GoUInt32)), ((127123 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127136 : GoUInt32)), ((127150 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127153 : GoUInt32)), ((127167 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127169 : GoUInt32)), ((127183 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127185 : GoUInt32)), ((127221 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127245 : GoUInt32)), ((127405 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127462 : GoUInt32)), ((127490 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127504 : GoUInt32)), ((127547 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127552 : GoUInt32)), ((127560 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127568 : GoUInt32)), ((127569 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127584 : GoUInt32)), ((127589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127744 : GoUInt32)), ((128727 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128736 : GoUInt32)), ((128748 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128752 : GoUInt32)), ((128764 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128768 : GoUInt32)), ((128883 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128896 : GoUInt32)), ((128984 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128992 : GoUInt32)), ((129003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129024 : GoUInt32)), ((129035 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129040 : GoUInt32)), ((129095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129104 : GoUInt32)), ((129113 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129120 : GoUInt32)), ((129159 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129168 : GoUInt32)), ((129197 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129200 : GoUInt32)), ((129201 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129280 : GoUInt32)), ((129400 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129402 : GoUInt32)), ((129483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129485 : GoUInt32)), ((129619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129632 : GoUInt32)), ((129645 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129648 : GoUInt32)), ((129652 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129656 : GoUInt32)), ((129658 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129664 : GoUInt32)), ((129670 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129680 : GoUInt32)), ((129704 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129712 : GoUInt32)), ((129718 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129728 : GoUInt32)), ((129730 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129744 : GoUInt32)), ((129750 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129792 : GoUInt32)), ((129938 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129940 : GoUInt32)), ((129994 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((10 : GoInt)) } : RangeTable)));
var symbol : Pointer<RangeTable> = __S;
var __Runic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5792 : GoUInt16)), ((5866 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((5870 : GoUInt16)), ((5880 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var runic : Pointer<RangeTable> = __Runic;
var _foldL : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((837 : GoUInt16)), ((837 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Tamil : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((2946 : GoUInt16)), ((2947 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2949 : GoUInt16)), ((2954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2958 : GoUInt16)), ((2960 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2962 : GoUInt16)), ((2965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2969 : GoUInt16)), ((2970 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2972 : GoUInt16)), ((2974 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2975 : GoUInt16)), ((2979 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2980 : GoUInt16)), ((2984 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2985 : GoUInt16)), ((2986 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2990 : GoUInt16)), ((3001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3006 : GoUInt16)), ((3010 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3014 : GoUInt16)), ((3016 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3018 : GoUInt16)), ((3021 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3024 : GoUInt16)), ((3031 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((3046 : GoUInt16)), ((3066 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((73664 : GoUInt32)), ((73713 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((73727 : GoUInt32)), ((73727 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var tamil : Pointer<RangeTable> = __Tamil;
var _foldM : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((921 : GoUInt16)), ((953 : GoUInt16)), ((32 : GoUInt16))).__copy__(), new Range16(((8126 : GoUInt16)), ((8126 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Syloti_Nagri : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43008 : GoUInt16)), ((43052 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var syloti_Nagri : Pointer<RangeTable> = __Syloti_Nagri;
var __TurkishCase : SpecialCase = new SpecialCase(new Slice<CaseRange>(new CaseRange(((73 : GoUInt32)), ((73 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((305 : GoUnTypedInt)) - ((73 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(), new CaseRange(((105 : GoUInt32)), ((105 : GoUInt32)), new T_d(new GoArray<GoInt32>(((304 : GoUnTypedInt)) - ((105 : GoUnTypedInt)), ((0 : GoInt32)), ((304 : GoUnTypedInt)) - ((105 : GoUnTypedInt)))).__copy__()).__copy__(), new CaseRange(((304 : GoUInt32)), ((304 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((105 : GoUnTypedInt)) - ((304 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(), new CaseRange(((305 : GoUInt32)), ((305 : GoUInt32)), new T_d(new GoArray<GoInt32>(((73 : GoUnTypedInt)) - ((305 : GoUnTypedInt)), ((0 : GoInt32)), ((73 : GoUnTypedInt)) - ((305 : GoUnTypedInt)))).__copy__()).__copy__())).__copy__();
var azeriCase : SpecialCase = __TurkishCase.__copy__();
var __Soft_Dotted : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((105 : GoUInt16)), ((106 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((303 : GoUInt16)), ((585 : GoUInt16)), ((282 : GoUInt16))).__copy__(), new Range16(((616 : GoUInt16)), ((669 : GoUInt16)), ((53 : GoUInt16))).__copy__(), new Range16(((690 : GoUInt16)), ((1011 : GoUInt16)), ((321 : GoUInt16))).__copy__(), new Range16(((1110 : GoUInt16)), ((1112 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((7522 : GoUInt16)), ((7574 : GoUInt16)), ((52 : GoUInt16))).__copy__(), new Range16(((7588 : GoUInt16)), ((7592 : GoUInt16)), ((4 : GoUInt16))).__copy__(), new Range16(((7725 : GoUInt16)), ((7883 : GoUInt16)), ((158 : GoUInt16))).__copy__(), new Range16(((8305 : GoUInt16)), ((8520 : GoUInt16)), ((215 : GoUInt16))).__copy__(), new Range16(((8521 : GoUInt16)), ((11388 : GoUInt16)), ((2867 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((119842 : GoUInt32)), ((119843 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119894 : GoUInt32)), ((119895 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119946 : GoUInt32)), ((119947 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119998 : GoUInt32)), ((119999 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120050 : GoUInt32)), ((120051 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120102 : GoUInt32)), ((120103 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120154 : GoUInt32)), ((120155 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120206 : GoUInt32)), ((120207 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120258 : GoUInt32)), ((120259 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120310 : GoUInt32)), ((120311 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120362 : GoUInt32)), ((120363 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120414 : GoUInt32)), ((120415 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120466 : GoUInt32)), ((120467 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((1 : GoInt)) } : RangeTable)));
var soft_Dotted : Pointer<RangeTable> = __Soft_Dotted;
var __Quotation_Mark : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((34 : GoUInt16)), ((39 : GoUInt16)), ((5 : GoUInt16))).__copy__(), new Range16(((171 : GoUInt16)), ((187 : GoUInt16)), ((16 : GoUInt16))).__copy__(), new Range16(((8216 : GoUInt16)), ((8223 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8249 : GoUInt16)), ((8250 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11842 : GoUInt16)), ((12300 : GoUInt16)), ((458 : GoUInt16))).__copy__(), new Range16(((12301 : GoUInt16)), ((12303 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12317 : GoUInt16)), ((12319 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65089 : GoUInt16)), ((65092 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65282 : GoUInt16)), ((65287 : GoUInt16)), ((5 : GoUInt16))).__copy__(), new Range16(((65378 : GoUInt16)), ((65379 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((2 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var quotation_Mark : Pointer<RangeTable> = __Quotation_Mark;
var __Mro : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((92736 : GoUInt32)), ((92766 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((92768 : GoUInt32)), ((92777 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((92782 : GoUInt32)), ((92783 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var mro : Pointer<RangeTable> = __Mro;
var __Limbu : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6400 : GoUInt16)), ((6430 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6432 : GoUInt16)), ((6443 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6448 : GoUInt16)), ((6459 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6464 : GoUInt16)), ((6468 : GoUInt16)), ((4 : GoUInt16))).__copy__(), new Range16(((6469 : GoUInt16)), ((6479 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var limbu : Pointer<RangeTable> = __Limbu;
var __Coptic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((994 : GoUInt16)), ((1007 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11392 : GoUInt16)), ((11507 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11513 : GoUInt16)), ((11519 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Hyphen : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((45 : GoUInt16)), ((173 : GoUInt16)), ((128 : GoUInt16))).__copy__(), new Range16(((1418 : GoUInt16)), ((6150 : GoUInt16)), ((4732 : GoUInt16))).__copy__(), new Range16(((8208 : GoUInt16)), ((8209 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11799 : GoUInt16)), ((12539 : GoUInt16)), ((740 : GoUInt16))).__copy__(), new Range16(((65123 : GoUInt16)), ((65293 : GoUInt16)), ((170 : GoUInt16))).__copy__(), new Range16(((65381 : GoUInt16)), ((65381 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((1 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var __Bamum : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((42656 : GoUInt16)), ((42743 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((92160 : GoUInt32)), ((92728 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var bamum : Pointer<RangeTable> = __Bamum;
var __Kannada : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((3200 : GoUInt16)), ((3212 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3214 : GoUInt16)), ((3216 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3218 : GoUInt16)), ((3240 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3242 : GoUInt16)), ((3251 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3253 : GoUInt16)), ((3257 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3260 : GoUInt16)), ((3268 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3270 : GoUInt16)), ((3272 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3274 : GoUInt16)), ((3277 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3285 : GoUInt16)), ((3286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3294 : GoUInt16)), ((3296 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3297 : GoUInt16)), ((3299 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3302 : GoUInt16)), ((3311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3313 : GoUInt16)), ((3314 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
final version : GoString = "13.0.0";
var __Bidi_Control : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1564 : GoUInt16)), ((8206 : GoUInt16)), ((6642 : GoUInt16))).__copy__(), new Range16(((8207 : GoUInt16)), ((8234 : GoUInt16)), ((27 : GoUInt16))).__copy__(), new Range16(((8235 : GoUInt16)), ((8238 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8294 : GoUInt16)), ((8297 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Wancho : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((123584 : GoUInt32)), ((123641 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((123647 : GoUInt32)), ((123647 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var wancho : Pointer<RangeTable> = __Wancho;
var __C : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((0 : GoUInt16)), ((31 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((127 : GoUInt16)), ((159 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((173 : GoUInt16)), ((1536 : GoUInt16)), ((1363 : GoUInt16))).__copy__(),
new Range16(((1537 : GoUInt16)), ((1541 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1564 : GoUInt16)), ((1757 : GoUInt16)), ((193 : GoUInt16))).__copy__(),
new Range16(((1807 : GoUInt16)), ((2274 : GoUInt16)), ((467 : GoUInt16))).__copy__(),
new Range16(((6158 : GoUInt16)), ((8203 : GoUInt16)), ((2045 : GoUInt16))).__copy__(),
new Range16(((8204 : GoUInt16)), ((8207 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8234 : GoUInt16)), ((8238 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8288 : GoUInt16)), ((8292 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8294 : GoUInt16)), ((8303 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55296 : GoUInt16)), ((63743 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65279 : GoUInt16)), ((65529 : GoUInt16)), ((250 : GoUInt16))).__copy__(),
new Range16(((65530 : GoUInt16)), ((65531 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((69821 : GoUInt32)), ((69837 : GoUInt32)), ((16 : GoUInt32))).__copy__(), new Range32(((78896 : GoUInt32)), ((78904 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((113824 : GoUInt32)), ((113827 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((119155 : GoUInt32)), ((119162 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((917505 : GoUInt32)), ((917536 : GoUInt32)), ((31 : GoUInt32))).__copy__(), new Range32(((917537 : GoUInt32)), ((917631 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((983040 : GoUInt32)), ((1048573 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((1048576 : GoUInt32)), ((1114109 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((2 : GoInt)) } : RangeTable)));
var other : Pointer<RangeTable> = __C;
var __Devanagari : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((2304 : GoUInt16)), ((2384 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((2389 : GoUInt16)), ((2403 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((2406 : GoUInt16)), ((2431 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43232 : GoUInt16)), ((43263 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var devanagari : Pointer<RangeTable> = __Devanagari;
var __Deseret : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66560 : GoUInt32)), ((66639 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var deseret : Pointer<RangeTable> = __Deseret;
var __Kharoshthi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68096 : GoUInt32)), ((68099 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68101 : GoUInt32)), ((68102 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68108 : GoUInt32)), ((68115 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68117 : GoUInt32)), ((68119 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68121 : GoUInt32)), ((68149 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68152 : GoUInt32)), ((68154 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68159 : GoUInt32)), ((68168 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68176 : GoUInt32)), ((68184 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var kharoshthi : Pointer<RangeTable> = __Kharoshthi;
var __Bassa_Vah : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((92880 : GoUInt32)), ((92909 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((92912 : GoUInt32)), ((92917 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __SignWriting : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((120832 : GoUInt32)), ((121483 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((121499 : GoUInt32)), ((121503 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((121505 : GoUInt32)), ((121519 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var signWriting : Pointer<RangeTable> = __SignWriting;
var __Meroitic_Cursive : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68000 : GoUInt32)), ((68023 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68028 : GoUInt32)), ((68047 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68050 : GoUInt32)), ((68095 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var meroitic_Cursive : Pointer<RangeTable> = __Meroitic_Cursive;
var __Sharada : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((70016 : GoUInt32)), ((70111 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Medefaidrin : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((93760 : GoUInt32)), ((93850 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Phags_Pa : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43072 : GoUInt16)), ((43127 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var phags_Pa : Pointer<RangeTable> = __Phags_Pa;
var __Avestan : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68352 : GoUInt32)), ((68405 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68409 : GoUInt32)), ((68415 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var avestan : Pointer<RangeTable> = __Avestan;
var __Join_Control : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((8204 : GoUInt16)), ((8205 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var join_Control : Pointer<RangeTable> = __Join_Control;
var __Nandinagari : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72096 : GoUInt32)), ((72103 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72106 : GoUInt32)), ((72151 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72154 : GoUInt32)), ((72164 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var nandinagari : Pointer<RangeTable> = __Nandinagari;
var __Katakana : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((12449 : GoUInt16)), ((12538 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12541 : GoUInt16)), ((12543 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12784 : GoUInt16)), ((12799 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((13008 : GoUInt16)), ((13054 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((13056 : GoUInt16)), ((13143 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65382 : GoUInt16)), ((65391 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65393 : GoUInt16)), ((65437 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((110592 : GoUInt32)), ((110948 : GoUInt32)), ((356 : GoUInt32))).__copy__(), new Range32(((110949 : GoUInt32)), ((110951 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Braille : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((10240 : GoUInt16)), ((10495 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Tagalog : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5888 : GoUInt16)), ((5900 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((5902 : GoUInt16)), ((5908 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var tagalog : Pointer<RangeTable> = __Tagalog;
var __Thai : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((3585 : GoUInt16)), ((3642 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3648 : GoUInt16)), ((3675 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var thai : Pointer<RangeTable> = __Thai;
var __Hangul : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((4352 : GoUInt16)), ((4607 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12334 : GoUInt16)), ((12335 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12593 : GoUInt16)), ((12686 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12800 : GoUInt16)), ((12830 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12896 : GoUInt16)), ((12926 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43360 : GoUInt16)), ((43388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44032 : GoUInt16)), ((55203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55216 : GoUInt16)), ((55238 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55243 : GoUInt16)), ((55291 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65440 : GoUInt16)), ((65470 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65474 : GoUInt16)), ((65479 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65482 : GoUInt16)), ((65487 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65490 : GoUInt16)), ((65495 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65498 : GoUInt16)), ((65500 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var hangul : Pointer<RangeTable> = __Hangul;
var __Gothic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66352 : GoUInt32)), ((66378 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var c : Pointer<RangeTable> = __C;
var __Cc : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((0 : GoUInt16)), ((31 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((127 : GoUInt16)), ((159 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((2 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var cc : Pointer<RangeTable> = __Cc;
var __L : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((65 : GoUInt16)), ((90 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((97 : GoUInt16)), ((122 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((170 : GoUInt16)), ((181 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((186 : GoUInt16)), ((192 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((193 : GoUInt16)), ((214 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((216 : GoUInt16)), ((246 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((248 : GoUInt16)), ((705 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((710 : GoUInt16)), ((721 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((736 : GoUInt16)), ((740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((748 : GoUInt16)), ((750 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((880 : GoUInt16)), ((884 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((886 : GoUInt16)), ((887 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((890 : GoUInt16)), ((893 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((895 : GoUInt16)), ((902 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((904 : GoUInt16)), ((906 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((908 : GoUInt16)), ((910 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((911 : GoUInt16)), ((929 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((931 : GoUInt16)), ((1013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1015 : GoUInt16)), ((1153 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1162 : GoUInt16)), ((1327 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1329 : GoUInt16)), ((1366 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1369 : GoUInt16)), ((1376 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((1377 : GoUInt16)), ((1416 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1488 : GoUInt16)), ((1514 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1519 : GoUInt16)), ((1522 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1568 : GoUInt16)), ((1610 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1646 : GoUInt16)), ((1647 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1649 : GoUInt16)), ((1747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1749 : GoUInt16)), ((1765 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((1766 : GoUInt16)), ((1774 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((1775 : GoUInt16)), ((1786 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((1787 : GoUInt16)), ((1788 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1791 : GoUInt16)), ((1808 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((1810 : GoUInt16)), ((1839 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1869 : GoUInt16)), ((1957 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1969 : GoUInt16)), ((1994 : GoUInt16)), ((25 : GoUInt16))).__copy__(),
new Range16(((1995 : GoUInt16)), ((2026 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2036 : GoUInt16)), ((2037 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2042 : GoUInt16)), ((2048 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((2049 : GoUInt16)), ((2069 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2074 : GoUInt16)), ((2084 : GoUInt16)), ((10 : GoUInt16))).__copy__(),
new Range16(((2088 : GoUInt16)), ((2112 : GoUInt16)), ((24 : GoUInt16))).__copy__(),
new Range16(((2113 : GoUInt16)), ((2136 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2144 : GoUInt16)), ((2154 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2208 : GoUInt16)), ((2228 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2230 : GoUInt16)), ((2247 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2308 : GoUInt16)), ((2361 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2365 : GoUInt16)), ((2384 : GoUInt16)), ((19 : GoUInt16))).__copy__(),
new Range16(((2392 : GoUInt16)), ((2401 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2417 : GoUInt16)), ((2432 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2437 : GoUInt16)), ((2444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2447 : GoUInt16)), ((2448 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2451 : GoUInt16)), ((2472 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2474 : GoUInt16)), ((2480 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2482 : GoUInt16)), ((2486 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2487 : GoUInt16)), ((2489 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2493 : GoUInt16)), ((2510 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((2524 : GoUInt16)), ((2525 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2527 : GoUInt16)), ((2529 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2544 : GoUInt16)), ((2545 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2556 : GoUInt16)), ((2565 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((2566 : GoUInt16)), ((2570 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2575 : GoUInt16)), ((2576 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2579 : GoUInt16)), ((2600 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2602 : GoUInt16)), ((2608 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2610 : GoUInt16)), ((2611 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2613 : GoUInt16)), ((2614 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2616 : GoUInt16)), ((2617 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2649 : GoUInt16)), ((2652 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2654 : GoUInt16)), ((2674 : GoUInt16)), ((20 : GoUInt16))).__copy__(),
new Range16(((2675 : GoUInt16)), ((2676 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2693 : GoUInt16)), ((2701 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2703 : GoUInt16)), ((2705 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2707 : GoUInt16)), ((2728 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2730 : GoUInt16)), ((2736 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2738 : GoUInt16)), ((2739 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2741 : GoUInt16)), ((2745 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2749 : GoUInt16)), ((2768 : GoUInt16)), ((19 : GoUInt16))).__copy__(),
new Range16(((2784 : GoUInt16)), ((2785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2809 : GoUInt16)), ((2821 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((2822 : GoUInt16)), ((2828 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2831 : GoUInt16)), ((2832 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2835 : GoUInt16)), ((2856 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2858 : GoUInt16)), ((2864 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2866 : GoUInt16)), ((2867 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2869 : GoUInt16)), ((2873 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2877 : GoUInt16)), ((2908 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((2909 : GoUInt16)), ((2911 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2912 : GoUInt16)), ((2913 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2929 : GoUInt16)), ((2947 : GoUInt16)), ((18 : GoUInt16))).__copy__(),
new Range16(((2949 : GoUInt16)), ((2954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2958 : GoUInt16)), ((2960 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2962 : GoUInt16)), ((2965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2969 : GoUInt16)), ((2970 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2972 : GoUInt16)), ((2974 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2975 : GoUInt16)), ((2979 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2980 : GoUInt16)), ((2984 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2985 : GoUInt16)), ((2986 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2990 : GoUInt16)), ((3001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3024 : GoUInt16)), ((3077 : GoUInt16)), ((53 : GoUInt16))).__copy__(),
new Range16(((3078 : GoUInt16)), ((3084 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3086 : GoUInt16)), ((3088 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3090 : GoUInt16)), ((3112 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3114 : GoUInt16)), ((3129 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3133 : GoUInt16)), ((3160 : GoUInt16)), ((27 : GoUInt16))).__copy__(),
new Range16(((3161 : GoUInt16)), ((3162 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3168 : GoUInt16)), ((3169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3200 : GoUInt16)), ((3205 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((3206 : GoUInt16)), ((3212 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3214 : GoUInt16)), ((3216 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3218 : GoUInt16)), ((3240 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3242 : GoUInt16)), ((3251 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3253 : GoUInt16)), ((3257 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3261 : GoUInt16)), ((3294 : GoUInt16)), ((33 : GoUInt16))).__copy__(),
new Range16(((3296 : GoUInt16)), ((3297 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3313 : GoUInt16)), ((3314 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3332 : GoUInt16)), ((3340 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3342 : GoUInt16)), ((3344 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3346 : GoUInt16)), ((3386 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3389 : GoUInt16)), ((3406 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((3412 : GoUInt16)), ((3414 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3423 : GoUInt16)), ((3425 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3450 : GoUInt16)), ((3455 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3461 : GoUInt16)), ((3478 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3482 : GoUInt16)), ((3505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3507 : GoUInt16)), ((3515 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3517 : GoUInt16)), ((3520 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3521 : GoUInt16)), ((3526 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3585 : GoUInt16)), ((3632 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3634 : GoUInt16)), ((3635 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3648 : GoUInt16)), ((3654 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3713 : GoUInt16)), ((3714 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3716 : GoUInt16)), ((3718 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3719 : GoUInt16)), ((3722 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3724 : GoUInt16)), ((3747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3749 : GoUInt16)), ((3751 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3752 : GoUInt16)), ((3760 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3762 : GoUInt16)), ((3763 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3773 : GoUInt16)), ((3776 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3777 : GoUInt16)), ((3780 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3782 : GoUInt16)), ((3804 : GoUInt16)), ((22 : GoUInt16))).__copy__(),
new Range16(((3805 : GoUInt16)), ((3807 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3840 : GoUInt16)), ((3904 : GoUInt16)), ((64 : GoUInt16))).__copy__(),
new Range16(((3905 : GoUInt16)), ((3911 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3913 : GoUInt16)), ((3948 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3976 : GoUInt16)), ((3980 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4096 : GoUInt16)), ((4138 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4159 : GoUInt16)), ((4176 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((4177 : GoUInt16)), ((4181 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4186 : GoUInt16)), ((4189 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4193 : GoUInt16)), ((4197 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((4198 : GoUInt16)), ((4206 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((4207 : GoUInt16)), ((4208 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4213 : GoUInt16)), ((4225 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4238 : GoUInt16)), ((4256 : GoUInt16)), ((18 : GoUInt16))).__copy__(),
new Range16(((4257 : GoUInt16)), ((4293 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4295 : GoUInt16)), ((4301 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((4304 : GoUInt16)), ((4346 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4348 : GoUInt16)), ((4680 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4682 : GoUInt16)), ((4685 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4688 : GoUInt16)), ((4694 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4696 : GoUInt16)), ((4698 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4699 : GoUInt16)), ((4701 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4704 : GoUInt16)), ((4744 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4746 : GoUInt16)), ((4749 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4752 : GoUInt16)), ((4784 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4786 : GoUInt16)), ((4789 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4792 : GoUInt16)), ((4798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4800 : GoUInt16)), ((4802 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4803 : GoUInt16)), ((4805 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4808 : GoUInt16)), ((4822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4824 : GoUInt16)), ((4880 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4882 : GoUInt16)), ((4885 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4888 : GoUInt16)), ((4954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4992 : GoUInt16)), ((5007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5024 : GoUInt16)), ((5109 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5112 : GoUInt16)), ((5117 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5121 : GoUInt16)), ((5740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5743 : GoUInt16)), ((5759 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5761 : GoUInt16)), ((5786 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5792 : GoUInt16)), ((5866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5873 : GoUInt16)), ((5880 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5888 : GoUInt16)), ((5900 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5902 : GoUInt16)), ((5905 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5920 : GoUInt16)), ((5937 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5952 : GoUInt16)), ((5969 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5984 : GoUInt16)), ((5996 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5998 : GoUInt16)), ((6000 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6016 : GoUInt16)), ((6067 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6103 : GoUInt16)), ((6108 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((6176 : GoUInt16)), ((6264 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6272 : GoUInt16)), ((6276 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6279 : GoUInt16)), ((6312 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6314 : GoUInt16)), ((6320 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((6321 : GoUInt16)), ((6389 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6400 : GoUInt16)), ((6430 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6480 : GoUInt16)), ((6509 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6512 : GoUInt16)), ((6516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6528 : GoUInt16)), ((6571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6576 : GoUInt16)), ((6601 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6656 : GoUInt16)), ((6678 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6688 : GoUInt16)), ((6740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6823 : GoUInt16)), ((6917 : GoUInt16)), ((94 : GoUInt16))).__copy__(),
new Range16(((6918 : GoUInt16)), ((6963 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6981 : GoUInt16)), ((6987 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7043 : GoUInt16)), ((7072 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7086 : GoUInt16)), ((7087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7098 : GoUInt16)), ((7141 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7168 : GoUInt16)), ((7203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7245 : GoUInt16)), ((7247 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7258 : GoUInt16)), ((7293 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7296 : GoUInt16)), ((7304 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7312 : GoUInt16)), ((7354 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7357 : GoUInt16)), ((7359 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7401 : GoUInt16)), ((7404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7406 : GoUInt16)), ((7411 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7413 : GoUInt16)), ((7414 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7418 : GoUInt16)), ((7424 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((7425 : GoUInt16)), ((7615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7680 : GoUInt16)), ((7957 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7960 : GoUInt16)), ((7965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7968 : GoUInt16)), ((8005 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8008 : GoUInt16)), ((8013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8016 : GoUInt16)), ((8023 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8025 : GoUInt16)), ((8031 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8032 : GoUInt16)), ((8061 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8064 : GoUInt16)), ((8116 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8118 : GoUInt16)), ((8124 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8126 : GoUInt16)), ((8130 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8131 : GoUInt16)), ((8132 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8134 : GoUInt16)), ((8140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8144 : GoUInt16)), ((8147 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8150 : GoUInt16)), ((8155 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8160 : GoUInt16)), ((8172 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8178 : GoUInt16)), ((8180 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8182 : GoUInt16)), ((8188 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8305 : GoUInt16)), ((8319 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((8336 : GoUInt16)), ((8348 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8450 : GoUInt16)), ((8455 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8458 : GoUInt16)), ((8467 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8469 : GoUInt16)), ((8473 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8474 : GoUInt16)), ((8477 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8484 : GoUInt16)), ((8490 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8491 : GoUInt16)), ((8493 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8495 : GoUInt16)), ((8505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8508 : GoUInt16)), ((8511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8517 : GoUInt16)), ((8521 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8526 : GoUInt16)), ((8579 : GoUInt16)), ((53 : GoUInt16))).__copy__(),
new Range16(((8580 : GoUInt16)), ((11264 : GoUInt16)), ((2684 : GoUInt16))).__copy__(),
new Range16(((11265 : GoUInt16)), ((11310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11312 : GoUInt16)), ((11358 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11360 : GoUInt16)), ((11492 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11499 : GoUInt16)), ((11502 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11506 : GoUInt16)), ((11507 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11520 : GoUInt16)), ((11557 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11559 : GoUInt16)), ((11565 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((11568 : GoUInt16)), ((11623 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11631 : GoUInt16)), ((11648 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((11649 : GoUInt16)), ((11670 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11680 : GoUInt16)), ((11686 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11688 : GoUInt16)), ((11694 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11696 : GoUInt16)), ((11702 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11704 : GoUInt16)), ((11710 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11712 : GoUInt16)), ((11718 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11720 : GoUInt16)), ((11726 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11728 : GoUInt16)), ((11734 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11736 : GoUInt16)), ((11742 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11823 : GoUInt16)), ((12293 : GoUInt16)), ((470 : GoUInt16))).__copy__(),
new Range16(((12294 : GoUInt16)), ((12337 : GoUInt16)), ((43 : GoUInt16))).__copy__(),
new Range16(((12338 : GoUInt16)), ((12341 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12347 : GoUInt16)), ((12348 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12353 : GoUInt16)), ((12438 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12445 : GoUInt16)), ((12447 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12449 : GoUInt16)), ((12538 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12540 : GoUInt16)), ((12543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12549 : GoUInt16)), ((12591 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12593 : GoUInt16)), ((12686 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12704 : GoUInt16)), ((12735 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12784 : GoUInt16)), ((12799 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((13312 : GoUInt16)), ((19903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((19968 : GoUInt16)), ((40956 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((40960 : GoUInt16)), ((42124 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42192 : GoUInt16)), ((42237 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42240 : GoUInt16)), ((42508 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42512 : GoUInt16)), ((42527 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42538 : GoUInt16)), ((42539 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42560 : GoUInt16)), ((42606 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42623 : GoUInt16)), ((42653 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42656 : GoUInt16)), ((42725 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42775 : GoUInt16)), ((42783 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42786 : GoUInt16)), ((42888 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42891 : GoUInt16)), ((42943 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42946 : GoUInt16)), ((42954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42997 : GoUInt16)), ((43009 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43011 : GoUInt16)), ((43013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43015 : GoUInt16)), ((43018 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43020 : GoUInt16)), ((43042 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43072 : GoUInt16)), ((43123 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43138 : GoUInt16)), ((43187 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43250 : GoUInt16)), ((43255 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43259 : GoUInt16)), ((43261 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((43262 : GoUInt16)), ((43274 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((43275 : GoUInt16)), ((43301 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43312 : GoUInt16)), ((43334 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43360 : GoUInt16)), ((43388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43396 : GoUInt16)), ((43442 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43471 : GoUInt16)), ((43488 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((43489 : GoUInt16)), ((43492 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43494 : GoUInt16)), ((43503 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43514 : GoUInt16)), ((43518 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43520 : GoUInt16)), ((43560 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43584 : GoUInt16)), ((43586 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43588 : GoUInt16)), ((43595 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43616 : GoUInt16)), ((43638 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43642 : GoUInt16)), ((43646 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43647 : GoUInt16)), ((43695 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43697 : GoUInt16)), ((43701 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43702 : GoUInt16)), ((43705 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((43706 : GoUInt16)), ((43709 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43712 : GoUInt16)), ((43714 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((43739 : GoUInt16)), ((43741 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43744 : GoUInt16)), ((43754 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43762 : GoUInt16)), ((43764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43777 : GoUInt16)), ((43782 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43785 : GoUInt16)), ((43790 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43793 : GoUInt16)), ((43798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43808 : GoUInt16)), ((43814 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43816 : GoUInt16)), ((43822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43824 : GoUInt16)), ((43866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43868 : GoUInt16)), ((43881 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43888 : GoUInt16)), ((44002 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44032 : GoUInt16)), ((55203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55216 : GoUInt16)), ((55238 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((55243 : GoUInt16)), ((55291 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((63744 : GoUInt16)), ((64109 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64112 : GoUInt16)), ((64217 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64256 : GoUInt16)), ((64262 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64275 : GoUInt16)), ((64279 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64285 : GoUInt16)), ((64287 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64288 : GoUInt16)), ((64296 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64298 : GoUInt16)), ((64310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64312 : GoUInt16)), ((64316 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64318 : GoUInt16)), ((64320 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64321 : GoUInt16)), ((64323 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64324 : GoUInt16)), ((64326 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((64327 : GoUInt16)), ((64433 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64467 : GoUInt16)), ((64829 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64848 : GoUInt16)), ((64911 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64914 : GoUInt16)), ((64967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65008 : GoUInt16)), ((65019 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65136 : GoUInt16)), ((65140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65142 : GoUInt16)), ((65276 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65313 : GoUInt16)), ((65338 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65345 : GoUInt16)), ((65370 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65382 : GoUInt16)), ((65470 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65474 : GoUInt16)), ((65479 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65482 : GoUInt16)), ((65487 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65490 : GoUInt16)), ((65495 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65498 : GoUInt16)), ((65500 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65536 : GoUInt32)), ((65547 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65549 : GoUInt32)), ((65574 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65576 : GoUInt32)), ((65594 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65596 : GoUInt32)), ((65597 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65599 : GoUInt32)), ((65613 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65616 : GoUInt32)), ((65629 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65664 : GoUInt32)), ((65786 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66176 : GoUInt32)), ((66204 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66208 : GoUInt32)), ((66256 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66304 : GoUInt32)), ((66335 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66349 : GoUInt32)), ((66368 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66370 : GoUInt32)), ((66377 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66384 : GoUInt32)), ((66421 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66432 : GoUInt32)), ((66461 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66464 : GoUInt32)), ((66499 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66504 : GoUInt32)), ((66511 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66560 : GoUInt32)), ((66717 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66736 : GoUInt32)), ((66771 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66776 : GoUInt32)), ((66811 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66816 : GoUInt32)), ((66855 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66864 : GoUInt32)), ((66915 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67072 : GoUInt32)), ((67382 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67392 : GoUInt32)), ((67413 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67424 : GoUInt32)), ((67431 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67584 : GoUInt32)), ((67589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67592 : GoUInt32)), ((67594 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((67595 : GoUInt32)), ((67637 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67639 : GoUInt32)), ((67640 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67644 : GoUInt32)), ((67647 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((67648 : GoUInt32)), ((67669 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67680 : GoUInt32)), ((67702 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67712 : GoUInt32)), ((67742 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67808 : GoUInt32)), ((67826 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67828 : GoUInt32)), ((67829 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67840 : GoUInt32)), ((67861 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67872 : GoUInt32)), ((67897 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67968 : GoUInt32)), ((68023 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68030 : GoUInt32)), ((68031 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68096 : GoUInt32)), ((68112 : GoUInt32)), ((16 : GoUInt32))).__copy__(),
new Range32(((68113 : GoUInt32)), ((68115 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68117 : GoUInt32)), ((68119 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68121 : GoUInt32)), ((68149 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68192 : GoUInt32)), ((68220 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68224 : GoUInt32)), ((68252 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68288 : GoUInt32)), ((68295 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68297 : GoUInt32)), ((68324 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68352 : GoUInt32)), ((68405 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68416 : GoUInt32)), ((68437 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68448 : GoUInt32)), ((68466 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68480 : GoUInt32)), ((68497 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68608 : GoUInt32)), ((68680 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68736 : GoUInt32)), ((68786 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68800 : GoUInt32)), ((68850 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68864 : GoUInt32)), ((68899 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69248 : GoUInt32)), ((69289 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69296 : GoUInt32)), ((69297 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69376 : GoUInt32)), ((69404 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69415 : GoUInt32)), ((69424 : GoUInt32)), ((9 : GoUInt32))).__copy__(),
new Range32(((69425 : GoUInt32)), ((69445 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69552 : GoUInt32)), ((69572 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69600 : GoUInt32)), ((69622 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69635 : GoUInt32)), ((69687 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69763 : GoUInt32)), ((69807 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69840 : GoUInt32)), ((69864 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69891 : GoUInt32)), ((69926 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69956 : GoUInt32)), ((69959 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((69968 : GoUInt32)), ((70002 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70006 : GoUInt32)), ((70019 : GoUInt32)), ((13 : GoUInt32))).__copy__(),
new Range32(((70020 : GoUInt32)), ((70066 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70081 : GoUInt32)), ((70084 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70106 : GoUInt32)), ((70108 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70144 : GoUInt32)), ((70161 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70163 : GoUInt32)), ((70187 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70272 : GoUInt32)), ((70278 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70280 : GoUInt32)), ((70282 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70283 : GoUInt32)), ((70285 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70287 : GoUInt32)), ((70301 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70303 : GoUInt32)), ((70312 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70320 : GoUInt32)), ((70366 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70405 : GoUInt32)), ((70412 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70415 : GoUInt32)), ((70416 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70419 : GoUInt32)), ((70440 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70442 : GoUInt32)), ((70448 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70450 : GoUInt32)), ((70451 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70453 : GoUInt32)), ((70457 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70461 : GoUInt32)), ((70480 : GoUInt32)), ((19 : GoUInt32))).__copy__(),
new Range32(((70493 : GoUInt32)), ((70497 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70656 : GoUInt32)), ((70708 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70727 : GoUInt32)), ((70730 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70751 : GoUInt32)), ((70753 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70784 : GoUInt32)), ((70831 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70852 : GoUInt32)), ((70853 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70855 : GoUInt32)), ((71040 : GoUInt32)), ((185 : GoUInt32))).__copy__(),
new Range32(((71041 : GoUInt32)), ((71086 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71128 : GoUInt32)), ((71131 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71168 : GoUInt32)), ((71215 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71236 : GoUInt32)), ((71296 : GoUInt32)), ((60 : GoUInt32))).__copy__(),
new Range32(((71297 : GoUInt32)), ((71338 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71352 : GoUInt32)), ((71424 : GoUInt32)), ((72 : GoUInt32))).__copy__(),
new Range32(((71425 : GoUInt32)), ((71450 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71680 : GoUInt32)), ((71723 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71840 : GoUInt32)), ((71903 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71935 : GoUInt32)), ((71942 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71945 : GoUInt32)), ((71948 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((71949 : GoUInt32)), ((71955 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71957 : GoUInt32)), ((71958 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71960 : GoUInt32)), ((71983 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71999 : GoUInt32)), ((72001 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72096 : GoUInt32)), ((72103 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72106 : GoUInt32)), ((72144 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72161 : GoUInt32)), ((72163 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72192 : GoUInt32)), ((72203 : GoUInt32)), ((11 : GoUInt32))).__copy__(),
new Range32(((72204 : GoUInt32)), ((72242 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72250 : GoUInt32)), ((72272 : GoUInt32)), ((22 : GoUInt32))).__copy__(),
new Range32(((72284 : GoUInt32)), ((72329 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72349 : GoUInt32)), ((72384 : GoUInt32)), ((35 : GoUInt32))).__copy__(),
new Range32(((72385 : GoUInt32)), ((72440 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72704 : GoUInt32)), ((72712 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72714 : GoUInt32)), ((72750 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72768 : GoUInt32)), ((72818 : GoUInt32)), ((50 : GoUInt32))).__copy__(),
new Range32(((72819 : GoUInt32)), ((72847 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72960 : GoUInt32)), ((72966 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72968 : GoUInt32)), ((72969 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72971 : GoUInt32)), ((73008 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73030 : GoUInt32)), ((73056 : GoUInt32)), ((26 : GoUInt32))).__copy__(),
new Range32(((73057 : GoUInt32)), ((73061 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73063 : GoUInt32)), ((73064 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73066 : GoUInt32)), ((73097 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73112 : GoUInt32)), ((73440 : GoUInt32)), ((328 : GoUInt32))).__copy__(),
new Range32(((73441 : GoUInt32)), ((73458 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73648 : GoUInt32)), ((73728 : GoUInt32)), ((80 : GoUInt32))).__copy__(),
new Range32(((73729 : GoUInt32)), ((74649 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((74880 : GoUInt32)), ((75075 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((77824 : GoUInt32)), ((78894 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((82944 : GoUInt32)), ((83526 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92160 : GoUInt32)), ((92728 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92736 : GoUInt32)), ((92766 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92880 : GoUInt32)), ((92909 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92928 : GoUInt32)), ((92975 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92992 : GoUInt32)), ((92995 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93027 : GoUInt32)), ((93047 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93053 : GoUInt32)), ((93071 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93760 : GoUInt32)), ((93823 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93952 : GoUInt32)), ((94026 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94032 : GoUInt32)), ((94099 : GoUInt32)), ((67 : GoUInt32))).__copy__(),
new Range32(((94100 : GoUInt32)), ((94111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94176 : GoUInt32)), ((94177 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94179 : GoUInt32)), ((94208 : GoUInt32)), ((29 : GoUInt32))).__copy__(),
new Range32(((94209 : GoUInt32)), ((100343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((100352 : GoUInt32)), ((101589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((101632 : GoUInt32)), ((101640 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110592 : GoUInt32)), ((110878 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110928 : GoUInt32)), ((110930 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110948 : GoUInt32)), ((110951 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110960 : GoUInt32)), ((111355 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113664 : GoUInt32)), ((113770 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113776 : GoUInt32)), ((113788 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113792 : GoUInt32)), ((113800 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113808 : GoUInt32)), ((113817 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119808 : GoUInt32)), ((119892 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119894 : GoUInt32)), ((119964 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119966 : GoUInt32)), ((119967 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119970 : GoUInt32)), ((119973 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119974 : GoUInt32)), ((119977 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119978 : GoUInt32)), ((119980 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119982 : GoUInt32)), ((119993 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119995 : GoUInt32)), ((119997 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((119998 : GoUInt32)), ((120003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120005 : GoUInt32)), ((120069 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120071 : GoUInt32)), ((120074 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120077 : GoUInt32)), ((120084 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120086 : GoUInt32)), ((120092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120094 : GoUInt32)), ((120121 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120123 : GoUInt32)), ((120126 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120128 : GoUInt32)), ((120132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120134 : GoUInt32)), ((120138 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((120139 : GoUInt32)), ((120144 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120146 : GoUInt32)), ((120485 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120488 : GoUInt32)), ((120512 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120514 : GoUInt32)), ((120538 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120540 : GoUInt32)), ((120570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120572 : GoUInt32)), ((120596 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120598 : GoUInt32)), ((120628 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120630 : GoUInt32)), ((120654 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120656 : GoUInt32)), ((120686 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120688 : GoUInt32)), ((120712 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120714 : GoUInt32)), ((120744 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120746 : GoUInt32)), ((120770 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120772 : GoUInt32)), ((120779 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123136 : GoUInt32)), ((123180 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123191 : GoUInt32)), ((123197 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123214 : GoUInt32)), ((123584 : GoUInt32)), ((370 : GoUInt32))).__copy__(),
new Range32(((123585 : GoUInt32)), ((123627 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((124928 : GoUInt32)), ((125124 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125184 : GoUInt32)), ((125251 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125259 : GoUInt32)), ((126464 : GoUInt32)), ((1205 : GoUInt32))).__copy__(),
new Range32(((126465 : GoUInt32)), ((126467 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126469 : GoUInt32)), ((126495 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126497 : GoUInt32)), ((126498 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126500 : GoUInt32)), ((126503 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126505 : GoUInt32)), ((126514 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126516 : GoUInt32)), ((126519 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126521 : GoUInt32)), ((126523 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126530 : GoUInt32)), ((126535 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((126537 : GoUInt32)), ((126541 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126542 : GoUInt32)), ((126543 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126545 : GoUInt32)), ((126546 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126548 : GoUInt32)), ((126551 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126553 : GoUInt32)), ((126561 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126562 : GoUInt32)), ((126564 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126567 : GoUInt32)), ((126570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126572 : GoUInt32)), ((126578 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126580 : GoUInt32)), ((126583 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126585 : GoUInt32)), ((126588 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126590 : GoUInt32)), ((126592 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126593 : GoUInt32)), ((126601 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126603 : GoUInt32)), ((126619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126625 : GoUInt32)), ((126627 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126629 : GoUInt32)), ((126633 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126635 : GoUInt32)), ((126651 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((131072 : GoUInt32)), ((173789 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((173824 : GoUInt32)), ((177972 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((177984 : GoUInt32)), ((178205 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((178208 : GoUInt32)), ((183969 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((183984 : GoUInt32)), ((191456 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((194560 : GoUInt32)), ((195101 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((196608 : GoUInt32)), ((201546 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((6 : GoInt)) } : RangeTable)));
var l : Pointer<RangeTable> = __L;
var __M : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((768 : GoUInt16)), ((879 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1155 : GoUInt16)), ((1161 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1425 : GoUInt16)), ((1469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1471 : GoUInt16)), ((1473 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1474 : GoUInt16)), ((1476 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1477 : GoUInt16)), ((1479 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1552 : GoUInt16)), ((1562 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1611 : GoUInt16)), ((1631 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1648 : GoUInt16)), ((1750 : GoUInt16)), ((102 : GoUInt16))).__copy__(),
new Range16(((1751 : GoUInt16)), ((1756 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1759 : GoUInt16)), ((1764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1767 : GoUInt16)), ((1768 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1770 : GoUInt16)), ((1773 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1809 : GoUInt16)), ((1840 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((1841 : GoUInt16)), ((1866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1958 : GoUInt16)), ((1968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2027 : GoUInt16)), ((2035 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2045 : GoUInt16)), ((2070 : GoUInt16)), ((25 : GoUInt16))).__copy__(),
new Range16(((2071 : GoUInt16)), ((2073 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2075 : GoUInt16)), ((2083 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2085 : GoUInt16)), ((2087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2089 : GoUInt16)), ((2093 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2137 : GoUInt16)), ((2139 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2259 : GoUInt16)), ((2273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2275 : GoUInt16)), ((2307 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2362 : GoUInt16)), ((2364 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2366 : GoUInt16)), ((2383 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2385 : GoUInt16)), ((2391 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2402 : GoUInt16)), ((2403 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2433 : GoUInt16)), ((2435 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2492 : GoUInt16)), ((2494 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2495 : GoUInt16)), ((2500 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2503 : GoUInt16)), ((2504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2507 : GoUInt16)), ((2509 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2519 : GoUInt16)), ((2530 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((2531 : GoUInt16)), ((2558 : GoUInt16)), ((27 : GoUInt16))).__copy__(),
new Range16(((2561 : GoUInt16)), ((2563 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2620 : GoUInt16)), ((2622 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2623 : GoUInt16)), ((2626 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2631 : GoUInt16)), ((2632 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2635 : GoUInt16)), ((2637 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2641 : GoUInt16)), ((2672 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((2673 : GoUInt16)), ((2677 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2689 : GoUInt16)), ((2691 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2748 : GoUInt16)), ((2750 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2751 : GoUInt16)), ((2757 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2759 : GoUInt16)), ((2761 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2763 : GoUInt16)), ((2765 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2786 : GoUInt16)), ((2787 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2810 : GoUInt16)), ((2815 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2817 : GoUInt16)), ((2819 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2876 : GoUInt16)), ((2878 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2879 : GoUInt16)), ((2884 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2887 : GoUInt16)), ((2888 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2891 : GoUInt16)), ((2893 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2901 : GoUInt16)), ((2903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2914 : GoUInt16)), ((2915 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2946 : GoUInt16)), ((3006 : GoUInt16)), ((60 : GoUInt16))).__copy__(),
new Range16(((3007 : GoUInt16)), ((3010 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3014 : GoUInt16)), ((3016 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3018 : GoUInt16)), ((3021 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3031 : GoUInt16)), ((3072 : GoUInt16)), ((41 : GoUInt16))).__copy__(),
new Range16(((3073 : GoUInt16)), ((3076 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3134 : GoUInt16)), ((3140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3142 : GoUInt16)), ((3144 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3146 : GoUInt16)), ((3149 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3157 : GoUInt16)), ((3158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3170 : GoUInt16)), ((3171 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3201 : GoUInt16)), ((3203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3260 : GoUInt16)), ((3262 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3263 : GoUInt16)), ((3268 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3270 : GoUInt16)), ((3272 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3274 : GoUInt16)), ((3277 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3285 : GoUInt16)), ((3286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3298 : GoUInt16)), ((3299 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3328 : GoUInt16)), ((3331 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3387 : GoUInt16)), ((3388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3390 : GoUInt16)), ((3396 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3398 : GoUInt16)), ((3400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3402 : GoUInt16)), ((3405 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3415 : GoUInt16)), ((3426 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((3427 : GoUInt16)), ((3457 : GoUInt16)), ((30 : GoUInt16))).__copy__(),
new Range16(((3458 : GoUInt16)), ((3459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3530 : GoUInt16)), ((3535 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((3536 : GoUInt16)), ((3540 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3542 : GoUInt16)), ((3544 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3545 : GoUInt16)), ((3551 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3570 : GoUInt16)), ((3571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3633 : GoUInt16)), ((3636 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3637 : GoUInt16)), ((3642 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3655 : GoUInt16)), ((3662 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3761 : GoUInt16)), ((3764 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3765 : GoUInt16)), ((3772 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3784 : GoUInt16)), ((3789 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3864 : GoUInt16)), ((3865 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3893 : GoUInt16)), ((3897 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3902 : GoUInt16)), ((3903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3953 : GoUInt16)), ((3972 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3974 : GoUInt16)), ((3975 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3981 : GoUInt16)), ((3991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3993 : GoUInt16)), ((4028 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4038 : GoUInt16)), ((4139 : GoUInt16)), ((101 : GoUInt16))).__copy__(),
new Range16(((4140 : GoUInt16)), ((4158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4182 : GoUInt16)), ((4185 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4190 : GoUInt16)), ((4192 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4194 : GoUInt16)), ((4196 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4199 : GoUInt16)), ((4205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4209 : GoUInt16)), ((4212 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4226 : GoUInt16)), ((4237 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4239 : GoUInt16)), ((4250 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((4251 : GoUInt16)), ((4253 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4957 : GoUInt16)), ((4959 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5906 : GoUInt16)), ((5908 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5938 : GoUInt16)), ((5940 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5970 : GoUInt16)), ((5971 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6002 : GoUInt16)), ((6003 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6068 : GoUInt16)), ((6099 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6109 : GoUInt16)), ((6155 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((6156 : GoUInt16)), ((6157 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6277 : GoUInt16)), ((6278 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6313 : GoUInt16)), ((6432 : GoUInt16)), ((119 : GoUInt16))).__copy__(),
new Range16(((6433 : GoUInt16)), ((6443 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6448 : GoUInt16)), ((6459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6679 : GoUInt16)), ((6683 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6741 : GoUInt16)), ((6750 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6752 : GoUInt16)), ((6780 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6783 : GoUInt16)), ((6832 : GoUInt16)), ((49 : GoUInt16))).__copy__(),
new Range16(((6833 : GoUInt16)), ((6848 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6912 : GoUInt16)), ((6916 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6964 : GoUInt16)), ((6980 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7019 : GoUInt16)), ((7027 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7040 : GoUInt16)), ((7042 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7073 : GoUInt16)), ((7085 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7142 : GoUInt16)), ((7155 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7204 : GoUInt16)), ((7223 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7376 : GoUInt16)), ((7378 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7380 : GoUInt16)), ((7400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7405 : GoUInt16)), ((7412 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((7415 : GoUInt16)), ((7417 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7616 : GoUInt16)), ((7673 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7675 : GoUInt16)), ((7679 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8400 : GoUInt16)), ((8432 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11503 : GoUInt16)), ((11505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11647 : GoUInt16)), ((11744 : GoUInt16)), ((97 : GoUInt16))).__copy__(),
new Range16(((11745 : GoUInt16)), ((11775 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12330 : GoUInt16)), ((12335 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12441 : GoUInt16)), ((12442 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42607 : GoUInt16)), ((42610 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42612 : GoUInt16)), ((42621 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42654 : GoUInt16)), ((42655 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42736 : GoUInt16)), ((42737 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43010 : GoUInt16)), ((43014 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43019 : GoUInt16)), ((43043 : GoUInt16)), ((24 : GoUInt16))).__copy__(),
new Range16(((43044 : GoUInt16)), ((43047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43052 : GoUInt16)), ((43136 : GoUInt16)), ((84 : GoUInt16))).__copy__(),
new Range16(((43137 : GoUInt16)), ((43188 : GoUInt16)), ((51 : GoUInt16))).__copy__(),
new Range16(((43189 : GoUInt16)), ((43205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43232 : GoUInt16)), ((43249 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43263 : GoUInt16)), ((43302 : GoUInt16)), ((39 : GoUInt16))).__copy__(),
new Range16(((43303 : GoUInt16)), ((43309 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43335 : GoUInt16)), ((43347 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43392 : GoUInt16)), ((43395 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43443 : GoUInt16)), ((43456 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43493 : GoUInt16)), ((43561 : GoUInt16)), ((68 : GoUInt16))).__copy__(),
new Range16(((43562 : GoUInt16)), ((43574 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43587 : GoUInt16)), ((43596 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((43597 : GoUInt16)), ((43643 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((43644 : GoUInt16)), ((43645 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43696 : GoUInt16)), ((43698 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((43699 : GoUInt16)), ((43700 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43703 : GoUInt16)), ((43704 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43710 : GoUInt16)), ((43711 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43713 : GoUInt16)), ((43755 : GoUInt16)), ((42 : GoUInt16))).__copy__(),
new Range16(((43756 : GoUInt16)), ((43759 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43765 : GoUInt16)), ((43766 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44003 : GoUInt16)), ((44010 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44012 : GoUInt16)), ((44013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64286 : GoUInt16)), ((65024 : GoUInt16)), ((738 : GoUInt16))).__copy__(),
new Range16(((65025 : GoUInt16)), ((65039 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65056 : GoUInt16)), ((65071 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66045 : GoUInt32)), ((66272 : GoUInt32)), ((227 : GoUInt32))).__copy__(),
new Range32(((66422 : GoUInt32)), ((66426 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68097 : GoUInt32)), ((68099 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68101 : GoUInt32)), ((68102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68108 : GoUInt32)), ((68111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68152 : GoUInt32)), ((68154 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68159 : GoUInt32)), ((68325 : GoUInt32)), ((166 : GoUInt32))).__copy__(),
new Range32(((68326 : GoUInt32)), ((68900 : GoUInt32)), ((574 : GoUInt32))).__copy__(),
new Range32(((68901 : GoUInt32)), ((68903 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69291 : GoUInt32)), ((69292 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69446 : GoUInt32)), ((69456 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69632 : GoUInt32)), ((69634 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69688 : GoUInt32)), ((69702 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69759 : GoUInt32)), ((69762 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69808 : GoUInt32)), ((69818 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69888 : GoUInt32)), ((69890 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69927 : GoUInt32)), ((69940 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69957 : GoUInt32)), ((69958 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70003 : GoUInt32)), ((70016 : GoUInt32)), ((13 : GoUInt32))).__copy__(),
new Range32(((70017 : GoUInt32)), ((70018 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70067 : GoUInt32)), ((70080 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70089 : GoUInt32)), ((70092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70094 : GoUInt32)), ((70095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70188 : GoUInt32)), ((70199 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70206 : GoUInt32)), ((70367 : GoUInt32)), ((161 : GoUInt32))).__copy__(),
new Range32(((70368 : GoUInt32)), ((70378 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70400 : GoUInt32)), ((70403 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70459 : GoUInt32)), ((70460 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70462 : GoUInt32)), ((70468 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70471 : GoUInt32)), ((70472 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70475 : GoUInt32)), ((70477 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70487 : GoUInt32)), ((70498 : GoUInt32)), ((11 : GoUInt32))).__copy__(),
new Range32(((70499 : GoUInt32)), ((70502 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((70503 : GoUInt32)), ((70508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70512 : GoUInt32)), ((70516 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70709 : GoUInt32)), ((70726 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70750 : GoUInt32)), ((70832 : GoUInt32)), ((82 : GoUInt32))).__copy__(),
new Range32(((70833 : GoUInt32)), ((70851 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71087 : GoUInt32)), ((71093 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71096 : GoUInt32)), ((71104 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71132 : GoUInt32)), ((71133 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71216 : GoUInt32)), ((71232 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71339 : GoUInt32)), ((71351 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71453 : GoUInt32)), ((71467 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71724 : GoUInt32)), ((71738 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71984 : GoUInt32)), ((71989 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71991 : GoUInt32)), ((71992 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71995 : GoUInt32)), ((71998 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72000 : GoUInt32)), ((72002 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72003 : GoUInt32)), ((72145 : GoUInt32)), ((142 : GoUInt32))).__copy__(),
new Range32(((72146 : GoUInt32)), ((72151 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72154 : GoUInt32)), ((72160 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72164 : GoUInt32)), ((72193 : GoUInt32)), ((29 : GoUInt32))).__copy__(),
new Range32(((72194 : GoUInt32)), ((72202 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72243 : GoUInt32)), ((72249 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72251 : GoUInt32)), ((72254 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72263 : GoUInt32)), ((72273 : GoUInt32)), ((10 : GoUInt32))).__copy__(),
new Range32(((72274 : GoUInt32)), ((72283 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72330 : GoUInt32)), ((72345 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72751 : GoUInt32)), ((72758 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72760 : GoUInt32)), ((72767 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72850 : GoUInt32)), ((72871 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72873 : GoUInt32)), ((72886 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73009 : GoUInt32)), ((73014 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73018 : GoUInt32)), ((73020 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73021 : GoUInt32)), ((73023 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73024 : GoUInt32)), ((73029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73031 : GoUInt32)), ((73098 : GoUInt32)), ((67 : GoUInt32))).__copy__(),
new Range32(((73099 : GoUInt32)), ((73102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73104 : GoUInt32)), ((73105 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73107 : GoUInt32)), ((73111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73459 : GoUInt32)), ((73462 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92912 : GoUInt32)), ((92916 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92976 : GoUInt32)), ((92982 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94031 : GoUInt32)), ((94033 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((94034 : GoUInt32)), ((94087 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94095 : GoUInt32)), ((94098 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94180 : GoUInt32)), ((94192 : GoUInt32)), ((12 : GoUInt32))).__copy__(),
new Range32(((94193 : GoUInt32)), ((113821 : GoUInt32)), ((19628 : GoUInt32))).__copy__(),
new Range32(((113822 : GoUInt32)), ((119141 : GoUInt32)), ((5319 : GoUInt32))).__copy__(),
new Range32(((119142 : GoUInt32)), ((119145 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119149 : GoUInt32)), ((119154 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119163 : GoUInt32)), ((119170 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119173 : GoUInt32)), ((119179 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119210 : GoUInt32)), ((119213 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119362 : GoUInt32)), ((119364 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121344 : GoUInt32)), ((121398 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121403 : GoUInt32)), ((121452 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121461 : GoUInt32)), ((121476 : GoUInt32)), ((15 : GoUInt32))).__copy__(),
new Range32(((121499 : GoUInt32)), ((121503 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((121505 : GoUInt32)), ((121519 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122880 : GoUInt32)), ((122886 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122888 : GoUInt32)), ((122904 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122907 : GoUInt32)), ((122913 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122915 : GoUInt32)), ((122916 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122918 : GoUInt32)), ((122922 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123184 : GoUInt32)), ((123190 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123628 : GoUInt32)), ((123631 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125136 : GoUInt32)), ((125142 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125252 : GoUInt32)), ((125258 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((917760 : GoUInt32)), ((917999 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var m : Pointer<RangeTable> = __M;
var __Mc : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((2307 : GoUInt16)), ((2363 : GoUInt16)), ((56 : GoUInt16))).__copy__(),
new Range16(((2366 : GoUInt16)), ((2368 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2377 : GoUInt16)), ((2380 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2382 : GoUInt16)), ((2383 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2434 : GoUInt16)), ((2435 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2494 : GoUInt16)), ((2496 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2503 : GoUInt16)), ((2504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2507 : GoUInt16)), ((2508 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2519 : GoUInt16)), ((2563 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((2622 : GoUInt16)), ((2624 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2691 : GoUInt16)), ((2750 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((2751 : GoUInt16)), ((2752 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2761 : GoUInt16)), ((2763 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2764 : GoUInt16)), ((2818 : GoUInt16)), ((54 : GoUInt16))).__copy__(),
new Range16(((2819 : GoUInt16)), ((2878 : GoUInt16)), ((59 : GoUInt16))).__copy__(),
new Range16(((2880 : GoUInt16)), ((2887 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((2888 : GoUInt16)), ((2891 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((2892 : GoUInt16)), ((2903 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((3006 : GoUInt16)), ((3007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3009 : GoUInt16)), ((3010 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3014 : GoUInt16)), ((3016 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3018 : GoUInt16)), ((3020 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3031 : GoUInt16)), ((3073 : GoUInt16)), ((42 : GoUInt16))).__copy__(),
new Range16(((3074 : GoUInt16)), ((3075 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3137 : GoUInt16)), ((3140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3202 : GoUInt16)), ((3203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3262 : GoUInt16)), ((3264 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3265 : GoUInt16)), ((3268 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3271 : GoUInt16)), ((3272 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3274 : GoUInt16)), ((3275 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3285 : GoUInt16)), ((3286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3330 : GoUInt16)), ((3331 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3390 : GoUInt16)), ((3392 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3398 : GoUInt16)), ((3400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3402 : GoUInt16)), ((3404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3415 : GoUInt16)), ((3458 : GoUInt16)), ((43 : GoUInt16))).__copy__(),
new Range16(((3459 : GoUInt16)), ((3535 : GoUInt16)), ((76 : GoUInt16))).__copy__(),
new Range16(((3536 : GoUInt16)), ((3537 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3544 : GoUInt16)), ((3551 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3570 : GoUInt16)), ((3571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3902 : GoUInt16)), ((3903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3967 : GoUInt16)), ((4139 : GoUInt16)), ((172 : GoUInt16))).__copy__(),
new Range16(((4140 : GoUInt16)), ((4145 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((4152 : GoUInt16)), ((4155 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((4156 : GoUInt16)), ((4182 : GoUInt16)), ((26 : GoUInt16))).__copy__(),
new Range16(((4183 : GoUInt16)), ((4194 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((4195 : GoUInt16)), ((4196 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4199 : GoUInt16)), ((4205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4227 : GoUInt16)), ((4228 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4231 : GoUInt16)), ((4236 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4239 : GoUInt16)), ((4250 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((4251 : GoUInt16)), ((4252 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6070 : GoUInt16)), ((6078 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((6079 : GoUInt16)), ((6085 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6087 : GoUInt16)), ((6088 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6435 : GoUInt16)), ((6438 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6441 : GoUInt16)), ((6443 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6448 : GoUInt16)), ((6449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6451 : GoUInt16)), ((6456 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6681 : GoUInt16)), ((6682 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6741 : GoUInt16)), ((6743 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((6753 : GoUInt16)), ((6755 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((6756 : GoUInt16)), ((6765 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((6766 : GoUInt16)), ((6770 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6916 : GoUInt16)), ((6965 : GoUInt16)), ((49 : GoUInt16))).__copy__(),
new Range16(((6971 : GoUInt16)), ((6973 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((6974 : GoUInt16)), ((6977 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6979 : GoUInt16)), ((6980 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7042 : GoUInt16)), ((7073 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((7078 : GoUInt16)), ((7079 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7082 : GoUInt16)), ((7143 : GoUInt16)), ((61 : GoUInt16))).__copy__(),
new Range16(((7146 : GoUInt16)), ((7148 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7150 : GoUInt16)), ((7154 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((7155 : GoUInt16)), ((7204 : GoUInt16)), ((49 : GoUInt16))).__copy__(),
new Range16(((7205 : GoUInt16)), ((7211 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7220 : GoUInt16)), ((7221 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7393 : GoUInt16)), ((7415 : GoUInt16)), ((22 : GoUInt16))).__copy__(),
new Range16(((12334 : GoUInt16)), ((12335 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43043 : GoUInt16)), ((43044 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43047 : GoUInt16)), ((43136 : GoUInt16)), ((89 : GoUInt16))).__copy__(),
new Range16(((43137 : GoUInt16)), ((43188 : GoUInt16)), ((51 : GoUInt16))).__copy__(),
new Range16(((43189 : GoUInt16)), ((43203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43346 : GoUInt16)), ((43347 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43395 : GoUInt16)), ((43444 : GoUInt16)), ((49 : GoUInt16))).__copy__(),
new Range16(((43445 : GoUInt16)), ((43450 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((43451 : GoUInt16)), ((43454 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((43455 : GoUInt16)), ((43456 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43567 : GoUInt16)), ((43568 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43571 : GoUInt16)), ((43572 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43597 : GoUInt16)), ((43643 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((43645 : GoUInt16)), ((43755 : GoUInt16)), ((110 : GoUInt16))).__copy__(),
new Range16(((43758 : GoUInt16)), ((43759 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43765 : GoUInt16)), ((44003 : GoUInt16)), ((238 : GoUInt16))).__copy__(),
new Range16(((44004 : GoUInt16)), ((44006 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((44007 : GoUInt16)), ((44009 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((44010 : GoUInt16)), ((44012 : GoUInt16)), ((2 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((69632 : GoUInt32)), ((69634 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((69762 : GoUInt32)), ((69808 : GoUInt32)), ((46 : GoUInt32))).__copy__(),
new Range32(((69809 : GoUInt32)), ((69810 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69815 : GoUInt32)), ((69816 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69932 : GoUInt32)), ((69957 : GoUInt32)), ((25 : GoUInt32))).__copy__(),
new Range32(((69958 : GoUInt32)), ((70018 : GoUInt32)), ((60 : GoUInt32))).__copy__(),
new Range32(((70067 : GoUInt32)), ((70069 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70079 : GoUInt32)), ((70080 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70094 : GoUInt32)), ((70188 : GoUInt32)), ((94 : GoUInt32))).__copy__(),
new Range32(((70189 : GoUInt32)), ((70190 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70194 : GoUInt32)), ((70195 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70197 : GoUInt32)), ((70368 : GoUInt32)), ((171 : GoUInt32))).__copy__(),
new Range32(((70369 : GoUInt32)), ((70370 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70402 : GoUInt32)), ((70403 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70462 : GoUInt32)), ((70463 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70465 : GoUInt32)), ((70468 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70471 : GoUInt32)), ((70472 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70475 : GoUInt32)), ((70477 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70487 : GoUInt32)), ((70498 : GoUInt32)), ((11 : GoUInt32))).__copy__(),
new Range32(((70499 : GoUInt32)), ((70709 : GoUInt32)), ((210 : GoUInt32))).__copy__(),
new Range32(((70710 : GoUInt32)), ((70711 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70720 : GoUInt32)), ((70721 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70725 : GoUInt32)), ((70832 : GoUInt32)), ((107 : GoUInt32))).__copy__(),
new Range32(((70833 : GoUInt32)), ((70834 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70841 : GoUInt32)), ((70843 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70844 : GoUInt32)), ((70846 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70849 : GoUInt32)), ((71087 : GoUInt32)), ((238 : GoUInt32))).__copy__(),
new Range32(((71088 : GoUInt32)), ((71089 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71096 : GoUInt32)), ((71099 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71102 : GoUInt32)), ((71216 : GoUInt32)), ((114 : GoUInt32))).__copy__(),
new Range32(((71217 : GoUInt32)), ((71218 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71227 : GoUInt32)), ((71228 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71230 : GoUInt32)), ((71340 : GoUInt32)), ((110 : GoUInt32))).__copy__(),
new Range32(((71342 : GoUInt32)), ((71343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71350 : GoUInt32)), ((71456 : GoUInt32)), ((106 : GoUInt32))).__copy__(),
new Range32(((71457 : GoUInt32)), ((71462 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((71724 : GoUInt32)), ((71726 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71736 : GoUInt32)), ((71984 : GoUInt32)), ((248 : GoUInt32))).__copy__(),
new Range32(((71985 : GoUInt32)), ((71989 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71991 : GoUInt32)), ((71992 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71997 : GoUInt32)), ((72000 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((72002 : GoUInt32)), ((72145 : GoUInt32)), ((143 : GoUInt32))).__copy__(),
new Range32(((72146 : GoUInt32)), ((72147 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72156 : GoUInt32)), ((72159 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72164 : GoUInt32)), ((72249 : GoUInt32)), ((85 : GoUInt32))).__copy__(),
new Range32(((72279 : GoUInt32)), ((72280 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72343 : GoUInt32)), ((72751 : GoUInt32)), ((408 : GoUInt32))).__copy__(),
new Range32(((72766 : GoUInt32)), ((72873 : GoUInt32)), ((107 : GoUInt32))).__copy__(),
new Range32(((72881 : GoUInt32)), ((72884 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((73098 : GoUInt32)), ((73102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73107 : GoUInt32)), ((73108 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73110 : GoUInt32)), ((73461 : GoUInt32)), ((351 : GoUInt32))).__copy__(),
new Range32(((73462 : GoUInt32)), ((94033 : GoUInt32)), ((20571 : GoUInt32))).__copy__(),
new Range32(((94034 : GoUInt32)), ((94087 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94192 : GoUInt32)), ((94193 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119141 : GoUInt32)), ((119142 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119149 : GoUInt32)), ((119154 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var mc : Pointer<RangeTable> = __Mc;
var __Me : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1160 : GoUInt16)), ((1161 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6846 : GoUInt16)), ((8413 : GoUInt16)), ((1567 : GoUInt16))).__copy__(), new Range16(((8414 : GoUInt16)), ((8416 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8418 : GoUInt16)), ((8420 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((42608 : GoUInt16)), ((42610 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var me : Pointer<RangeTable> = __Me;
var mn : Pointer<RangeTable> = __Mn;
var __N : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((48 : GoUInt16)), ((57 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((178 : GoUInt16)), ((179 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((185 : GoUInt16)), ((188 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((189 : GoUInt16)), ((190 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1632 : GoUInt16)), ((1641 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1776 : GoUInt16)), ((1785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1984 : GoUInt16)), ((1993 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2406 : GoUInt16)), ((2415 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2534 : GoUInt16)), ((2543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2548 : GoUInt16)), ((2553 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2662 : GoUInt16)), ((2671 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2790 : GoUInt16)), ((2799 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2918 : GoUInt16)), ((2927 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2930 : GoUInt16)), ((2935 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3046 : GoUInt16)), ((3058 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3174 : GoUInt16)), ((3183 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3192 : GoUInt16)), ((3198 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3302 : GoUInt16)), ((3311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3416 : GoUInt16)), ((3422 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3430 : GoUInt16)), ((3448 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3558 : GoUInt16)), ((3567 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3664 : GoUInt16)), ((3673 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3792 : GoUInt16)), ((3801 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3872 : GoUInt16)), ((3891 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4160 : GoUInt16)), ((4169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4240 : GoUInt16)), ((4249 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4969 : GoUInt16)), ((4988 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5870 : GoUInt16)), ((5872 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6112 : GoUInt16)), ((6121 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6128 : GoUInt16)), ((6137 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6160 : GoUInt16)), ((6169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6470 : GoUInt16)), ((6479 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6608 : GoUInt16)), ((6618 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6784 : GoUInt16)), ((6793 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6800 : GoUInt16)), ((6809 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6992 : GoUInt16)), ((7001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7088 : GoUInt16)), ((7097 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7232 : GoUInt16)), ((7241 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7248 : GoUInt16)), ((7257 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8304 : GoUInt16)), ((8308 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8309 : GoUInt16)), ((8313 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8320 : GoUInt16)), ((8329 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8528 : GoUInt16)), ((8578 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8581 : GoUInt16)), ((8585 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9312 : GoUInt16)), ((9371 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9450 : GoUInt16)), ((9471 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10102 : GoUInt16)), ((10131 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11517 : GoUInt16)), ((12295 : GoUInt16)), ((778 : GoUInt16))).__copy__(),
new Range16(((12321 : GoUInt16)), ((12329 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12344 : GoUInt16)), ((12346 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12690 : GoUInt16)), ((12693 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12832 : GoUInt16)), ((12841 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12872 : GoUInt16)), ((12879 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12881 : GoUInt16)), ((12895 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12928 : GoUInt16)), ((12937 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12977 : GoUInt16)), ((12991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42528 : GoUInt16)), ((42537 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42726 : GoUInt16)), ((42735 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43056 : GoUInt16)), ((43061 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43216 : GoUInt16)), ((43225 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43264 : GoUInt16)), ((43273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43472 : GoUInt16)), ((43481 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43504 : GoUInt16)), ((43513 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43600 : GoUInt16)), ((43609 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44016 : GoUInt16)), ((44025 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65296 : GoUInt16)), ((65305 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65799 : GoUInt32)), ((65843 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65856 : GoUInt32)), ((65912 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65930 : GoUInt32)), ((65931 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66273 : GoUInt32)), ((66299 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66336 : GoUInt32)), ((66339 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66369 : GoUInt32)), ((66378 : GoUInt32)), ((9 : GoUInt32))).__copy__(),
new Range32(((66513 : GoUInt32)), ((66517 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66720 : GoUInt32)), ((66729 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67672 : GoUInt32)), ((67679 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67705 : GoUInt32)), ((67711 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67751 : GoUInt32)), ((67759 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67835 : GoUInt32)), ((67839 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67862 : GoUInt32)), ((67867 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68028 : GoUInt32)), ((68029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68032 : GoUInt32)), ((68047 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68050 : GoUInt32)), ((68095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68160 : GoUInt32)), ((68168 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68221 : GoUInt32)), ((68222 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68253 : GoUInt32)), ((68255 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68331 : GoUInt32)), ((68335 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68440 : GoUInt32)), ((68447 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68472 : GoUInt32)), ((68479 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68521 : GoUInt32)), ((68527 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68858 : GoUInt32)), ((68863 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68912 : GoUInt32)), ((68921 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69216 : GoUInt32)), ((69246 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69405 : GoUInt32)), ((69414 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69457 : GoUInt32)), ((69460 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69573 : GoUInt32)), ((69579 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69714 : GoUInt32)), ((69743 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69872 : GoUInt32)), ((69881 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69942 : GoUInt32)), ((69951 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70096 : GoUInt32)), ((70105 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70113 : GoUInt32)), ((70132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70384 : GoUInt32)), ((70393 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70736 : GoUInt32)), ((70745 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70864 : GoUInt32)), ((70873 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71248 : GoUInt32)), ((71257 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71360 : GoUInt32)), ((71369 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71472 : GoUInt32)), ((71483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71904 : GoUInt32)), ((71922 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72016 : GoUInt32)), ((72025 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72784 : GoUInt32)), ((72812 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73040 : GoUInt32)), ((73049 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73120 : GoUInt32)), ((73129 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73664 : GoUInt32)), ((73684 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((74752 : GoUInt32)), ((74862 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92768 : GoUInt32)), ((92777 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93008 : GoUInt32)), ((93017 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93019 : GoUInt32)), ((93025 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93824 : GoUInt32)), ((93846 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119520 : GoUInt32)), ((119539 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119648 : GoUInt32)), ((119672 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120782 : GoUInt32)), ((120831 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123200 : GoUInt32)), ((123209 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123632 : GoUInt32)), ((123641 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125127 : GoUInt32)), ((125135 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125264 : GoUInt32)), ((125273 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126065 : GoUInt32)), ((126123 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126125 : GoUInt32)), ((126127 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126129 : GoUInt32)), ((126132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126209 : GoUInt32)), ((126253 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126255 : GoUInt32)), ((126269 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127232 : GoUInt32)), ((127244 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((130032 : GoUInt32)), ((130041 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((4 : GoInt)) } : RangeTable)));
var n : Pointer<RangeTable> = __N;
var nd : Pointer<RangeTable> = __Nd;
var __Nl : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5870 : GoUInt16)), ((5872 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8544 : GoUInt16)), ((8578 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8581 : GoUInt16)), ((8584 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12295 : GoUInt16)), ((12321 : GoUInt16)), ((26 : GoUInt16))).__copy__(), new Range16(((12322 : GoUInt16)), ((12329 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12344 : GoUInt16)), ((12346 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((42726 : GoUInt16)), ((42735 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((65856 : GoUInt32)), ((65908 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66369 : GoUInt32)), ((66378 : GoUInt32)), ((9 : GoUInt32))).__copy__(), new Range32(((66513 : GoUInt32)), ((66517 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((74752 : GoUInt32)), ((74862 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var nl : Pointer<RangeTable> = __Nl;
var __No : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((178 : GoUInt16)), ((179 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((185 : GoUInt16)), ((188 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((189 : GoUInt16)), ((190 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2548 : GoUInt16)), ((2553 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2930 : GoUInt16)), ((2935 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3056 : GoUInt16)), ((3058 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3192 : GoUInt16)), ((3198 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3416 : GoUInt16)), ((3422 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3440 : GoUInt16)), ((3448 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3882 : GoUInt16)), ((3891 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4969 : GoUInt16)), ((4988 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6128 : GoUInt16)), ((6137 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6618 : GoUInt16)), ((8304 : GoUInt16)), ((1686 : GoUInt16))).__copy__(),
new Range16(((8308 : GoUInt16)), ((8313 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8320 : GoUInt16)), ((8329 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8528 : GoUInt16)), ((8543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8585 : GoUInt16)), ((9312 : GoUInt16)), ((727 : GoUInt16))).__copy__(),
new Range16(((9313 : GoUInt16)), ((9371 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9450 : GoUInt16)), ((9471 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10102 : GoUInt16)), ((10131 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11517 : GoUInt16)), ((12690 : GoUInt16)), ((1173 : GoUInt16))).__copy__(),
new Range16(((12691 : GoUInt16)), ((12693 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12832 : GoUInt16)), ((12841 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12872 : GoUInt16)), ((12879 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12881 : GoUInt16)), ((12895 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12928 : GoUInt16)), ((12937 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12977 : GoUInt16)), ((12991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43056 : GoUInt16)), ((43061 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65799 : GoUInt32)), ((65843 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65909 : GoUInt32)), ((65912 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65930 : GoUInt32)), ((65931 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66273 : GoUInt32)), ((66299 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66336 : GoUInt32)), ((66339 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67672 : GoUInt32)), ((67679 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67705 : GoUInt32)), ((67711 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67751 : GoUInt32)), ((67759 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67835 : GoUInt32)), ((67839 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((67862 : GoUInt32)), ((67867 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68028 : GoUInt32)), ((68029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68032 : GoUInt32)), ((68047 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68050 : GoUInt32)), ((68095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68160 : GoUInt32)), ((68168 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68221 : GoUInt32)), ((68222 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68253 : GoUInt32)), ((68255 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68331 : GoUInt32)), ((68335 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68440 : GoUInt32)), ((68447 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68472 : GoUInt32)), ((68479 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68521 : GoUInt32)), ((68527 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68858 : GoUInt32)), ((68863 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69216 : GoUInt32)), ((69246 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69405 : GoUInt32)), ((69414 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69457 : GoUInt32)), ((69460 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69573 : GoUInt32)), ((69579 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69714 : GoUInt32)), ((69733 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70113 : GoUInt32)), ((70132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71482 : GoUInt32)), ((71483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71914 : GoUInt32)), ((71922 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72794 : GoUInt32)), ((72812 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73664 : GoUInt32)), ((73684 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93019 : GoUInt32)), ((93025 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((93824 : GoUInt32)), ((93846 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119520 : GoUInt32)), ((119539 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119648 : GoUInt32)), ((119672 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125127 : GoUInt32)), ((125135 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126065 : GoUInt32)), ((126123 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126125 : GoUInt32)), ((126127 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126129 : GoUInt32)), ((126132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126209 : GoUInt32)), ((126253 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126255 : GoUInt32)), ((126269 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127232 : GoUInt32)), ((127244 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((3 : GoInt)) } : RangeTable)));
var no : Pointer<RangeTable> = __No;
var __P : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((33 : GoUInt16)), ((35 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((37 : GoUInt16)), ((42 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44 : GoUInt16)), ((47 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((58 : GoUInt16)), ((59 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((63 : GoUInt16)), ((64 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((91 : GoUInt16)), ((93 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((95 : GoUInt16)), ((123 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((125 : GoUInt16)), ((161 : GoUInt16)), ((36 : GoUInt16))).__copy__(),
new Range16(((167 : GoUInt16)), ((171 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((182 : GoUInt16)), ((183 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((187 : GoUInt16)), ((191 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((894 : GoUInt16)), ((903 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((1370 : GoUInt16)), ((1375 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1417 : GoUInt16)), ((1418 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1470 : GoUInt16)), ((1472 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1475 : GoUInt16)), ((1478 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1523 : GoUInt16)), ((1524 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1545 : GoUInt16)), ((1546 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1548 : GoUInt16)), ((1549 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1563 : GoUInt16)), ((1566 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1567 : GoUInt16)), ((1642 : GoUInt16)), ((75 : GoUInt16))).__copy__(),
new Range16(((1643 : GoUInt16)), ((1645 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1748 : GoUInt16)), ((1792 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((1793 : GoUInt16)), ((1805 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2039 : GoUInt16)), ((2041 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2096 : GoUInt16)), ((2110 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2142 : GoUInt16)), ((2404 : GoUInt16)), ((262 : GoUInt16))).__copy__(),
new Range16(((2405 : GoUInt16)), ((2416 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((2557 : GoUInt16)), ((2678 : GoUInt16)), ((121 : GoUInt16))).__copy__(),
new Range16(((2800 : GoUInt16)), ((3191 : GoUInt16)), ((391 : GoUInt16))).__copy__(),
new Range16(((3204 : GoUInt16)), ((3572 : GoUInt16)), ((368 : GoUInt16))).__copy__(),
new Range16(((3663 : GoUInt16)), ((3674 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((3675 : GoUInt16)), ((3844 : GoUInt16)), ((169 : GoUInt16))).__copy__(),
new Range16(((3845 : GoUInt16)), ((3858 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3860 : GoUInt16)), ((3898 : GoUInt16)), ((38 : GoUInt16))).__copy__(),
new Range16(((3899 : GoUInt16)), ((3901 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3973 : GoUInt16)), ((4048 : GoUInt16)), ((75 : GoUInt16))).__copy__(),
new Range16(((4049 : GoUInt16)), ((4052 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4057 : GoUInt16)), ((4058 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4170 : GoUInt16)), ((4175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4347 : GoUInt16)), ((4960 : GoUInt16)), ((613 : GoUInt16))).__copy__(),
new Range16(((4961 : GoUInt16)), ((4968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5120 : GoUInt16)), ((5742 : GoUInt16)), ((622 : GoUInt16))).__copy__(),
new Range16(((5787 : GoUInt16)), ((5788 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5867 : GoUInt16)), ((5869 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5941 : GoUInt16)), ((5942 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6100 : GoUInt16)), ((6102 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6104 : GoUInt16)), ((6106 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6144 : GoUInt16)), ((6154 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6468 : GoUInt16)), ((6469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6686 : GoUInt16)), ((6687 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6816 : GoUInt16)), ((6822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6824 : GoUInt16)), ((6829 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7002 : GoUInt16)), ((7008 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7164 : GoUInt16)), ((7167 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7227 : GoUInt16)), ((7231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7294 : GoUInt16)), ((7295 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7360 : GoUInt16)), ((7367 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7379 : GoUInt16)), ((8208 : GoUInt16)), ((829 : GoUInt16))).__copy__(),
new Range16(((8209 : GoUInt16)), ((8231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8240 : GoUInt16)), ((8259 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8261 : GoUInt16)), ((8273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8275 : GoUInt16)), ((8286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8317 : GoUInt16)), ((8318 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8333 : GoUInt16)), ((8334 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8968 : GoUInt16)), ((8971 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9001 : GoUInt16)), ((9002 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10088 : GoUInt16)), ((10101 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10181 : GoUInt16)), ((10182 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10214 : GoUInt16)), ((10223 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10627 : GoUInt16)), ((10648 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10712 : GoUInt16)), ((10715 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10748 : GoUInt16)), ((10749 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11513 : GoUInt16)), ((11516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11518 : GoUInt16)), ((11519 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11632 : GoUInt16)), ((11776 : GoUInt16)), ((144 : GoUInt16))).__copy__(),
new Range16(((11777 : GoUInt16)), ((11822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11824 : GoUInt16)), ((11855 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11858 : GoUInt16)), ((12289 : GoUInt16)), ((431 : GoUInt16))).__copy__(),
new Range16(((12290 : GoUInt16)), ((12291 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12296 : GoUInt16)), ((12305 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12308 : GoUInt16)), ((12319 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12336 : GoUInt16)), ((12349 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((12448 : GoUInt16)), ((12539 : GoUInt16)), ((91 : GoUInt16))).__copy__(),
new Range16(((42238 : GoUInt16)), ((42239 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42509 : GoUInt16)), ((42511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42611 : GoUInt16)), ((42622 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((42738 : GoUInt16)), ((42743 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43124 : GoUInt16)), ((43127 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43214 : GoUInt16)), ((43215 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43256 : GoUInt16)), ((43258 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43260 : GoUInt16)), ((43310 : GoUInt16)), ((50 : GoUInt16))).__copy__(),
new Range16(((43311 : GoUInt16)), ((43359 : GoUInt16)), ((48 : GoUInt16))).__copy__(),
new Range16(((43457 : GoUInt16)), ((43469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43486 : GoUInt16)), ((43487 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43612 : GoUInt16)), ((43615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43742 : GoUInt16)), ((43743 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43760 : GoUInt16)), ((43761 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44011 : GoUInt16)), ((64830 : GoUInt16)), ((20819 : GoUInt16))).__copy__(),
new Range16(((64831 : GoUInt16)), ((65040 : GoUInt16)), ((209 : GoUInt16))).__copy__(),
new Range16(((65041 : GoUInt16)), ((65049 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65072 : GoUInt16)), ((65106 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65108 : GoUInt16)), ((65121 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65123 : GoUInt16)), ((65128 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((65130 : GoUInt16)), ((65131 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65281 : GoUInt16)), ((65283 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65285 : GoUInt16)), ((65290 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65292 : GoUInt16)), ((65295 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65306 : GoUInt16)), ((65307 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65311 : GoUInt16)), ((65312 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65339 : GoUInt16)), ((65341 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65343 : GoUInt16)), ((65371 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((65373 : GoUInt16)), ((65375 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65376 : GoUInt16)), ((65381 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65792 : GoUInt32)), ((65794 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66463 : GoUInt32)), ((66512 : GoUInt32)), ((49 : GoUInt32))).__copy__(),
new Range32(((66927 : GoUInt32)), ((67671 : GoUInt32)), ((744 : GoUInt32))).__copy__(),
new Range32(((67871 : GoUInt32)), ((67903 : GoUInt32)), ((32 : GoUInt32))).__copy__(),
new Range32(((68176 : GoUInt32)), ((68184 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68223 : GoUInt32)), ((68336 : GoUInt32)), ((113 : GoUInt32))).__copy__(),
new Range32(((68337 : GoUInt32)), ((68342 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68409 : GoUInt32)), ((68415 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68505 : GoUInt32)), ((68508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69293 : GoUInt32)), ((69461 : GoUInt32)), ((168 : GoUInt32))).__copy__(),
new Range32(((69462 : GoUInt32)), ((69465 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69703 : GoUInt32)), ((69709 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69819 : GoUInt32)), ((69820 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69822 : GoUInt32)), ((69825 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69952 : GoUInt32)), ((69955 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70004 : GoUInt32)), ((70005 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70085 : GoUInt32)), ((70088 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70093 : GoUInt32)), ((70107 : GoUInt32)), ((14 : GoUInt32))).__copy__(),
new Range32(((70109 : GoUInt32)), ((70111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70200 : GoUInt32)), ((70205 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70313 : GoUInt32)), ((70731 : GoUInt32)), ((418 : GoUInt32))).__copy__(),
new Range32(((70732 : GoUInt32)), ((70735 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70746 : GoUInt32)), ((70747 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70749 : GoUInt32)), ((70854 : GoUInt32)), ((105 : GoUInt32))).__copy__(),
new Range32(((71105 : GoUInt32)), ((71127 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71233 : GoUInt32)), ((71235 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71264 : GoUInt32)), ((71276 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71484 : GoUInt32)), ((71486 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71739 : GoUInt32)), ((72004 : GoUInt32)), ((265 : GoUInt32))).__copy__(),
new Range32(((72005 : GoUInt32)), ((72006 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72162 : GoUInt32)), ((72255 : GoUInt32)), ((93 : GoUInt32))).__copy__(),
new Range32(((72256 : GoUInt32)), ((72262 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72346 : GoUInt32)), ((72348 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72350 : GoUInt32)), ((72354 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72769 : GoUInt32)), ((72773 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72816 : GoUInt32)), ((72817 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73463 : GoUInt32)), ((73464 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73727 : GoUInt32)), ((74864 : GoUInt32)), ((1137 : GoUInt32))).__copy__(),
new Range32(((74865 : GoUInt32)), ((74868 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92782 : GoUInt32)), ((92783 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92917 : GoUInt32)), ((92983 : GoUInt32)), ((66 : GoUInt32))).__copy__(),
new Range32(((92984 : GoUInt32)), ((92987 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92996 : GoUInt32)), ((93847 : GoUInt32)), ((851 : GoUInt32))).__copy__(),
new Range32(((93848 : GoUInt32)), ((93850 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94178 : GoUInt32)), ((113823 : GoUInt32)), ((19645 : GoUInt32))).__copy__(),
new Range32(((121479 : GoUInt32)), ((121483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125278 : GoUInt32)), ((125279 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((11 : GoInt)) } : RangeTable)));
var p : Pointer<RangeTable> = __P;
var pc : Pointer<RangeTable> = __Pc;
var pd : Pointer<RangeTable> = __Pd;
var pe : Pointer<RangeTable> = __Pe;
var pf : Pointer<RangeTable> = __Pf;
var pi : Pointer<RangeTable> = __Pi;
var po : Pointer<RangeTable> = __Po;
var ps : Pointer<RangeTable> = __Ps;
var s : Pointer<RangeTable> = __S;
var sc : Pointer<RangeTable> = __Sc;
var sk : Pointer<RangeTable> = __Sk;
var sm : Pointer<RangeTable> = __Sm;
var so : Pointer<RangeTable> = __So;
var z : Pointer<RangeTable> = __Z;
var __Zl : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((8232 : GoUInt16)), ((8232 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var zl : Pointer<RangeTable> = __Zl;
var __Zp : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((8233 : GoUInt16)), ((8233 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var zp : Pointer<RangeTable> = __Zp;
var __Zs : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((32 : GoUInt16)), ((160 : GoUInt16)), ((128 : GoUInt16))).__copy__(), new Range16(((5760 : GoUInt16)), ((8192 : GoUInt16)), ((2432 : GoUInt16))).__copy__(), new Range16(((8193 : GoUInt16)), ((8202 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8239 : GoUInt16)), ((8287 : GoUInt16)), ((48 : GoUInt16))).__copy__(), new Range16(((12288 : GoUInt16)), ((12288 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((1 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var zs : Pointer<RangeTable> = __Zs;
var categories : GoMap<GoString, Pointer<RangeTable>> = new GoMap<GoString, Pointer<RangeTable>>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range16", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }]))) }, { name : "r32", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range32", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }]))) }, { name : "latinOffset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))),
{ key : "C", value : c },
{ key : "Cc", value : cc },
{ key : "Cf", value : cf },
{ key : "Co", value : co },
{ key : "Cs", value : cs },
{ key : "L", value : l },
{ key : "Ll", value : ll },
{ key : "Lm", value : lm },
{ key : "Lo", value : lo },
{ key : "Lt", value : lt },
{ key : "Lu", value : lu },
{ key : "M", value : m },
{ key : "Mc", value : mc },
{ key : "Me", value : me },
{ key : "Mn", value : mn },
{ key : "N", value : n },
{ key : "Nd", value : nd },
{ key : "Nl", value : nl },
{ key : "No", value : no },
{ key : "P", value : p },
{ key : "Pc", value : pc },
{ key : "Pd", value : pd },
{ key : "Pe", value : pe },
{ key : "Pf", value : pf },
{ key : "Pi", value : pi },
{ key : "Po", value : po },
{ key : "Ps", value : ps },
{ key : "S", value : s },
{ key : "Sc", value : sc },
{ key : "Sk", value : sk },
{ key : "Sm", value : sm },
{ key : "So", value : so },
{ key : "Z", value : z },
{ key : "Zl", value : zl },
{ key : "Zp", value : zp },
{ key : "Zs", value : zs });
var __Soyombo : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72272 : GoUInt32)), ((72354 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var soyombo : Pointer<RangeTable> = __Soyombo;
var __Tibetan : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((3840 : GoUInt16)), ((3911 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3913 : GoUInt16)), ((3948 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3953 : GoUInt16)), ((3991 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3993 : GoUInt16)), ((4028 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((4030 : GoUInt16)), ((4044 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((4046 : GoUInt16)), ((4052 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((4057 : GoUInt16)), ((4058 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var _foldGreek : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((181 : GoUInt16)), ((837 : GoUInt16)), ((656 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Chakma : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69888 : GoUInt32)), ((69940 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69942 : GoUInt32)), ((69959 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var chakma : Pointer<RangeTable> = __Chakma;
var __Javanese : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43392 : GoUInt16)), ((43469 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43472 : GoUInt16)), ((43481 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43486 : GoUInt16)), ((43487 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var javanese : Pointer<RangeTable> = __Javanese;
var __Caucasian_Albanian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66864 : GoUInt32)), ((66915 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66927 : GoUInt32)), ((66927 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var caucasian_Albanian : Pointer<RangeTable> = __Caucasian_Albanian;
var __Tangut : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((94176 : GoUInt32)), ((94208 : GoUInt32)), ((32 : GoUInt32))).__copy__(), new Range32(((94209 : GoUInt32)), ((100343 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((100352 : GoUInt32)), ((101119 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((101632 : GoUInt32)), ((101640 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Elymaic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69600 : GoUInt32)), ((69622 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var elymaic : Pointer<RangeTable> = __Elymaic;
var __ASCII_Hex_Digit : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((48 : GoUInt16)), ((57 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65 : GoUInt16)), ((70 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((97 : GoUInt16)), ((102 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((3 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var ascii_Hex_Digit : Pointer<RangeTable> = __ASCII_Hex_Digit;
var meroitic_Hieroglyphs : Pointer<RangeTable> = __Meroitic_Hieroglyphs;
final maxASCII : GoInt32 = (("\u{007F}".code : GoRune));
var _foldInherited : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((921 : GoUInt16)), ((953 : GoUInt16)), ((32 : GoUInt16))).__copy__(), new Range16(((8126 : GoUInt16)), ((8126 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Glagolitic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((11264 : GoUInt16)), ((11310 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11312 : GoUInt16)), ((11358 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((122880 : GoUInt32)), ((122886 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((122888 : GoUInt32)), ((122904 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((122907 : GoUInt32)), ((122913 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((122915 : GoUInt32)), ((122916 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((122918 : GoUInt32)), ((122922 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var glagolitic : Pointer<RangeTable> = __Glagolitic;
var __Pau_Cin_Hau : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72384 : GoUInt32)), ((72440 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var pau_Cin_Hau : Pointer<RangeTable> = __Pau_Cin_Hau;
var __IDS_Trinary_Operator : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((12274 : GoUInt16)), ((12275 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Manichaean : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68288 : GoUInt32)), ((68326 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68331 : GoUInt32)), ((68342 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var manichaean : Pointer<RangeTable> = __Manichaean;
var __Nyiakeng_Puachue_Hmong : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((123136 : GoUInt32)), ((123180 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((123184 : GoUInt32)), ((123197 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((123200 : GoUInt32)), ((123209 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((123214 : GoUInt32)), ((123215 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
final maxRune : GoInt32 = (("\u{0010FFFF}".code : GoRune));
var __Pahawh_Hmong : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((92928 : GoUInt32)), ((92997 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((93008 : GoUInt32)), ((93017 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((93019 : GoUInt32)), ((93025 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((93027 : GoUInt32)), ((93047 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((93053 : GoUInt32)), ((93071 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var pahawh_Hmong : Pointer<RangeTable> = __Pahawh_Hmong;
var bassa_Vah : Pointer<RangeTable> = __Bassa_Vah;
var __Sinhala : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((3457 : GoUInt16)), ((3459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3461 : GoUInt16)), ((3478 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3482 : GoUInt16)), ((3505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3507 : GoUInt16)), ((3515 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3517 : GoUInt16)), ((3520 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3521 : GoUInt16)), ((3526 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3530 : GoUInt16)), ((3535 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((3536 : GoUInt16)), ((3540 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3542 : GoUInt16)), ((3544 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3545 : GoUInt16)), ((3551 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3558 : GoUInt16)), ((3567 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3570 : GoUInt16)), ((3572 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((70113 : GoUInt32)), ((70132 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var sinhala : Pointer<RangeTable> = __Sinhala;
var __Siddham : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71040 : GoUInt32)), ((71093 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71096 : GoUInt32)), ((71133 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var ids_Binary_Operator : Pointer<RangeTable> = __IDS_Binary_Operator;
var _foldCommon : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((924 : GoUInt16)), ((956 : GoUInt16)), ((32 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var __Noncharacter_Code_Point : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((64976 : GoUInt16)), ((65007 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65534 : GoUInt16)), ((65535 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((131070 : GoUInt32)), ((131071 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((196606 : GoUInt32)), ((196607 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((262142 : GoUInt32)), ((262143 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((327678 : GoUInt32)), ((327679 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((393214 : GoUInt32)), ((393215 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((458750 : GoUInt32)), ((458751 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((524286 : GoUInt32)), ((524287 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((589822 : GoUInt32)), ((589823 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((655358 : GoUInt32)), ((655359 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((720894 : GoUInt32)), ((720895 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((786430 : GoUInt32)), ((786431 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((851966 : GoUInt32)), ((851967 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((917502 : GoUInt32)), ((917503 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((983038 : GoUInt32)), ((983039 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((1048574 : GoUInt32)), ((1048575 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((1114110 : GoUInt32)), ((1114111 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var noncharacter_Code_Point : Pointer<RangeTable> = __Noncharacter_Code_Point;
var __Ideographic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((12294 : GoUInt16)), ((12295 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12321 : GoUInt16)), ((12329 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12344 : GoUInt16)), ((12346 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((13312 : GoUInt16)), ((19903 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((19968 : GoUInt16)), ((40956 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((63744 : GoUInt16)), ((64109 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64112 : GoUInt16)), ((64217 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((94180 : GoUInt32)), ((94208 : GoUInt32)), ((28 : GoUInt32))).__copy__(),
new Range32(((94209 : GoUInt32)), ((100343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((100352 : GoUInt32)), ((101589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((101632 : GoUInt32)), ((101640 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((110960 : GoUInt32)), ((111355 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((131072 : GoUInt32)), ((173789 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((173824 : GoUInt32)), ((177972 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((177984 : GoUInt32)), ((178205 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((178208 : GoUInt32)), ((183969 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((183984 : GoUInt32)), ((191456 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((194560 : GoUInt32)), ((195101 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((196608 : GoUInt32)), ((201546 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var ideographic : Pointer<RangeTable> = __Ideographic;
var __Diacritic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((94 : GoUInt16)), ((96 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((168 : GoUInt16)), ((175 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((180 : GoUInt16)), ((183 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((184 : GoUInt16)), ((688 : GoUInt16)), ((504 : GoUInt16))).__copy__(),
new Range16(((689 : GoUInt16)), ((846 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((848 : GoUInt16)), ((855 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((861 : GoUInt16)), ((866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((884 : GoUInt16)), ((885 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((890 : GoUInt16)), ((900 : GoUInt16)), ((10 : GoUInt16))).__copy__(),
new Range16(((901 : GoUInt16)), ((1155 : GoUInt16)), ((254 : GoUInt16))).__copy__(),
new Range16(((1156 : GoUInt16)), ((1159 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1369 : GoUInt16)), ((1425 : GoUInt16)), ((56 : GoUInt16))).__copy__(),
new Range16(((1426 : GoUInt16)), ((1441 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1443 : GoUInt16)), ((1469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1471 : GoUInt16)), ((1473 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1474 : GoUInt16)), ((1476 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1611 : GoUInt16)), ((1618 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1623 : GoUInt16)), ((1624 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1759 : GoUInt16)), ((1760 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1765 : GoUInt16)), ((1766 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1770 : GoUInt16)), ((1772 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1840 : GoUInt16)), ((1866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1958 : GoUInt16)), ((1968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2027 : GoUInt16)), ((2037 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2072 : GoUInt16)), ((2073 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2275 : GoUInt16)), ((2302 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2364 : GoUInt16)), ((2381 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((2385 : GoUInt16)), ((2388 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2417 : GoUInt16)), ((2492 : GoUInt16)), ((75 : GoUInt16))).__copy__(),
new Range16(((2509 : GoUInt16)), ((2620 : GoUInt16)), ((111 : GoUInt16))).__copy__(),
new Range16(((2637 : GoUInt16)), ((2748 : GoUInt16)), ((111 : GoUInt16))).__copy__(),
new Range16(((2765 : GoUInt16)), ((2813 : GoUInt16)), ((48 : GoUInt16))).__copy__(),
new Range16(((2814 : GoUInt16)), ((2815 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2876 : GoUInt16)), ((2893 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((2901 : GoUInt16)), ((3021 : GoUInt16)), ((120 : GoUInt16))).__copy__(),
new Range16(((3149 : GoUInt16)), ((3260 : GoUInt16)), ((111 : GoUInt16))).__copy__(),
new Range16(((3277 : GoUInt16)), ((3387 : GoUInt16)), ((110 : GoUInt16))).__copy__(),
new Range16(((3388 : GoUInt16)), ((3405 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((3530 : GoUInt16)), ((3655 : GoUInt16)), ((125 : GoUInt16))).__copy__(),
new Range16(((3656 : GoUInt16)), ((3660 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3662 : GoUInt16)), ((3770 : GoUInt16)), ((108 : GoUInt16))).__copy__(),
new Range16(((3784 : GoUInt16)), ((3788 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3864 : GoUInt16)), ((3865 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3893 : GoUInt16)), ((3897 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3902 : GoUInt16)), ((3903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3970 : GoUInt16)), ((3972 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3974 : GoUInt16)), ((3975 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4038 : GoUInt16)), ((4151 : GoUInt16)), ((113 : GoUInt16))).__copy__(),
new Range16(((4153 : GoUInt16)), ((4154 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4195 : GoUInt16)), ((4196 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4201 : GoUInt16)), ((4205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4231 : GoUInt16)), ((4237 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4239 : GoUInt16)), ((4250 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((4251 : GoUInt16)), ((4957 : GoUInt16)), ((706 : GoUInt16))).__copy__(),
new Range16(((4958 : GoUInt16)), ((4959 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6089 : GoUInt16)), ((6099 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6109 : GoUInt16)), ((6457 : GoUInt16)), ((348 : GoUInt16))).__copy__(),
new Range16(((6458 : GoUInt16)), ((6459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6773 : GoUInt16)), ((6780 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6783 : GoUInt16)), ((6832 : GoUInt16)), ((49 : GoUInt16))).__copy__(),
new Range16(((6833 : GoUInt16)), ((6845 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6964 : GoUInt16)), ((6980 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((7019 : GoUInt16)), ((7027 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7082 : GoUInt16)), ((7083 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7222 : GoUInt16)), ((7223 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7288 : GoUInt16)), ((7293 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7376 : GoUInt16)), ((7400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7405 : GoUInt16)), ((7412 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((7415 : GoUInt16)), ((7417 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7468 : GoUInt16)), ((7530 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7620 : GoUInt16)), ((7631 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7669 : GoUInt16)), ((7673 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7677 : GoUInt16)), ((7679 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8125 : GoUInt16)), ((8127 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8128 : GoUInt16)), ((8129 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8141 : GoUInt16)), ((8143 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8157 : GoUInt16)), ((8159 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8173 : GoUInt16)), ((8175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8189 : GoUInt16)), ((8190 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11503 : GoUInt16)), ((11505 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11823 : GoUInt16)), ((12330 : GoUInt16)), ((507 : GoUInt16))).__copy__(),
new Range16(((12331 : GoUInt16)), ((12335 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12441 : GoUInt16)), ((12444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12540 : GoUInt16)), ((42607 : GoUInt16)), ((30067 : GoUInt16))).__copy__(),
new Range16(((42620 : GoUInt16)), ((42621 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42623 : GoUInt16)), ((42652 : GoUInt16)), ((29 : GoUInt16))).__copy__(),
new Range16(((42653 : GoUInt16)), ((42736 : GoUInt16)), ((83 : GoUInt16))).__copy__(),
new Range16(((42737 : GoUInt16)), ((42752 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((42753 : GoUInt16)), ((42785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42888 : GoUInt16)), ((42890 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43000 : GoUInt16)), ((43001 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43204 : GoUInt16)), ((43232 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((43233 : GoUInt16)), ((43249 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43307 : GoUInt16)), ((43310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43347 : GoUInt16)), ((43443 : GoUInt16)), ((96 : GoUInt16))).__copy__(),
new Range16(((43456 : GoUInt16)), ((43493 : GoUInt16)), ((37 : GoUInt16))).__copy__(),
new Range16(((43643 : GoUInt16)), ((43645 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43711 : GoUInt16)), ((43714 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43766 : GoUInt16)), ((43867 : GoUInt16)), ((101 : GoUInt16))).__copy__(),
new Range16(((43868 : GoUInt16)), ((43871 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43881 : GoUInt16)), ((43883 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44012 : GoUInt16)), ((44013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64286 : GoUInt16)), ((65056 : GoUInt16)), ((770 : GoUInt16))).__copy__(),
new Range16(((65057 : GoUInt16)), ((65071 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65342 : GoUInt16)), ((65344 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65392 : GoUInt16)), ((65438 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((65439 : GoUInt16)), ((65507 : GoUInt16)), ((68 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66272 : GoUInt32)), ((68325 : GoUInt32)), ((2053 : GoUInt32))).__copy__(),
new Range32(((68326 : GoUInt32)), ((68898 : GoUInt32)), ((572 : GoUInt32))).__copy__(),
new Range32(((68899 : GoUInt32)), ((68903 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69446 : GoUInt32)), ((69456 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69817 : GoUInt32)), ((69818 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69939 : GoUInt32)), ((69940 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70003 : GoUInt32)), ((70080 : GoUInt32)), ((77 : GoUInt32))).__copy__(),
new Range32(((70090 : GoUInt32)), ((70092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70197 : GoUInt32)), ((70198 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70377 : GoUInt32)), ((70378 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70460 : GoUInt32)), ((70477 : GoUInt32)), ((17 : GoUInt32))).__copy__(),
new Range32(((70502 : GoUInt32)), ((70508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70512 : GoUInt32)), ((70516 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70722 : GoUInt32)), ((70726 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((70850 : GoUInt32)), ((70851 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71103 : GoUInt32)), ((71104 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71231 : GoUInt32)), ((71350 : GoUInt32)), ((119 : GoUInt32))).__copy__(),
new Range32(((71351 : GoUInt32)), ((71467 : GoUInt32)), ((116 : GoUInt32))).__copy__(),
new Range32(((71737 : GoUInt32)), ((71738 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71997 : GoUInt32)), ((71998 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72003 : GoUInt32)), ((72160 : GoUInt32)), ((157 : GoUInt32))).__copy__(),
new Range32(((72244 : GoUInt32)), ((72263 : GoUInt32)), ((19 : GoUInt32))).__copy__(),
new Range32(((72345 : GoUInt32)), ((72767 : GoUInt32)), ((422 : GoUInt32))).__copy__(),
new Range32(((73026 : GoUInt32)), ((73028 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73029 : GoUInt32)), ((73111 : GoUInt32)), ((82 : GoUInt32))).__copy__(),
new Range32(((92912 : GoUInt32)), ((92916 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92976 : GoUInt32)), ((92982 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94095 : GoUInt32)), ((94111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94192 : GoUInt32)), ((94193 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119143 : GoUInt32)), ((119145 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119149 : GoUInt32)), ((119154 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119163 : GoUInt32)), ((119170 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119173 : GoUInt32)), ((119179 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119210 : GoUInt32)), ((119213 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123184 : GoUInt32)), ((123190 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((123628 : GoUInt32)), ((123631 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125136 : GoUInt32)), ((125142 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125252 : GoUInt32)), ((125254 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125256 : GoUInt32)), ((125258 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((3 : GoInt)) } : RangeTable)));
var _foldLl : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((65 : GoUInt16)), ((90 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((192 : GoUInt16)), ((214 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((216 : GoUInt16)), ((222 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((256 : GoUInt16)), ((302 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((306 : GoUInt16)), ((310 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((313 : GoUInt16)), ((327 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((330 : GoUInt16)), ((376 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((377 : GoUInt16)), ((381 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((385 : GoUInt16)), ((386 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((388 : GoUInt16)), ((390 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((391 : GoUInt16)), ((393 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((394 : GoUInt16)), ((395 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((398 : GoUInt16)), ((401 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((403 : GoUInt16)), ((404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((406 : GoUInt16)), ((408 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((412 : GoUInt16)), ((413 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((415 : GoUInt16)), ((416 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((418 : GoUInt16)), ((422 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((423 : GoUInt16)), ((425 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((428 : GoUInt16)), ((430 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((431 : GoUInt16)), ((433 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((434 : GoUInt16)), ((435 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((437 : GoUInt16)), ((439 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((440 : GoUInt16)), ((444 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((452 : GoUInt16)), ((453 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((455 : GoUInt16)), ((456 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((458 : GoUInt16)), ((459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((461 : GoUInt16)), ((475 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((478 : GoUInt16)), ((494 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((497 : GoUInt16)), ((498 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((500 : GoUInt16)), ((502 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((503 : GoUInt16)), ((504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((506 : GoUInt16)), ((562 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((570 : GoUInt16)), ((571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((573 : GoUInt16)), ((574 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((577 : GoUInt16)), ((579 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((580 : GoUInt16)), ((582 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((584 : GoUInt16)), ((590 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((837 : GoUInt16)), ((880 : GoUInt16)), ((43 : GoUInt16))).__copy__(),
new Range16(((882 : GoUInt16)), ((886 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((895 : GoUInt16)), ((902 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((904 : GoUInt16)), ((906 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((908 : GoUInt16)), ((910 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((911 : GoUInt16)), ((913 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((914 : GoUInt16)), ((929 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((931 : GoUInt16)), ((939 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((975 : GoUInt16)), ((984 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((986 : GoUInt16)), ((1006 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1012 : GoUInt16)), ((1015 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1017 : GoUInt16)), ((1018 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1021 : GoUInt16)), ((1071 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1120 : GoUInt16)), ((1152 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1162 : GoUInt16)), ((1216 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1217 : GoUInt16)), ((1229 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1232 : GoUInt16)), ((1326 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1329 : GoUInt16)), ((1366 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4256 : GoUInt16)), ((4293 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4295 : GoUInt16)), ((4301 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((5024 : GoUInt16)), ((5109 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7312 : GoUInt16)), ((7354 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7357 : GoUInt16)), ((7359 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7680 : GoUInt16)), ((7828 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7838 : GoUInt16)), ((7934 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7944 : GoUInt16)), ((7951 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7960 : GoUInt16)), ((7965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7976 : GoUInt16)), ((7983 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7992 : GoUInt16)), ((7999 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8008 : GoUInt16)), ((8013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8025 : GoUInt16)), ((8031 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8040 : GoUInt16)), ((8047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8072 : GoUInt16)), ((8079 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8088 : GoUInt16)), ((8095 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8104 : GoUInt16)), ((8111 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8120 : GoUInt16)), ((8124 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8136 : GoUInt16)), ((8140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8152 : GoUInt16)), ((8155 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8168 : GoUInt16)), ((8172 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8184 : GoUInt16)), ((8188 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8486 : GoUInt16)), ((8490 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8491 : GoUInt16)), ((8498 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((8579 : GoUInt16)), ((11264 : GoUInt16)), ((2685 : GoUInt16))).__copy__(),
new Range16(((11265 : GoUInt16)), ((11310 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11360 : GoUInt16)), ((11362 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11363 : GoUInt16)), ((11364 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11367 : GoUInt16)), ((11373 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11374 : GoUInt16)), ((11376 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11378 : GoUInt16)), ((11381 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11390 : GoUInt16)), ((11392 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11394 : GoUInt16)), ((11490 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11499 : GoUInt16)), ((11501 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11506 : GoUInt16)), ((42560 : GoUInt16)), ((31054 : GoUInt16))).__copy__(),
new Range16(((42562 : GoUInt16)), ((42604 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42624 : GoUInt16)), ((42650 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42786 : GoUInt16)), ((42798 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42802 : GoUInt16)), ((42862 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42873 : GoUInt16)), ((42877 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42878 : GoUInt16)), ((42886 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42891 : GoUInt16)), ((42893 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42896 : GoUInt16)), ((42898 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42902 : GoUInt16)), ((42922 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42923 : GoUInt16)), ((42926 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42928 : GoUInt16)), ((42932 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42934 : GoUInt16)), ((42942 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42946 : GoUInt16)), ((42948 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42949 : GoUInt16)), ((42951 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42953 : GoUInt16)), ((42997 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((65313 : GoUInt16)), ((65338 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((66560 : GoUInt32)), ((66599 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66736 : GoUInt32)), ((66771 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68736 : GoUInt32)), ((68786 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71840 : GoUInt32)), ((71871 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((93760 : GoUInt32)), ((93791 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125184 : GoUInt32)), ((125217 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((3 : GoInt)) } : RangeTable)));
var _foldLt : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((452 : GoUInt16)), ((454 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((455 : GoUInt16)), ((457 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((458 : GoUInt16)), ((460 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((497 : GoUInt16)), ((499 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((8064 : GoUInt16)), ((8071 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8080 : GoUInt16)), ((8087 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8096 : GoUInt16)), ((8103 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8115 : GoUInt16)), ((8131 : GoUInt16)), ((16 : GoUInt16))).__copy__(), new Range16(((8179 : GoUInt16)), ((8179 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var _foldLu : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((97 : GoUInt16)), ((122 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((181 : GoUInt16)), ((223 : GoUInt16)), ((42 : GoUInt16))).__copy__(),
new Range16(((224 : GoUInt16)), ((246 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((248 : GoUInt16)), ((255 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((257 : GoUInt16)), ((303 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((307 : GoUInt16)), ((311 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((314 : GoUInt16)), ((328 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((331 : GoUInt16)), ((375 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((378 : GoUInt16)), ((382 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((383 : GoUInt16)), ((384 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((387 : GoUInt16)), ((389 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((392 : GoUInt16)), ((396 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((402 : GoUInt16)), ((405 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((409 : GoUInt16)), ((410 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((414 : GoUInt16)), ((417 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((419 : GoUInt16)), ((421 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((424 : GoUInt16)), ((429 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((432 : GoUInt16)), ((436 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((438 : GoUInt16)), ((441 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((445 : GoUInt16)), ((447 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((453 : GoUInt16)), ((454 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((456 : GoUInt16)), ((457 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((459 : GoUInt16)), ((460 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((462 : GoUInt16)), ((476 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((477 : GoUInt16)), ((495 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((498 : GoUInt16)), ((499 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((501 : GoUInt16)), ((505 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((507 : GoUInt16)), ((543 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((547 : GoUInt16)), ((563 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((572 : GoUInt16)), ((575 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((576 : GoUInt16)), ((578 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((583 : GoUInt16)), ((591 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((592 : GoUInt16)), ((596 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((598 : GoUInt16)), ((599 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((601 : GoUInt16)), ((603 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((604 : GoUInt16)), ((608 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((609 : GoUInt16)), ((613 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((614 : GoUInt16)), ((616 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((617 : GoUInt16)), ((620 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((623 : GoUInt16)), ((625 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((626 : GoUInt16)), ((629 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((637 : GoUInt16)), ((640 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((642 : GoUInt16)), ((643 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((647 : GoUInt16)), ((652 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((658 : GoUInt16)), ((669 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((670 : GoUInt16)), ((837 : GoUInt16)), ((167 : GoUInt16))).__copy__(),
new Range16(((881 : GoUInt16)), ((883 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((887 : GoUInt16)), ((891 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((892 : GoUInt16)), ((893 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((940 : GoUInt16)), ((943 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((945 : GoUInt16)), ((974 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((976 : GoUInt16)), ((977 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((981 : GoUInt16)), ((983 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((985 : GoUInt16)), ((1007 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1008 : GoUInt16)), ((1011 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1013 : GoUInt16)), ((1019 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1072 : GoUInt16)), ((1119 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1121 : GoUInt16)), ((1153 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1163 : GoUInt16)), ((1215 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1218 : GoUInt16)), ((1230 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1231 : GoUInt16)), ((1327 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1377 : GoUInt16)), ((1414 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4304 : GoUInt16)), ((4346 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4349 : GoUInt16)), ((4351 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5112 : GoUInt16)), ((5117 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7296 : GoUInt16)), ((7304 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7545 : GoUInt16)), ((7549 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((7566 : GoUInt16)), ((7681 : GoUInt16)), ((115 : GoUInt16))).__copy__(),
new Range16(((7683 : GoUInt16)), ((7829 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7835 : GoUInt16)), ((7841 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((7843 : GoUInt16)), ((7935 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((7936 : GoUInt16)), ((7943 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7952 : GoUInt16)), ((7957 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7968 : GoUInt16)), ((7975 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7984 : GoUInt16)), ((7991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8000 : GoUInt16)), ((8005 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8017 : GoUInt16)), ((8023 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8032 : GoUInt16)), ((8039 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8048 : GoUInt16)), ((8061 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8112 : GoUInt16)), ((8113 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8126 : GoUInt16)), ((8144 : GoUInt16)), ((18 : GoUInt16))).__copy__(),
new Range16(((8145 : GoUInt16)), ((8160 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((8161 : GoUInt16)), ((8165 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8526 : GoUInt16)), ((8580 : GoUInt16)), ((54 : GoUInt16))).__copy__(),
new Range16(((11312 : GoUInt16)), ((11358 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11361 : GoUInt16)), ((11365 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((11366 : GoUInt16)), ((11372 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11379 : GoUInt16)), ((11382 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((11393 : GoUInt16)), ((11491 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11500 : GoUInt16)), ((11502 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((11507 : GoUInt16)), ((11520 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((11521 : GoUInt16)), ((11557 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11559 : GoUInt16)), ((11565 : GoUInt16)), ((6 : GoUInt16))).__copy__(),
new Range16(((42561 : GoUInt16)), ((42605 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42625 : GoUInt16)), ((42651 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42787 : GoUInt16)), ((42799 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42803 : GoUInt16)), ((42863 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42874 : GoUInt16)), ((42876 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42879 : GoUInt16)), ((42887 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42892 : GoUInt16)), ((42897 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((42899 : GoUInt16)), ((42900 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42903 : GoUInt16)), ((42921 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42933 : GoUInt16)), ((42943 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((42947 : GoUInt16)), ((42952 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((42954 : GoUInt16)), ((42998 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((43859 : GoUInt16)), ((43888 : GoUInt16)), ((29 : GoUInt16))).__copy__(),
new Range16(((43889 : GoUInt16)), ((43967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65345 : GoUInt16)), ((65370 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((66600 : GoUInt32)), ((66639 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66776 : GoUInt32)), ((66811 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68800 : GoUInt32)), ((68850 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71872 : GoUInt32)), ((71903 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((93792 : GoUInt32)), ((93823 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125218 : GoUInt32)), ((125251 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((4 : GoInt)) } : RangeTable)));
var foldCategory : GoMap<GoString, Pointer<RangeTable>> = new GoMap<GoString, Pointer<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range16", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }]))) }, { name : "r32", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range32", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }]))) }, { name : "latinOffset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))), { key : "L", value : _foldL }, { key : "Ll", value : _foldLl }, { key : "Lt", value : _foldLt }, { key : "Lu", value : _foldLu }, { key : "M", value : _foldM }, { key : "Mn", value : _foldMn });
var __Telugu : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((3072 : GoUInt16)), ((3084 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3086 : GoUInt16)), ((3088 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3090 : GoUInt16)), ((3112 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3114 : GoUInt16)), ((3129 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3133 : GoUInt16)), ((3140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3142 : GoUInt16)), ((3144 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3146 : GoUInt16)), ((3149 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3157 : GoUInt16)), ((3158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3160 : GoUInt16)), ((3162 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3168 : GoUInt16)), ((3171 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3174 : GoUInt16)), ((3183 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3191 : GoUInt16)), ((3199 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var telugu : Pointer<RangeTable> = __Telugu;
var __Old_Sogdian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69376 : GoUInt32)), ((69415 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_Sogdian : Pointer<RangeTable> = __Old_Sogdian;
var __Linear_A : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67072 : GoUInt32)), ((67382 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67392 : GoUInt32)), ((67413 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67424 : GoUInt32)), ((67431 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var linear_A : Pointer<RangeTable> = __Linear_A;
final _pC : GoUnTypedInt = (((1 : GoUnTypedInt)) << (0 : GoUnTypedInt));
var __Linear_B : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((65536 : GoUInt32)), ((65547 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65549 : GoUInt32)), ((65574 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65576 : GoUInt32)), ((65594 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65596 : GoUInt32)), ((65597 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65599 : GoUInt32)), ((65613 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65616 : GoUInt32)), ((65629 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65664 : GoUInt32)), ((65786 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var linear_B : Pointer<RangeTable> = __Linear_B;
var __Buhid : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5952 : GoUInt16)), ((5971 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var buhid : Pointer<RangeTable> = __Buhid;
var __Inscriptional_Pahlavi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68448 : GoUInt32)), ((68466 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68472 : GoUInt32)), ((68479 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Terminal_Punctuation : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((33 : GoUInt16)), ((44 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((46 : GoUInt16)), ((58 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((59 : GoUInt16)), ((63 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((894 : GoUInt16)), ((903 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((1417 : GoUInt16)), ((1475 : GoUInt16)), ((58 : GoUInt16))).__copy__(),
new Range16(((1548 : GoUInt16)), ((1563 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((1566 : GoUInt16)), ((1567 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1748 : GoUInt16)), ((1792 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((1793 : GoUInt16)), ((1802 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1804 : GoUInt16)), ((2040 : GoUInt16)), ((236 : GoUInt16))).__copy__(),
new Range16(((2041 : GoUInt16)), ((2096 : GoUInt16)), ((55 : GoUInt16))).__copy__(),
new Range16(((2097 : GoUInt16)), ((2110 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2142 : GoUInt16)), ((2404 : GoUInt16)), ((262 : GoUInt16))).__copy__(),
new Range16(((2405 : GoUInt16)), ((3674 : GoUInt16)), ((1269 : GoUInt16))).__copy__(),
new Range16(((3675 : GoUInt16)), ((3848 : GoUInt16)), ((173 : GoUInt16))).__copy__(),
new Range16(((3853 : GoUInt16)), ((3858 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4170 : GoUInt16)), ((4171 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4961 : GoUInt16)), ((4968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5742 : GoUInt16)), ((5867 : GoUInt16)), ((125 : GoUInt16))).__copy__(),
new Range16(((5868 : GoUInt16)), ((5869 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5941 : GoUInt16)), ((5942 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6100 : GoUInt16)), ((6102 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6106 : GoUInt16)), ((6146 : GoUInt16)), ((40 : GoUInt16))).__copy__(),
new Range16(((6147 : GoUInt16)), ((6149 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6152 : GoUInt16)), ((6153 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6468 : GoUInt16)), ((6469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6824 : GoUInt16)), ((6827 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7002 : GoUInt16)), ((7003 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7005 : GoUInt16)), ((7007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7227 : GoUInt16)), ((7231 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7294 : GoUInt16)), ((7295 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8252 : GoUInt16)), ((8253 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8263 : GoUInt16)), ((8265 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11822 : GoUInt16)), ((11836 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((11841 : GoUInt16)), ((11852 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((11854 : GoUInt16)), ((11855 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12289 : GoUInt16)), ((12290 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42238 : GoUInt16)), ((42239 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42509 : GoUInt16)), ((42511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42739 : GoUInt16)), ((42743 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43126 : GoUInt16)), ((43127 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43214 : GoUInt16)), ((43215 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43311 : GoUInt16)), ((43463 : GoUInt16)), ((152 : GoUInt16))).__copy__(),
new Range16(((43464 : GoUInt16)), ((43465 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43613 : GoUInt16)), ((43615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43743 : GoUInt16)), ((43760 : GoUInt16)), ((17 : GoUInt16))).__copy__(),
new Range16(((43761 : GoUInt16)), ((44011 : GoUInt16)), ((250 : GoUInt16))).__copy__(),
new Range16(((65104 : GoUInt16)), ((65106 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65108 : GoUInt16)), ((65111 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65281 : GoUInt16)), ((65292 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((65294 : GoUInt16)), ((65306 : GoUInt16)), ((12 : GoUInt16))).__copy__(),
new Range16(((65307 : GoUInt16)), ((65311 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((65377 : GoUInt16)), ((65380 : GoUInt16)), ((3 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66463 : GoUInt32)), ((66512 : GoUInt32)), ((49 : GoUInt32))).__copy__(),
new Range32(((67671 : GoUInt32)), ((67871 : GoUInt32)), ((200 : GoUInt32))).__copy__(),
new Range32(((68182 : GoUInt32)), ((68183 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68336 : GoUInt32)), ((68341 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68410 : GoUInt32)), ((68415 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68505 : GoUInt32)), ((68508 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69461 : GoUInt32)), ((69465 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69703 : GoUInt32)), ((69709 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69822 : GoUInt32)), ((69825 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69953 : GoUInt32)), ((69955 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70085 : GoUInt32)), ((70086 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70093 : GoUInt32)), ((70110 : GoUInt32)), ((17 : GoUInt32))).__copy__(),
new Range32(((70111 : GoUInt32)), ((70200 : GoUInt32)), ((89 : GoUInt32))).__copy__(),
new Range32(((70201 : GoUInt32)), ((70204 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70313 : GoUInt32)), ((70731 : GoUInt32)), ((418 : GoUInt32))).__copy__(),
new Range32(((70732 : GoUInt32)), ((70733 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70746 : GoUInt32)), ((70747 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71106 : GoUInt32)), ((71109 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71113 : GoUInt32)), ((71127 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71233 : GoUInt32)), ((71234 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71484 : GoUInt32)), ((71486 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72004 : GoUInt32)), ((72006 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72258 : GoUInt32)), ((72259 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72347 : GoUInt32)), ((72348 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72353 : GoUInt32)), ((72354 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72769 : GoUInt32)), ((72771 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72817 : GoUInt32)), ((73463 : GoUInt32)), ((646 : GoUInt32))).__copy__(),
new Range32(((73464 : GoUInt32)), ((74864 : GoUInt32)), ((1400 : GoUInt32))).__copy__(),
new Range32(((74865 : GoUInt32)), ((74868 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92782 : GoUInt32)), ((92783 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92917 : GoUInt32)), ((92983 : GoUInt32)), ((66 : GoUInt32))).__copy__(),
new Range32(((92984 : GoUInt32)), ((92985 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92996 : GoUInt32)), ((93847 : GoUInt32)), ((851 : GoUInt32))).__copy__(),
new Range32(((93848 : GoUInt32)), ((113823 : GoUInt32)), ((19975 : GoUInt32))).__copy__(),
new Range32(((121479 : GoUInt32)), ((121482 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((3 : GoInt)) } : RangeTable)));
var __Warang_Citi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71840 : GoUInt32)), ((71922 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71935 : GoUInt32)), ((71935 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var warang_Citi : Pointer<RangeTable> = __Warang_Citi;
var masaram_Gondi : Pointer<RangeTable> = __Masaram_Gondi;
var __Old_Persian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66464 : GoUInt32)), ((66499 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66504 : GoUInt32)), ((66517 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_Persian : Pointer<RangeTable> = __Old_Persian;
var __Modi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71168 : GoUInt32)), ((71236 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71248 : GoUInt32)), ((71257 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var modi : Pointer<RangeTable> = __Modi;
var __Hex_Digit : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((48 : GoUInt16)), ((57 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65 : GoUInt16)), ((70 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((97 : GoUInt16)), ((102 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65296 : GoUInt16)), ((65305 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65313 : GoUInt16)), ((65318 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65345 : GoUInt16)), ((65350 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((3 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var __Batak : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((7104 : GoUInt16)), ((7155 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7164 : GoUInt16)), ((7167 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var batak : Pointer<RangeTable> = __Batak;
var __Tirhuta : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((70784 : GoUInt32)), ((70855 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70864 : GoUInt32)), ((70873 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var __Lycian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66176 : GoUInt32)), ((66204 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var lycian : Pointer<RangeTable> = __Lycian;
final _pN = (((1 : GoUnTypedInt)) << (2 : GoUnTypedInt));
final _pP = (((1 : GoUnTypedInt)) << (1 : GoUnTypedInt));
var __Old_Turkic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68608 : GoUInt32)), ((68680 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
final _pS = (((1 : GoUnTypedInt)) << (3 : GoUnTypedInt));
var __Oriya : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((2817 : GoUInt16)), ((2819 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2821 : GoUInt16)), ((2828 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2831 : GoUInt16)), ((2832 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2835 : GoUInt16)), ((2856 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2858 : GoUInt16)), ((2864 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2866 : GoUInt16)), ((2867 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2869 : GoUInt16)), ((2873 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2876 : GoUInt16)), ((2884 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2887 : GoUInt16)), ((2888 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2891 : GoUInt16)), ((2893 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2901 : GoUInt16)), ((2903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2908 : GoUInt16)), ((2909 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2911 : GoUInt16)), ((2915 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2918 : GoUInt16)), ((2935 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var oriya : Pointer<RangeTable> = __Oriya;
var __Ahom : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71424 : GoUInt32)), ((71450 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71453 : GoUInt32)), ((71467 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71472 : GoUInt32)), ((71487 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var ahom : Pointer<RangeTable> = __Ahom;
var __Anatolian_Hieroglyphs : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((82944 : GoUInt32)), ((83526 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var anatolian_Hieroglyphs : Pointer<RangeTable> = __Anatolian_Hieroglyphs;
var __Arabic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((1536 : GoUInt16)), ((1540 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1542 : GoUInt16)), ((1547 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1549 : GoUInt16)), ((1562 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1564 : GoUInt16)), ((1568 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1569 : GoUInt16)), ((1599 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1601 : GoUInt16)), ((1610 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1622 : GoUInt16)), ((1647 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1649 : GoUInt16)), ((1756 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1758 : GoUInt16)), ((1791 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1872 : GoUInt16)), ((1919 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2208 : GoUInt16)), ((2228 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2230 : GoUInt16)), ((2247 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2259 : GoUInt16)), ((2273 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2275 : GoUInt16)), ((2303 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64336 : GoUInt16)), ((64449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64467 : GoUInt16)), ((64829 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64848 : GoUInt16)), ((64911 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64914 : GoUInt16)), ((64967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65008 : GoUInt16)), ((65021 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65136 : GoUInt16)), ((65140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65142 : GoUInt16)), ((65276 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((69216 : GoUInt32)), ((69246 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126464 : GoUInt32)), ((126467 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126469 : GoUInt32)), ((126495 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126497 : GoUInt32)), ((126498 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126500 : GoUInt32)), ((126503 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126505 : GoUInt32)), ((126514 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126516 : GoUInt32)), ((126519 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126521 : GoUInt32)), ((126523 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126530 : GoUInt32)), ((126535 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((126537 : GoUInt32)), ((126541 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126542 : GoUInt32)), ((126543 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126545 : GoUInt32)), ((126546 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126548 : GoUInt32)), ((126551 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126553 : GoUInt32)), ((126561 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126562 : GoUInt32)), ((126564 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126567 : GoUInt32)), ((126570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126572 : GoUInt32)), ((126578 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126580 : GoUInt32)), ((126583 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126585 : GoUInt32)), ((126588 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126590 : GoUInt32)), ((126592 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126593 : GoUInt32)), ((126601 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126603 : GoUInt32)), ((126619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126625 : GoUInt32)), ((126627 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126629 : GoUInt32)), ((126633 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126635 : GoUInt32)), ((126651 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126704 : GoUInt32)), ((126705 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var arabic : Pointer<RangeTable> = __Arabic;
var __Balinese : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6912 : GoUInt16)), ((6987 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6992 : GoUInt16)), ((7036 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var balinese : Pointer<RangeTable> = __Balinese;
var __Bengali : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((2432 : GoUInt16)), ((2435 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2437 : GoUInt16)), ((2444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2447 : GoUInt16)), ((2448 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2451 : GoUInt16)), ((2472 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2474 : GoUInt16)), ((2480 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2482 : GoUInt16)), ((2486 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2487 : GoUInt16)), ((2489 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2492 : GoUInt16)), ((2500 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2503 : GoUInt16)), ((2504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2507 : GoUInt16)), ((2510 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2519 : GoUInt16)), ((2524 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((2525 : GoUInt16)), ((2527 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2528 : GoUInt16)), ((2531 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2534 : GoUInt16)), ((2558 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var bengali : Pointer<RangeTable> = __Bengali;
var __Bhaiksuki : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72704 : GoUInt32)), ((72712 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72714 : GoUInt32)), ((72758 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72760 : GoUInt32)), ((72773 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72784 : GoUInt32)), ((72812 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var bhaiksuki : Pointer<RangeTable> = __Bhaiksuki;
var __Bopomofo : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((746 : GoUInt16)), ((747 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12549 : GoUInt16)), ((12591 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12704 : GoUInt16)), ((12735 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var bopomofo : Pointer<RangeTable> = __Bopomofo;
var __Brahmi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69632 : GoUInt32)), ((69709 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69714 : GoUInt32)), ((69743 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69759 : GoUInt32)), ((69759 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var brahmi : Pointer<RangeTable> = __Brahmi;
var braille : Pointer<RangeTable> = __Braille;
var __Buginese : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6656 : GoUInt16)), ((6683 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6686 : GoUInt16)), ((6687 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var buginese : Pointer<RangeTable> = __Buginese;
var canadian_Aboriginal : Pointer<RangeTable> = __Canadian_Aboriginal;
var __Carian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66208 : GoUInt32)), ((66256 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var carian : Pointer<RangeTable> = __Carian;
var __Cham : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43520 : GoUInt16)), ((43574 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43584 : GoUInt16)), ((43597 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43600 : GoUInt16)), ((43609 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43612 : GoUInt16)), ((43615 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var cham : Pointer<RangeTable> = __Cham;
var __Cherokee : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5024 : GoUInt16)), ((5109 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((5112 : GoUInt16)), ((5117 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43888 : GoUInt16)), ((43967 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var cherokee : Pointer<RangeTable> = __Cherokee;
var __Chorasmian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69552 : GoUInt32)), ((69579 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var chorasmian : Pointer<RangeTable> = __Chorasmian;
var __Common : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((0 : GoUInt16)), ((64 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((91 : GoUInt16)), ((96 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((123 : GoUInt16)), ((169 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((171 : GoUInt16)), ((185 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((187 : GoUInt16)), ((191 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((215 : GoUInt16)), ((247 : GoUInt16)), ((32 : GoUInt16))).__copy__(),
new Range16(((697 : GoUInt16)), ((735 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((741 : GoUInt16)), ((745 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((748 : GoUInt16)), ((767 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((884 : GoUInt16)), ((894 : GoUInt16)), ((10 : GoUInt16))).__copy__(),
new Range16(((901 : GoUInt16)), ((903 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1541 : GoUInt16)), ((1548 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((1563 : GoUInt16)), ((1567 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((1600 : GoUInt16)), ((1757 : GoUInt16)), ((157 : GoUInt16))).__copy__(),
new Range16(((2274 : GoUInt16)), ((2404 : GoUInt16)), ((130 : GoUInt16))).__copy__(),
new Range16(((2405 : GoUInt16)), ((3647 : GoUInt16)), ((1242 : GoUInt16))).__copy__(),
new Range16(((4053 : GoUInt16)), ((4056 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4347 : GoUInt16)), ((5867 : GoUInt16)), ((1520 : GoUInt16))).__copy__(),
new Range16(((5868 : GoUInt16)), ((5869 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5941 : GoUInt16)), ((5942 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6146 : GoUInt16)), ((6147 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6149 : GoUInt16)), ((7379 : GoUInt16)), ((1230 : GoUInt16))).__copy__(),
new Range16(((7393 : GoUInt16)), ((7401 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((7402 : GoUInt16)), ((7404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7406 : GoUInt16)), ((7411 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7413 : GoUInt16)), ((7415 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7418 : GoUInt16)), ((8192 : GoUInt16)), ((774 : GoUInt16))).__copy__(),
new Range16(((8193 : GoUInt16)), ((8203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8206 : GoUInt16)), ((8292 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8294 : GoUInt16)), ((8304 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8308 : GoUInt16)), ((8318 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8320 : GoUInt16)), ((8334 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8352 : GoUInt16)), ((8383 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8448 : GoUInt16)), ((8485 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8487 : GoUInt16)), ((8489 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8492 : GoUInt16)), ((8497 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8499 : GoUInt16)), ((8525 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8527 : GoUInt16)), ((8543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8585 : GoUInt16)), ((8587 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8592 : GoUInt16)), ((9254 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9280 : GoUInt16)), ((9290 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9312 : GoUInt16)), ((10239 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10496 : GoUInt16)), ((11123 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11126 : GoUInt16)), ((11157 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11159 : GoUInt16)), ((11263 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11776 : GoUInt16)), ((11858 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12272 : GoUInt16)), ((12283 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12288 : GoUInt16)), ((12292 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12294 : GoUInt16)), ((12296 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((12297 : GoUInt16)), ((12320 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12336 : GoUInt16)), ((12343 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12348 : GoUInt16)), ((12351 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12443 : GoUInt16)), ((12444 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12448 : GoUInt16)), ((12539 : GoUInt16)), ((91 : GoUInt16))).__copy__(),
new Range16(((12540 : GoUInt16)), ((12688 : GoUInt16)), ((148 : GoUInt16))).__copy__(),
new Range16(((12689 : GoUInt16)), ((12703 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12736 : GoUInt16)), ((12771 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12832 : GoUInt16)), ((12895 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12927 : GoUInt16)), ((13007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((13055 : GoUInt16)), ((13144 : GoUInt16)), ((89 : GoUInt16))).__copy__(),
new Range16(((13145 : GoUInt16)), ((13311 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((19904 : GoUInt16)), ((19967 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42752 : GoUInt16)), ((42785 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42888 : GoUInt16)), ((42890 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43056 : GoUInt16)), ((43065 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43310 : GoUInt16)), ((43471 : GoUInt16)), ((161 : GoUInt16))).__copy__(),
new Range16(((43867 : GoUInt16)), ((43882 : GoUInt16)), ((15 : GoUInt16))).__copy__(),
new Range16(((43883 : GoUInt16)), ((64830 : GoUInt16)), ((20947 : GoUInt16))).__copy__(),
new Range16(((64831 : GoUInt16)), ((65040 : GoUInt16)), ((209 : GoUInt16))).__copy__(),
new Range16(((65041 : GoUInt16)), ((65049 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65072 : GoUInt16)), ((65106 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65108 : GoUInt16)), ((65126 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65128 : GoUInt16)), ((65131 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65279 : GoUInt16)), ((65281 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65282 : GoUInt16)), ((65312 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65339 : GoUInt16)), ((65344 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65371 : GoUInt16)), ((65381 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65392 : GoUInt16)), ((65438 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((65439 : GoUInt16)), ((65504 : GoUInt16)), ((65 : GoUInt16))).__copy__(),
new Range16(((65505 : GoUInt16)), ((65510 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65512 : GoUInt16)), ((65518 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65529 : GoUInt16)), ((65533 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((65792 : GoUInt32)), ((65794 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65799 : GoUInt32)), ((65843 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65847 : GoUInt32)), ((65855 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((65936 : GoUInt32)), ((65948 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66000 : GoUInt32)), ((66044 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((66273 : GoUInt32)), ((66299 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94178 : GoUInt32)), ((94179 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113824 : GoUInt32)), ((113827 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((118784 : GoUInt32)), ((119029 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119040 : GoUInt32)), ((119078 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119081 : GoUInt32)), ((119142 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119146 : GoUInt32)), ((119162 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119171 : GoUInt32)), ((119172 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119180 : GoUInt32)), ((119209 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119214 : GoUInt32)), ((119272 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119520 : GoUInt32)), ((119539 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119552 : GoUInt32)), ((119638 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119648 : GoUInt32)), ((119672 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119808 : GoUInt32)), ((119892 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119894 : GoUInt32)), ((119964 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119966 : GoUInt32)), ((119967 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119970 : GoUInt32)), ((119973 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119974 : GoUInt32)), ((119977 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119978 : GoUInt32)), ((119980 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119982 : GoUInt32)), ((119993 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119995 : GoUInt32)), ((119997 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((119998 : GoUInt32)), ((120003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120005 : GoUInt32)), ((120069 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120071 : GoUInt32)), ((120074 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120077 : GoUInt32)), ((120084 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120086 : GoUInt32)), ((120092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120094 : GoUInt32)), ((120121 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120123 : GoUInt32)), ((120126 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120128 : GoUInt32)), ((120132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120134 : GoUInt32)), ((120138 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((120139 : GoUInt32)), ((120144 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120146 : GoUInt32)), ((120485 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120488 : GoUInt32)), ((120779 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120782 : GoUInt32)), ((120831 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126065 : GoUInt32)), ((126132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126209 : GoUInt32)), ((126269 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126976 : GoUInt32)), ((127019 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127024 : GoUInt32)), ((127123 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127136 : GoUInt32)), ((127150 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127153 : GoUInt32)), ((127167 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127169 : GoUInt32)), ((127183 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127185 : GoUInt32)), ((127221 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127232 : GoUInt32)), ((127405 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127462 : GoUInt32)), ((127487 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127489 : GoUInt32)), ((127490 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127504 : GoUInt32)), ((127547 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127552 : GoUInt32)), ((127560 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127568 : GoUInt32)), ((127569 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127584 : GoUInt32)), ((127589 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127744 : GoUInt32)), ((128727 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128736 : GoUInt32)), ((128748 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128752 : GoUInt32)), ((128764 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128768 : GoUInt32)), ((128883 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128896 : GoUInt32)), ((128984 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((128992 : GoUInt32)), ((129003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129024 : GoUInt32)), ((129035 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129040 : GoUInt32)), ((129095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129104 : GoUInt32)), ((129113 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129120 : GoUInt32)), ((129159 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129168 : GoUInt32)), ((129197 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129200 : GoUInt32)), ((129201 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129280 : GoUInt32)), ((129400 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129402 : GoUInt32)), ((129483 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129485 : GoUInt32)), ((129619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129632 : GoUInt32)), ((129645 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129648 : GoUInt32)), ((129652 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129656 : GoUInt32)), ((129658 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129664 : GoUInt32)), ((129670 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129680 : GoUInt32)), ((129704 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129712 : GoUInt32)), ((129718 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129728 : GoUInt32)), ((129730 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129744 : GoUInt32)), ((129750 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129792 : GoUInt32)), ((129938 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((129940 : GoUInt32)), ((129994 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((130032 : GoUInt32)), ((130041 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((917505 : GoUInt32)), ((917536 : GoUInt32)), ((31 : GoUInt32))).__copy__(),
new Range32(((917537 : GoUInt32)), ((917631 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((6 : GoInt)) } : RangeTable)));
var common : Pointer<RangeTable> = __Common;
var coptic : Pointer<RangeTable> = __Coptic;
var __Cuneiform : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((73728 : GoUInt32)), ((74649 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((74752 : GoUInt32)), ((74862 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((74864 : GoUInt32)), ((74868 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((74880 : GoUInt32)), ((75075 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var cuneiform : Pointer<RangeTable> = __Cuneiform;
var __Cypriot : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67584 : GoUInt32)), ((67589 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67592 : GoUInt32)), ((67594 : GoUInt32)), ((2 : GoUInt32))).__copy__(), new Range32(((67595 : GoUInt32)), ((67637 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67639 : GoUInt32)), ((67640 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67644 : GoUInt32)), ((67647 : GoUInt32)), ((3 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var cypriot : Pointer<RangeTable> = __Cypriot;
var __Dives_Akuru : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71936 : GoUInt32)), ((71942 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71945 : GoUInt32)), ((71948 : GoUInt32)), ((3 : GoUInt32))).__copy__(), new Range32(((71949 : GoUInt32)), ((71955 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71957 : GoUInt32)), ((71958 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71960 : GoUInt32)), ((71989 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71991 : GoUInt32)), ((71992 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71995 : GoUInt32)), ((72006 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72016 : GoUInt32)), ((72025 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var dives_Akuru : Pointer<RangeTable> = __Dives_Akuru;
var __Dogra : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71680 : GoUInt32)), ((71739 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var dogra : Pointer<RangeTable> = __Dogra;
var __Duployan : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((113664 : GoUInt32)), ((113770 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((113776 : GoUInt32)), ((113788 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((113792 : GoUInt32)), ((113800 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((113808 : GoUInt32)), ((113817 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((113820 : GoUInt32)), ((113823 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var duployan : Pointer<RangeTable> = __Duployan;
var __Egyptian_Hieroglyphs : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((77824 : GoUInt32)), ((78894 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((78896 : GoUInt32)), ((78904 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var egyptian_Hieroglyphs : Pointer<RangeTable> = __Egyptian_Hieroglyphs;
var __Elbasan : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66816 : GoUInt32)), ((66855 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var elbasan : Pointer<RangeTable> = __Elbasan;
var __Ethiopic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((4608 : GoUInt16)), ((4680 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4682 : GoUInt16)), ((4685 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4688 : GoUInt16)), ((4694 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4696 : GoUInt16)), ((4698 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4699 : GoUInt16)), ((4701 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4704 : GoUInt16)), ((4744 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4746 : GoUInt16)), ((4749 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4752 : GoUInt16)), ((4784 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4786 : GoUInt16)), ((4789 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4792 : GoUInt16)), ((4798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4800 : GoUInt16)), ((4802 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((4803 : GoUInt16)), ((4805 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4808 : GoUInt16)), ((4822 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4824 : GoUInt16)), ((4880 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4882 : GoUInt16)), ((4885 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4888 : GoUInt16)), ((4954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4957 : GoUInt16)), ((4988 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4992 : GoUInt16)), ((5017 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11648 : GoUInt16)), ((11670 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11680 : GoUInt16)), ((11686 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11688 : GoUInt16)), ((11694 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11696 : GoUInt16)), ((11702 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11704 : GoUInt16)), ((11710 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11712 : GoUInt16)), ((11718 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11720 : GoUInt16)), ((11726 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11728 : GoUInt16)), ((11734 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11736 : GoUInt16)), ((11742 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43777 : GoUInt16)), ((43782 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43785 : GoUInt16)), ((43790 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43793 : GoUInt16)), ((43798 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43808 : GoUInt16)), ((43814 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43816 : GoUInt16)), ((43822 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var ethiopic : Pointer<RangeTable> = __Ethiopic;
var gothic : Pointer<RangeTable> = __Gothic;
var __Greek : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((880 : GoUInt16)), ((883 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((885 : GoUInt16)), ((887 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((890 : GoUInt16)), ((893 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((895 : GoUInt16)), ((900 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((902 : GoUInt16)), ((904 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((905 : GoUInt16)), ((906 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((908 : GoUInt16)), ((910 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((911 : GoUInt16)), ((929 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((931 : GoUInt16)), ((993 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1008 : GoUInt16)), ((1023 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7462 : GoUInt16)), ((7466 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7517 : GoUInt16)), ((7521 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7526 : GoUInt16)), ((7530 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7615 : GoUInt16)), ((7936 : GoUInt16)), ((321 : GoUInt16))).__copy__(),
new Range16(((7937 : GoUInt16)), ((7957 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7960 : GoUInt16)), ((7965 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7968 : GoUInt16)), ((8005 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8008 : GoUInt16)), ((8013 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8016 : GoUInt16)), ((8023 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8025 : GoUInt16)), ((8031 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8032 : GoUInt16)), ((8061 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8064 : GoUInt16)), ((8116 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8118 : GoUInt16)), ((8132 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8134 : GoUInt16)), ((8147 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8150 : GoUInt16)), ((8155 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8157 : GoUInt16)), ((8175 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8178 : GoUInt16)), ((8180 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8182 : GoUInt16)), ((8190 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8486 : GoUInt16)), ((43877 : GoUInt16)), ((35391 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((65856 : GoUInt32)), ((65934 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((65952 : GoUInt32)), ((119296 : GoUInt32)), ((53344 : GoUInt32))).__copy__(), new Range32(((119297 : GoUInt32)), ((119365 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var greek : Pointer<RangeTable> = __Greek;
var __Gujarati : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((2689 : GoUInt16)), ((2691 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2693 : GoUInt16)), ((2701 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2703 : GoUInt16)), ((2705 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2707 : GoUInt16)), ((2728 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2730 : GoUInt16)), ((2736 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2738 : GoUInt16)), ((2739 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2741 : GoUInt16)), ((2745 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2748 : GoUInt16)), ((2757 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2759 : GoUInt16)), ((2761 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2763 : GoUInt16)), ((2765 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2768 : GoUInt16)), ((2784 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((2785 : GoUInt16)), ((2787 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2790 : GoUInt16)), ((2801 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2809 : GoUInt16)), ((2815 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var gujarati : Pointer<RangeTable> = __Gujarati;
var __Gurmukhi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((2561 : GoUInt16)), ((2563 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2565 : GoUInt16)), ((2570 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2575 : GoUInt16)), ((2576 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2579 : GoUInt16)), ((2600 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2602 : GoUInt16)), ((2608 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2610 : GoUInt16)), ((2611 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2613 : GoUInt16)), ((2614 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2616 : GoUInt16)), ((2617 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2620 : GoUInt16)), ((2622 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((2623 : GoUInt16)), ((2626 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2631 : GoUInt16)), ((2632 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2635 : GoUInt16)), ((2637 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2641 : GoUInt16)), ((2649 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((2650 : GoUInt16)), ((2652 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2654 : GoUInt16)), ((2662 : GoUInt16)), ((8 : GoUInt16))).__copy__(),
new Range16(((2663 : GoUInt16)), ((2678 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var gurmukhi : Pointer<RangeTable> = __Gurmukhi;
var __Han : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((11904 : GoUInt16)), ((11929 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11931 : GoUInt16)), ((12019 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12032 : GoUInt16)), ((12245 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12293 : GoUInt16)), ((12295 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((12321 : GoUInt16)), ((12329 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12344 : GoUInt16)), ((12347 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((13312 : GoUInt16)), ((19903 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((19968 : GoUInt16)), ((40956 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((63744 : GoUInt16)), ((64109 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64112 : GoUInt16)), ((64217 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((94192 : GoUInt32)), ((94193 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((131072 : GoUInt32)), ((173789 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((173824 : GoUInt32)), ((177972 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((177984 : GoUInt32)), ((178205 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((178208 : GoUInt32)), ((183969 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((183984 : GoUInt32)), ((191456 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((194560 : GoUInt32)), ((195101 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((196608 : GoUInt32)), ((201546 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var han : Pointer<RangeTable> = __Han;
var hanifi_Rohingya : Pointer<RangeTable> = __Hanifi_Rohingya;
var hanunoo : Pointer<RangeTable> = __Hanunoo;
var __Hatran : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67808 : GoUInt32)), ((67826 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67828 : GoUInt32)), ((67829 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67835 : GoUInt32)), ((67839 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var hatran : Pointer<RangeTable> = __Hatran;
var __Hebrew : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1425 : GoUInt16)), ((1479 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1488 : GoUInt16)), ((1514 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1519 : GoUInt16)), ((1524 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64285 : GoUInt16)), ((64310 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64312 : GoUInt16)), ((64316 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64318 : GoUInt16)), ((64320 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((64321 : GoUInt16)), ((64323 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((64324 : GoUInt16)), ((64326 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((64327 : GoUInt16)), ((64335 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var hebrew : Pointer<RangeTable> = __Hebrew;
var __Hiragana : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((12353 : GoUInt16)), ((12438 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12445 : GoUInt16)), ((12447 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((110593 : GoUInt32)), ((110878 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((110928 : GoUInt32)), ((110930 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((127488 : GoUInt32)), ((127488 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var hiragana : Pointer<RangeTable> = __Hiragana;
var inscriptional_Pahlavi : Pointer<RangeTable> = __Inscriptional_Pahlavi;
var __Inscriptional_Parthian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68416 : GoUInt32)), ((68437 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((68440 : GoUInt32)), ((68447 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var inscriptional_Parthian : Pointer<RangeTable> = __Inscriptional_Parthian;
var __Kaithi : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69760 : GoUInt32)), ((69825 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((69837 : GoUInt32)), ((69837 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var kaithi : Pointer<RangeTable> = __Kaithi;
var kannada : Pointer<RangeTable> = __Kannada;
var katakana : Pointer<RangeTable> = __Katakana;
var __Khmer : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6016 : GoUInt16)), ((6109 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6112 : GoUInt16)), ((6121 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6128 : GoUInt16)), ((6137 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6624 : GoUInt16)), ((6655 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var khmer : Pointer<RangeTable> = __Khmer;
var __Khojki : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((70144 : GoUInt32)), ((70161 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((70163 : GoUInt32)), ((70206 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var khojki : Pointer<RangeTable> = __Khojki;
var khudawadi : Pointer<RangeTable> = __Khudawadi;
var __Lao : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((3713 : GoUInt16)), ((3714 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3716 : GoUInt16)), ((3718 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3719 : GoUInt16)), ((3722 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3724 : GoUInt16)), ((3747 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3749 : GoUInt16)), ((3751 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3752 : GoUInt16)), ((3773 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3776 : GoUInt16)), ((3780 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3782 : GoUInt16)), ((3784 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3785 : GoUInt16)), ((3789 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3792 : GoUInt16)), ((3801 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3804 : GoUInt16)), ((3807 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var lao : Pointer<RangeTable> = __Lao;
var __Latin : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((65 : GoUInt16)), ((90 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((97 : GoUInt16)), ((122 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((170 : GoUInt16)), ((186 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((192 : GoUInt16)), ((214 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((216 : GoUInt16)), ((246 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((248 : GoUInt16)), ((696 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((736 : GoUInt16)), ((740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7424 : GoUInt16)), ((7461 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7468 : GoUInt16)), ((7516 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7522 : GoUInt16)), ((7525 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7531 : GoUInt16)), ((7543 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7545 : GoUInt16)), ((7614 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7680 : GoUInt16)), ((7935 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8305 : GoUInt16)), ((8319 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((8336 : GoUInt16)), ((8348 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8490 : GoUInt16)), ((8491 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8498 : GoUInt16)), ((8526 : GoUInt16)), ((28 : GoUInt16))).__copy__(),
new Range16(((8544 : GoUInt16)), ((8584 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11360 : GoUInt16)), ((11391 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42786 : GoUInt16)), ((42887 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42891 : GoUInt16)), ((42943 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42946 : GoUInt16)), ((42954 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42997 : GoUInt16)), ((43007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43824 : GoUInt16)), ((43866 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43868 : GoUInt16)), ((43876 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43878 : GoUInt16)), ((43881 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64256 : GoUInt16)), ((64262 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65313 : GoUInt16)), ((65338 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65345 : GoUInt16)), ((65370 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((5 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var latin : Pointer<RangeTable> = __Latin;
var __Lepcha : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((7168 : GoUInt16)), ((7223 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7227 : GoUInt16)), ((7241 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7245 : GoUInt16)), ((7247 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var lepcha : Pointer<RangeTable> = __Lepcha;
var __Lisu : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((42192 : GoUInt16)), ((42239 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((73648 : GoUInt32)), ((73648 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var lisu : Pointer<RangeTable> = __Lisu;
var __Lydian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67872 : GoUInt32)), ((67897 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67903 : GoUInt32)), ((67903 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var lydian : Pointer<RangeTable> = __Lydian;
var __Mahajani : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((69968 : GoUInt32)), ((70006 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var mahajani : Pointer<RangeTable> = __Mahajani;
var mandaic : Pointer<RangeTable> = __Mandaic;
var __Marchen : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((72816 : GoUInt32)), ((72847 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72850 : GoUInt32)), ((72871 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72873 : GoUInt32)), ((72886 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var marchen : Pointer<RangeTable> = __Marchen;
var medefaidrin : Pointer<RangeTable> = __Medefaidrin;
var __Meetei_Mayek : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43744 : GoUInt16)), ((43766 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43968 : GoUInt16)), ((44013 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((44016 : GoUInt16)), ((44025 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var meetei_Mayek : Pointer<RangeTable> = __Meetei_Mayek;
var __Mende_Kikakui : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((124928 : GoUInt32)), ((125124 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125127 : GoUInt32)), ((125142 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var mende_Kikakui : Pointer<RangeTable> = __Mende_Kikakui;
var __Miao : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((93952 : GoUInt32)), ((94026 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((94031 : GoUInt32)), ((94087 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((94095 : GoUInt32)), ((94111 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var miao : Pointer<RangeTable> = __Miao;
var __Mongolian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6144 : GoUInt16)), ((6145 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6148 : GoUInt16)), ((6150 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((6151 : GoUInt16)), ((6158 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6160 : GoUInt16)), ((6169 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6176 : GoUInt16)), ((6264 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6272 : GoUInt16)), ((6314 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((71264 : GoUInt32)), ((71276 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var mongolian : Pointer<RangeTable> = __Mongolian;
var myanmar : Pointer<RangeTable> = __Myanmar;
var __Nabataean : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67712 : GoUInt32)), ((67742 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((67751 : GoUInt32)), ((67759 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var nabataean : Pointer<RangeTable> = __Nabataean;
var __New_Tai_Lue : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6528 : GoUInt16)), ((6571 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6576 : GoUInt16)), ((6601 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6608 : GoUInt16)), ((6618 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6622 : GoUInt16)), ((6623 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var new_Tai_Lue : Pointer<RangeTable> = __New_Tai_Lue;
var newa : Pointer<RangeTable> = __Newa;
var __Nko : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1984 : GoUInt16)), ((2042 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((2045 : GoUInt16)), ((2047 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var nko : Pointer<RangeTable> = __Nko;
var __Nushu : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((94177 : GoUInt32)), ((110960 : GoUInt32)), ((16783 : GoUInt32))).__copy__(), new Range32(((110961 : GoUInt32)), ((111355 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var nushu : Pointer<RangeTable> = __Nushu;
var nyiakeng_Puachue_Hmong : Pointer<RangeTable> = __Nyiakeng_Puachue_Hmong;
var __Ogham : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5760 : GoUInt16)), ((5788 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var ogham : Pointer<RangeTable> = __Ogham;
var __Old_Italic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66304 : GoUInt32)), ((66339 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66349 : GoUInt32)), ((66351 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_Italic : Pointer<RangeTable> = __Old_Italic;
var __Old_North_Arabian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68224 : GoUInt32)), ((68255 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_North_Arabian : Pointer<RangeTable> = __Old_North_Arabian;
var __Old_Permic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66384 : GoUInt32)), ((66426 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_Permic : Pointer<RangeTable> = __Old_Permic;
var __Old_South_Arabian : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((68192 : GoUInt32)), ((68223 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var old_South_Arabian : Pointer<RangeTable> = __Old_South_Arabian;
var old_Turkic : Pointer<RangeTable> = __Old_Turkic;
var __Osage : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66736 : GoUInt32)), ((66771 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66776 : GoUInt32)), ((66811 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var osage : Pointer<RangeTable> = __Osage;
var __Osmanya : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((66688 : GoUInt32)), ((66717 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((66720 : GoUInt32)), ((66729 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var osmanya : Pointer<RangeTable> = __Osmanya;
var __Palmyrene : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((67680 : GoUInt32)), ((67711 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var palmyrene : Pointer<RangeTable> = __Palmyrene;
var phoenician : Pointer<RangeTable> = __Phoenician;
var __Rejang : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43312 : GoUInt16)), ((43347 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43359 : GoUInt16)), ((43359 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var rejang : Pointer<RangeTable> = __Rejang;
var __Samaritan : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((2048 : GoUInt16)), ((2093 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((2096 : GoUInt16)), ((2110 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var samaritan : Pointer<RangeTable> = __Samaritan;
var __Saurashtra : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43136 : GoUInt16)), ((43205 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43214 : GoUInt16)), ((43225 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var saurashtra : Pointer<RangeTable> = __Saurashtra;
var sharada : Pointer<RangeTable> = __Sharada;
var shavian : Pointer<RangeTable> = __Shavian;
var siddham : Pointer<RangeTable> = __Siddham;
var __Sundanese : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((7040 : GoUInt16)), ((7103 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((7360 : GoUInt16)), ((7367 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var sundanese : Pointer<RangeTable> = __Sundanese;
var __Syriac : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((1792 : GoUInt16)), ((1805 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1807 : GoUInt16)), ((1866 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((1869 : GoUInt16)), ((1871 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((2144 : GoUInt16)), ((2154 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var syriac : Pointer<RangeTable> = __Syriac;
var __Tagbanwa : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((5984 : GoUInt16)), ((5996 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((5998 : GoUInt16)), ((6000 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6002 : GoUInt16)), ((6003 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var tagbanwa : Pointer<RangeTable> = __Tagbanwa;
var __Tai_Le : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6480 : GoUInt16)), ((6509 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6512 : GoUInt16)), ((6516 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var tai_Le : Pointer<RangeTable> = __Tai_Le;
var __Tai_Viet : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((43648 : GoUInt16)), ((43714 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((43739 : GoUInt16)), ((43743 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var tai_Viet : Pointer<RangeTable> = __Tai_Viet;
var __Takri : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((71296 : GoUInt32)), ((71352 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((71360 : GoUInt32)), ((71369 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var takri : Pointer<RangeTable> = __Takri;
var tangut : Pointer<RangeTable> = __Tangut;
var thaana : Pointer<RangeTable> = __Thaana;
var tibetan : Pointer<RangeTable> = __Tibetan;
var __Tifinagh : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((11568 : GoUInt16)), ((11623 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11631 : GoUInt16)), ((11632 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11647 : GoUInt16)), ((11647 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var tifinagh : Pointer<RangeTable> = __Tifinagh;
var tirhuta : Pointer<RangeTable> = __Tirhuta;
var vai : Pointer<RangeTable> = __Vai;
var yi : Pointer<RangeTable> = __Yi;
var scripts : GoMap<GoString, Pointer<RangeTable>> = new GoMap<GoString, Pointer<RangeTable>>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range16", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }]))) }, { name : "r32", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range32", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }]))) }, { name : "latinOffset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))),
{ key : "Adlam", value : adlam },
{ key : "Ahom", value : ahom },
{ key : "Anatolian_Hieroglyphs", value : anatolian_Hieroglyphs },
{ key : "Arabic", value : arabic },
{ key : "Armenian", value : armenian },
{ key : "Avestan", value : avestan },
{ key : "Balinese", value : balinese },
{ key : "Bamum", value : bamum },
{ key : "Bassa_Vah", value : bassa_Vah },
{ key : "Batak", value : batak },
{ key : "Bengali", value : bengali },
{ key : "Bhaiksuki", value : bhaiksuki },
{ key : "Bopomofo", value : bopomofo },
{ key : "Brahmi", value : brahmi },
{ key : "Braille", value : braille },
{ key : "Buginese", value : buginese },
{ key : "Buhid", value : buhid },
{ key : "Canadian_Aboriginal", value : canadian_Aboriginal },
{ key : "Carian", value : carian },
{ key : "Caucasian_Albanian", value : caucasian_Albanian },
{ key : "Chakma", value : chakma },
{ key : "Cham", value : cham },
{ key : "Cherokee", value : cherokee },
{ key : "Chorasmian", value : chorasmian },
{ key : "Common", value : common },
{ key : "Coptic", value : coptic },
{ key : "Cuneiform", value : cuneiform },
{ key : "Cypriot", value : cypriot },
{ key : "Cyrillic", value : cyrillic },
{ key : "Deseret", value : deseret },
{ key : "Devanagari", value : devanagari },
{ key : "Dives_Akuru", value : dives_Akuru },
{ key : "Dogra", value : dogra },
{ key : "Duployan", value : duployan },
{ key : "Egyptian_Hieroglyphs", value : egyptian_Hieroglyphs },
{ key : "Elbasan", value : elbasan },
{ key : "Elymaic", value : elymaic },
{ key : "Ethiopic", value : ethiopic },
{ key : "Georgian", value : georgian },
{ key : "Glagolitic", value : glagolitic },
{ key : "Gothic", value : gothic },
{ key : "Grantha", value : grantha },
{ key : "Greek", value : greek },
{ key : "Gujarati", value : gujarati },
{ key : "Gunjala_Gondi", value : gunjala_Gondi },
{ key : "Gurmukhi", value : gurmukhi },
{ key : "Han", value : han },
{ key : "Hangul", value : hangul },
{ key : "Hanifi_Rohingya", value : hanifi_Rohingya },
{ key : "Hanunoo", value : hanunoo },
{ key : "Hatran", value : hatran },
{ key : "Hebrew", value : hebrew },
{ key : "Hiragana", value : hiragana },
{ key : "Imperial_Aramaic", value : imperial_Aramaic },
{ key : "Inherited", value : inherited },
{ key : "Inscriptional_Pahlavi", value : inscriptional_Pahlavi },
{ key : "Inscriptional_Parthian", value : inscriptional_Parthian },
{ key : "Javanese", value : javanese },
{ key : "Kaithi", value : kaithi },
{ key : "Kannada", value : kannada },
{ key : "Katakana", value : katakana },
{ key : "Kayah_Li", value : kayah_Li },
{ key : "Kharoshthi", value : kharoshthi },
{ key : "Khitan_Small_Script", value : khitan_Small_Script },
{ key : "Khmer", value : khmer },
{ key : "Khojki", value : khojki },
{ key : "Khudawadi", value : khudawadi },
{ key : "Lao", value : lao },
{ key : "Latin", value : latin },
{ key : "Lepcha", value : lepcha },
{ key : "Limbu", value : limbu },
{ key : "Linear_A", value : linear_A },
{ key : "Linear_B", value : linear_B },
{ key : "Lisu", value : lisu },
{ key : "Lycian", value : lycian },
{ key : "Lydian", value : lydian },
{ key : "Mahajani", value : mahajani },
{ key : "Makasar", value : makasar },
{ key : "Malayalam", value : malayalam },
{ key : "Mandaic", value : mandaic },
{ key : "Manichaean", value : manichaean },
{ key : "Marchen", value : marchen },
{ key : "Masaram_Gondi", value : masaram_Gondi },
{ key : "Medefaidrin", value : medefaidrin },
{ key : "Meetei_Mayek", value : meetei_Mayek },
{ key : "Mende_Kikakui", value : mende_Kikakui },
{ key : "Meroitic_Cursive", value : meroitic_Cursive },
{ key : "Meroitic_Hieroglyphs", value : meroitic_Hieroglyphs },
{ key : "Miao", value : miao },
{ key : "Modi", value : modi },
{ key : "Mongolian", value : mongolian },
{ key : "Mro", value : mro },
{ key : "Multani", value : multani },
{ key : "Myanmar", value : myanmar },
{ key : "Nabataean", value : nabataean },
{ key : "Nandinagari", value : nandinagari },
{ key : "New_Tai_Lue", value : new_Tai_Lue },
{ key : "Newa", value : newa },
{ key : "Nko", value : nko },
{ key : "Nushu", value : nushu },
{ key : "Nyiakeng_Puachue_Hmong", value : nyiakeng_Puachue_Hmong },
{ key : "Ogham", value : ogham },
{ key : "Ol_Chiki", value : ol_Chiki },
{ key : "Old_Hungarian", value : old_Hungarian },
{ key : "Old_Italic", value : old_Italic },
{ key : "Old_North_Arabian", value : old_North_Arabian },
{ key : "Old_Permic", value : old_Permic },
{ key : "Old_Persian", value : old_Persian },
{ key : "Old_Sogdian", value : old_Sogdian },
{ key : "Old_South_Arabian", value : old_South_Arabian },
{ key : "Old_Turkic", value : old_Turkic },
{ key : "Oriya", value : oriya },
{ key : "Osage", value : osage },
{ key : "Osmanya", value : osmanya },
{ key : "Pahawh_Hmong", value : pahawh_Hmong },
{ key : "Palmyrene", value : palmyrene },
{ key : "Pau_Cin_Hau", value : pau_Cin_Hau },
{ key : "Phags_Pa", value : phags_Pa },
{ key : "Phoenician", value : phoenician },
{ key : "Psalter_Pahlavi", value : psalter_Pahlavi },
{ key : "Rejang", value : rejang },
{ key : "Runic", value : runic },
{ key : "Samaritan", value : samaritan },
{ key : "Saurashtra", value : saurashtra },
{ key : "Sharada", value : sharada },
{ key : "Shavian", value : shavian },
{ key : "Siddham", value : siddham },
{ key : "SignWriting", value : signWriting },
{ key : "Sinhala", value : sinhala },
{ key : "Sogdian", value : sogdian },
{ key : "Sora_Sompeng", value : sora_Sompeng },
{ key : "Soyombo", value : soyombo },
{ key : "Sundanese", value : sundanese },
{ key : "Syloti_Nagri", value : syloti_Nagri },
{ key : "Syriac", value : syriac },
{ key : "Tagalog", value : tagalog },
{ key : "Tagbanwa", value : tagbanwa },
{ key : "Tai_Le", value : tai_Le },
{ key : "Tai_Tham", value : tai_Tham },
{ key : "Tai_Viet", value : tai_Viet },
{ key : "Takri", value : takri },
{ key : "Tamil", value : tamil },
{ key : "Tangut", value : tangut },
{ key : "Telugu", value : telugu },
{ key : "Thaana", value : thaana },
{ key : "Thai", value : thai },
{ key : "Tibetan", value : tibetan },
{ key : "Tifinagh", value : tifinagh },
{ key : "Tirhuta", value : tirhuta },
{ key : "Ugaritic", value : ugaritic },
{ key : "Vai", value : vai },
{ key : "Wancho", value : wancho },
{ key : "Warang_Citi", value : warang_Citi },
{ key : "Yezidi", value : yezidi },
{ key : "Yi", value : yi },
{ key : "Zanabazar_Square", value : zanabazar_Square });
var prepended_Concatenation_Mark : Pointer<RangeTable> = __Prepended_Concatenation_Mark;
final _pLl = (((1 : GoUnTypedInt)) << (6 : GoUnTypedInt));
final _pZ = (((1 : GoUnTypedInt)) << (4 : GoUnTypedInt));
final _pLu = (((1 : GoUnTypedInt)) << (5 : GoUnTypedInt));
final _pLo : GoUnTypedInt = _pLl | _pLu;
var __Radical : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((11904 : GoUInt16)), ((11929 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((11931 : GoUInt16)), ((12019 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((12032 : GoUInt16)), ((12245 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var bidi_Control : Pointer<RangeTable> = __Bidi_Control;
var __Deprecated : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((329 : GoUInt16)), ((1651 : GoUInt16)), ((1322 : GoUInt16))).__copy__(), new Range16(((3959 : GoUInt16)), ((3961 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((6051 : GoUInt16)), ((6052 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8298 : GoUInt16)), ((8303 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((9001 : GoUInt16)), ((9002 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((917505 : GoUInt32)), ((917505 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var deprecated : Pointer<RangeTable> = __Deprecated;
var diacritic : Pointer<RangeTable> = __Diacritic;
var __Extender : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((183 : GoUInt16)), ((720 : GoUInt16)), ((537 : GoUInt16))).__copy__(),
new Range16(((721 : GoUInt16)), ((1600 : GoUInt16)), ((879 : GoUInt16))).__copy__(),
new Range16(((2042 : GoUInt16)), ((2901 : GoUInt16)), ((859 : GoUInt16))).__copy__(),
new Range16(((3654 : GoUInt16)), ((3782 : GoUInt16)), ((128 : GoUInt16))).__copy__(),
new Range16(((6154 : GoUInt16)), ((6211 : GoUInt16)), ((57 : GoUInt16))).__copy__(),
new Range16(((6823 : GoUInt16)), ((7222 : GoUInt16)), ((399 : GoUInt16))).__copy__(),
new Range16(((7291 : GoUInt16)), ((12293 : GoUInt16)), ((5002 : GoUInt16))).__copy__(),
new Range16(((12337 : GoUInt16)), ((12341 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12445 : GoUInt16)), ((12446 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((12540 : GoUInt16)), ((12542 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((40981 : GoUInt16)), ((42508 : GoUInt16)), ((1527 : GoUInt16))).__copy__(),
new Range16(((43471 : GoUInt16)), ((43494 : GoUInt16)), ((23 : GoUInt16))).__copy__(),
new Range16(((43632 : GoUInt16)), ((43741 : GoUInt16)), ((109 : GoUInt16))).__copy__(),
new Range16(((43763 : GoUInt16)), ((43764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65392 : GoUInt16)), ((65392 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((70493 : GoUInt32)), ((71110 : GoUInt32)), ((617 : GoUInt32))).__copy__(), new Range32(((71111 : GoUInt32)), ((71112 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((72344 : GoUInt32)), ((92994 : GoUInt32)), ((20650 : GoUInt32))).__copy__(), new Range32(((92995 : GoUInt32)), ((94176 : GoUInt32)), ((1181 : GoUInt32))).__copy__(), new Range32(((94177 : GoUInt32)), ((94179 : GoUInt32)), ((2 : GoUInt32))).__copy__(), new Range32(((123196 : GoUInt32)), ((123197 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((125252 : GoUInt32)), ((125254 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var extender : Pointer<RangeTable> = __Extender;
var hex_Digit : Pointer<RangeTable> = __Hex_Digit;
var hyphen : Pointer<RangeTable> = __Hyphen;
var ids_Trinary_Operator : Pointer<RangeTable> = __IDS_Trinary_Operator;
var __Logical_Order_Exception : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((3648 : GoUInt16)), ((3652 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((3776 : GoUInt16)), ((3780 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6581 : GoUInt16)), ((6583 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6586 : GoUInt16)), ((43701 : GoUInt16)), ((37115 : GoUInt16))).__copy__(), new Range16(((43702 : GoUInt16)), ((43705 : GoUInt16)), ((3 : GoUInt16))).__copy__(), new Range16(((43707 : GoUInt16)), ((43708 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var logical_Order_Exception : Pointer<RangeTable> = __Logical_Order_Exception;
var __Other_Alphabetic : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((837 : GoUInt16)), ((1456 : GoUInt16)), ((619 : GoUInt16))).__copy__(),
new Range16(((1457 : GoUInt16)), ((1469 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1471 : GoUInt16)), ((1473 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1474 : GoUInt16)), ((1476 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1477 : GoUInt16)), ((1479 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((1552 : GoUInt16)), ((1562 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1611 : GoUInt16)), ((1623 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1625 : GoUInt16)), ((1631 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1648 : GoUInt16)), ((1750 : GoUInt16)), ((102 : GoUInt16))).__copy__(),
new Range16(((1751 : GoUInt16)), ((1756 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1761 : GoUInt16)), ((1764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1767 : GoUInt16)), ((1768 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1773 : GoUInt16)), ((1809 : GoUInt16)), ((36 : GoUInt16))).__copy__(),
new Range16(((1840 : GoUInt16)), ((1855 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1958 : GoUInt16)), ((1968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2070 : GoUInt16)), ((2071 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2075 : GoUInt16)), ((2083 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2085 : GoUInt16)), ((2087 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2089 : GoUInt16)), ((2092 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2260 : GoUInt16)), ((2271 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2275 : GoUInt16)), ((2281 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2288 : GoUInt16)), ((2307 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2362 : GoUInt16)), ((2363 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2366 : GoUInt16)), ((2380 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2382 : GoUInt16)), ((2383 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2389 : GoUInt16)), ((2391 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2402 : GoUInt16)), ((2403 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2433 : GoUInt16)), ((2435 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2494 : GoUInt16)), ((2500 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2503 : GoUInt16)), ((2504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2507 : GoUInt16)), ((2508 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2519 : GoUInt16)), ((2530 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((2531 : GoUInt16)), ((2561 : GoUInt16)), ((30 : GoUInt16))).__copy__(),
new Range16(((2562 : GoUInt16)), ((2563 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2622 : GoUInt16)), ((2626 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2631 : GoUInt16)), ((2632 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2635 : GoUInt16)), ((2636 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2641 : GoUInt16)), ((2672 : GoUInt16)), ((31 : GoUInt16))).__copy__(),
new Range16(((2673 : GoUInt16)), ((2677 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2689 : GoUInt16)), ((2691 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2750 : GoUInt16)), ((2757 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2759 : GoUInt16)), ((2761 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2763 : GoUInt16)), ((2764 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2786 : GoUInt16)), ((2787 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2810 : GoUInt16)), ((2812 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2817 : GoUInt16)), ((2819 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2878 : GoUInt16)), ((2884 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2887 : GoUInt16)), ((2888 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2891 : GoUInt16)), ((2892 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2902 : GoUInt16)), ((2903 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2914 : GoUInt16)), ((2915 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2946 : GoUInt16)), ((3006 : GoUInt16)), ((60 : GoUInt16))).__copy__(),
new Range16(((3007 : GoUInt16)), ((3010 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3014 : GoUInt16)), ((3016 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3018 : GoUInt16)), ((3020 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3031 : GoUInt16)), ((3072 : GoUInt16)), ((41 : GoUInt16))).__copy__(),
new Range16(((3073 : GoUInt16)), ((3075 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3134 : GoUInt16)), ((3140 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3142 : GoUInt16)), ((3144 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3146 : GoUInt16)), ((3148 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3157 : GoUInt16)), ((3158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3170 : GoUInt16)), ((3171 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3201 : GoUInt16)), ((3203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3262 : GoUInt16)), ((3268 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3270 : GoUInt16)), ((3272 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3274 : GoUInt16)), ((3276 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3285 : GoUInt16)), ((3286 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3298 : GoUInt16)), ((3299 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3328 : GoUInt16)), ((3331 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3390 : GoUInt16)), ((3396 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3398 : GoUInt16)), ((3400 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3402 : GoUInt16)), ((3404 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3415 : GoUInt16)), ((3426 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((3427 : GoUInt16)), ((3457 : GoUInt16)), ((30 : GoUInt16))).__copy__(),
new Range16(((3458 : GoUInt16)), ((3459 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3535 : GoUInt16)), ((3540 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3542 : GoUInt16)), ((3544 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((3545 : GoUInt16)), ((3551 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3570 : GoUInt16)), ((3571 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3633 : GoUInt16)), ((3636 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((3637 : GoUInt16)), ((3642 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3661 : GoUInt16)), ((3761 : GoUInt16)), ((100 : GoUInt16))).__copy__(),
new Range16(((3764 : GoUInt16)), ((3769 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3771 : GoUInt16)), ((3772 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3789 : GoUInt16)), ((3953 : GoUInt16)), ((164 : GoUInt16))).__copy__(),
new Range16(((3954 : GoUInt16)), ((3969 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3981 : GoUInt16)), ((3991 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((3993 : GoUInt16)), ((4028 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4139 : GoUInt16)), ((4150 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4152 : GoUInt16)), ((4155 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((4156 : GoUInt16)), ((4158 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4182 : GoUInt16)), ((4185 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4190 : GoUInt16)), ((4192 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4194 : GoUInt16)), ((4196 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4199 : GoUInt16)), ((4205 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4209 : GoUInt16)), ((4212 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4226 : GoUInt16)), ((4237 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((4239 : GoUInt16)), ((4250 : GoUInt16)), ((11 : GoUInt16))).__copy__(),
new Range16(((4251 : GoUInt16)), ((4253 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5906 : GoUInt16)), ((5907 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5938 : GoUInt16)), ((5939 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5970 : GoUInt16)), ((5971 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6002 : GoUInt16)), ((6003 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6070 : GoUInt16)), ((6088 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6277 : GoUInt16)), ((6278 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6313 : GoUInt16)), ((6432 : GoUInt16)), ((119 : GoUInt16))).__copy__(),
new Range16(((6433 : GoUInt16)), ((6443 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6448 : GoUInt16)), ((6456 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6679 : GoUInt16)), ((6683 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6741 : GoUInt16)), ((6750 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6753 : GoUInt16)), ((6772 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6847 : GoUInt16)), ((6848 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6912 : GoUInt16)), ((6916 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((6965 : GoUInt16)), ((6979 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7040 : GoUInt16)), ((7042 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7073 : GoUInt16)), ((7081 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7084 : GoUInt16)), ((7085 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7143 : GoUInt16)), ((7153 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7204 : GoUInt16)), ((7222 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7655 : GoUInt16)), ((7668 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9398 : GoUInt16)), ((9449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11744 : GoUInt16)), ((11775 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42612 : GoUInt16)), ((42619 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42654 : GoUInt16)), ((42655 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43010 : GoUInt16)), ((43019 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((43043 : GoUInt16)), ((43047 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43136 : GoUInt16)), ((43137 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43188 : GoUInt16)), ((43203 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43205 : GoUInt16)), ((43263 : GoUInt16)), ((58 : GoUInt16))).__copy__(),
new Range16(((43302 : GoUInt16)), ((43306 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43335 : GoUInt16)), ((43346 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43392 : GoUInt16)), ((43395 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43444 : GoUInt16)), ((43455 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43493 : GoUInt16)), ((43561 : GoUInt16)), ((68 : GoUInt16))).__copy__(),
new Range16(((43562 : GoUInt16)), ((43574 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43587 : GoUInt16)), ((43596 : GoUInt16)), ((9 : GoUInt16))).__copy__(),
new Range16(((43597 : GoUInt16)), ((43643 : GoUInt16)), ((46 : GoUInt16))).__copy__(),
new Range16(((43644 : GoUInt16)), ((43645 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43696 : GoUInt16)), ((43698 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((43699 : GoUInt16)), ((43700 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43703 : GoUInt16)), ((43704 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43710 : GoUInt16)), ((43755 : GoUInt16)), ((45 : GoUInt16))).__copy__(),
new Range16(((43756 : GoUInt16)), ((43759 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43765 : GoUInt16)), ((44003 : GoUInt16)), ((238 : GoUInt16))).__copy__(),
new Range16(((44004 : GoUInt16)), ((44010 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((64286 : GoUInt16)), ((64286 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((66422 : GoUInt32)), ((66426 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68097 : GoUInt32)), ((68099 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68101 : GoUInt32)), ((68102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68108 : GoUInt32)), ((68111 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((68900 : GoUInt32)), ((68903 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69291 : GoUInt32)), ((69292 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69632 : GoUInt32)), ((69634 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69688 : GoUInt32)), ((69701 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69762 : GoUInt32)), ((69808 : GoUInt32)), ((46 : GoUInt32))).__copy__(),
new Range32(((69809 : GoUInt32)), ((69816 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69888 : GoUInt32)), ((69890 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69927 : GoUInt32)), ((69938 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69957 : GoUInt32)), ((69958 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70016 : GoUInt32)), ((70018 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70067 : GoUInt32)), ((70079 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70094 : GoUInt32)), ((70095 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70188 : GoUInt32)), ((70196 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70199 : GoUInt32)), ((70206 : GoUInt32)), ((7 : GoUInt32))).__copy__(),
new Range32(((70367 : GoUInt32)), ((70376 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70400 : GoUInt32)), ((70403 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70462 : GoUInt32)), ((70468 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70471 : GoUInt32)), ((70472 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70475 : GoUInt32)), ((70476 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70487 : GoUInt32)), ((70498 : GoUInt32)), ((11 : GoUInt32))).__copy__(),
new Range32(((70499 : GoUInt32)), ((70709 : GoUInt32)), ((210 : GoUInt32))).__copy__(),
new Range32(((70710 : GoUInt32)), ((70721 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70723 : GoUInt32)), ((70725 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70832 : GoUInt32)), ((70849 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71087 : GoUInt32)), ((71093 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71096 : GoUInt32)), ((71102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71132 : GoUInt32)), ((71133 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71216 : GoUInt32)), ((71230 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71232 : GoUInt32)), ((71339 : GoUInt32)), ((107 : GoUInt32))).__copy__(),
new Range32(((71340 : GoUInt32)), ((71349 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71453 : GoUInt32)), ((71466 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71724 : GoUInt32)), ((71736 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71984 : GoUInt32)), ((71989 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71991 : GoUInt32)), ((71992 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71995 : GoUInt32)), ((71996 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72000 : GoUInt32)), ((72002 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72145 : GoUInt32)), ((72151 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72154 : GoUInt32)), ((72159 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72164 : GoUInt32)), ((72193 : GoUInt32)), ((29 : GoUInt32))).__copy__(),
new Range32(((72194 : GoUInt32)), ((72202 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72245 : GoUInt32)), ((72249 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72251 : GoUInt32)), ((72254 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72273 : GoUInt32)), ((72283 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72330 : GoUInt32)), ((72343 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72751 : GoUInt32)), ((72758 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72760 : GoUInt32)), ((72766 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72850 : GoUInt32)), ((72871 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72873 : GoUInt32)), ((72886 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73009 : GoUInt32)), ((73014 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73018 : GoUInt32)), ((73020 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73021 : GoUInt32)), ((73023 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((73024 : GoUInt32)), ((73025 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73027 : GoUInt32)), ((73031 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((73098 : GoUInt32)), ((73102 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73104 : GoUInt32)), ((73105 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73107 : GoUInt32)), ((73110 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73459 : GoUInt32)), ((73462 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94031 : GoUInt32)), ((94033 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((94034 : GoUInt32)), ((94087 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94095 : GoUInt32)), ((94098 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((94192 : GoUInt32)), ((94193 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((113822 : GoUInt32)), ((122880 : GoUInt32)), ((9058 : GoUInt32))).__copy__(),
new Range32(((122881 : GoUInt32)), ((122886 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122888 : GoUInt32)), ((122904 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122907 : GoUInt32)), ((122913 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122915 : GoUInt32)), ((122916 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((122918 : GoUInt32)), ((122922 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((125255 : GoUInt32)), ((127280 : GoUInt32)), ((2025 : GoUInt32))).__copy__(),
new Range32(((127281 : GoUInt32)), ((127305 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127312 : GoUInt32)), ((127337 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((127344 : GoUInt32)), ((127369 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var other_Alphabetic : Pointer<RangeTable> = __Other_Alphabetic;
var __Other_Default_Ignorable_Code_Point : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((847 : GoUInt16)), ((4447 : GoUInt16)), ((3600 : GoUInt16))).__copy__(), new Range16(((4448 : GoUInt16)), ((6068 : GoUInt16)), ((1620 : GoUInt16))).__copy__(), new Range16(((6069 : GoUInt16)), ((8293 : GoUInt16)), ((2224 : GoUInt16))).__copy__(), new Range16(((12644 : GoUInt16)), ((65440 : GoUInt16)), ((52796 : GoUInt16))).__copy__(), new Range16(((65520 : GoUInt16)), ((65528 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((917504 : GoUInt32)), ((917506 : GoUInt32)), ((2 : GoUInt32))).__copy__(), new Range32(((917507 : GoUInt32)), ((917535 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((917632 : GoUInt32)), ((917759 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((918000 : GoUInt32)), ((921599 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var other_Default_Ignorable_Code_Point : Pointer<RangeTable> = __Other_Default_Ignorable_Code_Point;
var __Other_ID_Continue : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((183 : GoUInt16)), ((903 : GoUInt16)), ((720 : GoUInt16))).__copy__(), new Range16(((4969 : GoUInt16)), ((4977 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((6618 : GoUInt16)), ((6618 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var other_ID_Continue : Pointer<RangeTable> = __Other_ID_Continue;
var __Other_ID_Start : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6277 : GoUInt16)), ((6278 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((8472 : GoUInt16)), ((8494 : GoUInt16)), ((22 : GoUInt16))).__copy__(), new Range16(((12443 : GoUInt16)), ((12444 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>().nil(), latinOffset : 0 } : RangeTable)));
var other_ID_Start : Pointer<RangeTable> = __Other_ID_Start;
var __Other_Lowercase : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((170 : GoUInt16)), ((186 : GoUInt16)), ((16 : GoUInt16))).__copy__(),
new Range16(((688 : GoUInt16)), ((696 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((704 : GoUInt16)), ((705 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((736 : GoUInt16)), ((740 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((837 : GoUInt16)), ((890 : GoUInt16)), ((53 : GoUInt16))).__copy__(),
new Range16(((7468 : GoUInt16)), ((7530 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7544 : GoUInt16)), ((7579 : GoUInt16)), ((35 : GoUInt16))).__copy__(),
new Range16(((7580 : GoUInt16)), ((7615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8305 : GoUInt16)), ((8319 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((8336 : GoUInt16)), ((8348 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8560 : GoUInt16)), ((8575 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9424 : GoUInt16)), ((9449 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11388 : GoUInt16)), ((11389 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42652 : GoUInt16)), ((42653 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42864 : GoUInt16)), ((43000 : GoUInt16)), ((136 : GoUInt16))).__copy__(),
new Range16(((43001 : GoUInt16)), ((43868 : GoUInt16)), ((867 : GoUInt16))).__copy__(),
new Range16(((43869 : GoUInt16)), ((43871 : GoUInt16)), ((1 : GoUInt16))).__copy__()), latinOffset : ((1 : GoInt)), r32 : new Slice<Range32>().nil() } : RangeTable)));
var other_Lowercase : Pointer<RangeTable> = __Other_Lowercase;
var __Other_Math : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((94 : GoUInt16)), ((976 : GoUInt16)), ((882 : GoUInt16))).__copy__(),
new Range16(((977 : GoUInt16)), ((978 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((981 : GoUInt16)), ((1008 : GoUInt16)), ((27 : GoUInt16))).__copy__(),
new Range16(((1009 : GoUInt16)), ((1012 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((1013 : GoUInt16)), ((8214 : GoUInt16)), ((7201 : GoUInt16))).__copy__(),
new Range16(((8242 : GoUInt16)), ((8244 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8256 : GoUInt16)), ((8289 : GoUInt16)), ((33 : GoUInt16))).__copy__(),
new Range16(((8290 : GoUInt16)), ((8292 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8317 : GoUInt16)), ((8318 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8333 : GoUInt16)), ((8334 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8400 : GoUInt16)), ((8412 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8417 : GoUInt16)), ((8421 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8422 : GoUInt16)), ((8427 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8428 : GoUInt16)), ((8431 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8450 : GoUInt16)), ((8455 : GoUInt16)), ((5 : GoUInt16))).__copy__(),
new Range16(((8458 : GoUInt16)), ((8467 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8469 : GoUInt16)), ((8473 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8474 : GoUInt16)), ((8477 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8484 : GoUInt16)), ((8488 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((8489 : GoUInt16)), ((8492 : GoUInt16)), ((3 : GoUInt16))).__copy__(),
new Range16(((8493 : GoUInt16)), ((8495 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8496 : GoUInt16)), ((8497 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8499 : GoUInt16)), ((8504 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8508 : GoUInt16)), ((8511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8517 : GoUInt16)), ((8521 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8597 : GoUInt16)), ((8601 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8604 : GoUInt16)), ((8607 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8609 : GoUInt16)), ((8610 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8612 : GoUInt16)), ((8613 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8615 : GoUInt16)), ((8617 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8618 : GoUInt16)), ((8621 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8624 : GoUInt16)), ((8625 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8630 : GoUInt16)), ((8631 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8636 : GoUInt16)), ((8653 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8656 : GoUInt16)), ((8657 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8659 : GoUInt16)), ((8661 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((8662 : GoUInt16)), ((8667 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8669 : GoUInt16)), ((8676 : GoUInt16)), ((7 : GoUInt16))).__copy__(),
new Range16(((8677 : GoUInt16)), ((8968 : GoUInt16)), ((291 : GoUInt16))).__copy__(),
new Range16(((8969 : GoUInt16)), ((8971 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9140 : GoUInt16)), ((9141 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9143 : GoUInt16)), ((9168 : GoUInt16)), ((25 : GoUInt16))).__copy__(),
new Range16(((9186 : GoUInt16)), ((9632 : GoUInt16)), ((446 : GoUInt16))).__copy__(),
new Range16(((9633 : GoUInt16)), ((9646 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((9647 : GoUInt16)), ((9654 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9660 : GoUInt16)), ((9664 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9670 : GoUInt16)), ((9671 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9674 : GoUInt16)), ((9675 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9679 : GoUInt16)), ((9683 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9698 : GoUInt16)), ((9700 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((9703 : GoUInt16)), ((9708 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9733 : GoUInt16)), ((9734 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9792 : GoUInt16)), ((9794 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((9824 : GoUInt16)), ((9827 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((9837 : GoUInt16)), ((9838 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10181 : GoUInt16)), ((10182 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10214 : GoUInt16)), ((10223 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10627 : GoUInt16)), ((10648 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10712 : GoUInt16)), ((10715 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((10748 : GoUInt16)), ((10749 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65121 : GoUInt16)), ((65123 : GoUInt16)), ((2 : GoUInt16))).__copy__(),
new Range16(((65128 : GoUInt16)), ((65340 : GoUInt16)), ((212 : GoUInt16))).__copy__(),
new Range16(((65342 : GoUInt16)), ((65342 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((119808 : GoUInt32)), ((119892 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119894 : GoUInt32)), ((119964 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119966 : GoUInt32)), ((119967 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119970 : GoUInt32)), ((119973 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119974 : GoUInt32)), ((119977 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((119978 : GoUInt32)), ((119980 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119982 : GoUInt32)), ((119993 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((119995 : GoUInt32)), ((119997 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((119998 : GoUInt32)), ((120003 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120005 : GoUInt32)), ((120069 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120071 : GoUInt32)), ((120074 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120077 : GoUInt32)), ((120084 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120086 : GoUInt32)), ((120092 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120094 : GoUInt32)), ((120121 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120123 : GoUInt32)), ((120126 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120128 : GoUInt32)), ((120132 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120134 : GoUInt32)), ((120138 : GoUInt32)), ((4 : GoUInt32))).__copy__(),
new Range32(((120139 : GoUInt32)), ((120144 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120146 : GoUInt32)), ((120485 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120488 : GoUInt32)), ((120512 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120514 : GoUInt32)), ((120538 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120540 : GoUInt32)), ((120570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120572 : GoUInt32)), ((120596 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120598 : GoUInt32)), ((120628 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120630 : GoUInt32)), ((120654 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120656 : GoUInt32)), ((120686 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120688 : GoUInt32)), ((120712 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120714 : GoUInt32)), ((120744 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120746 : GoUInt32)), ((120770 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120772 : GoUInt32)), ((120779 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((120782 : GoUInt32)), ((120831 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126464 : GoUInt32)), ((126467 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126469 : GoUInt32)), ((126495 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126497 : GoUInt32)), ((126498 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126500 : GoUInt32)), ((126503 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126505 : GoUInt32)), ((126514 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126516 : GoUInt32)), ((126519 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126521 : GoUInt32)), ((126523 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126530 : GoUInt32)), ((126535 : GoUInt32)), ((5 : GoUInt32))).__copy__(),
new Range32(((126537 : GoUInt32)), ((126541 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126542 : GoUInt32)), ((126543 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126545 : GoUInt32)), ((126546 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126548 : GoUInt32)), ((126551 : GoUInt32)), ((3 : GoUInt32))).__copy__(),
new Range32(((126553 : GoUInt32)), ((126561 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126562 : GoUInt32)), ((126564 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126567 : GoUInt32)), ((126570 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126572 : GoUInt32)), ((126578 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126580 : GoUInt32)), ((126583 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126585 : GoUInt32)), ((126588 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126590 : GoUInt32)), ((126592 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((126593 : GoUInt32)), ((126601 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126603 : GoUInt32)), ((126619 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126625 : GoUInt32)), ((126627 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126629 : GoUInt32)), ((126633 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((126635 : GoUInt32)), ((126651 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var other_Math : Pointer<RangeTable> = __Other_Math;
var other_Uppercase : Pointer<RangeTable> = __Other_Uppercase;
var radical : Pointer<RangeTable> = __Radical;
var __Regional_Indicator : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(), r32 : new Slice<Range32>(new Range32(((127462 : GoUInt32)), ((127487 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var regional_Indicator : Pointer<RangeTable> = __Regional_Indicator;
var __Sentence_Terminal : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(
new Range16(((33 : GoUInt16)), ((46 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((63 : GoUInt16)), ((1417 : GoUInt16)), ((1354 : GoUInt16))).__copy__(),
new Range16(((1566 : GoUInt16)), ((1567 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((1748 : GoUInt16)), ((1792 : GoUInt16)), ((44 : GoUInt16))).__copy__(),
new Range16(((1793 : GoUInt16)), ((1794 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((2041 : GoUInt16)), ((2103 : GoUInt16)), ((62 : GoUInt16))).__copy__(),
new Range16(((2105 : GoUInt16)), ((2109 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((2110 : GoUInt16)), ((2404 : GoUInt16)), ((294 : GoUInt16))).__copy__(),
new Range16(((2405 : GoUInt16)), ((4170 : GoUInt16)), ((1765 : GoUInt16))).__copy__(),
new Range16(((4171 : GoUInt16)), ((4962 : GoUInt16)), ((791 : GoUInt16))).__copy__(),
new Range16(((4967 : GoUInt16)), ((4968 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((5742 : GoUInt16)), ((5941 : GoUInt16)), ((199 : GoUInt16))).__copy__(),
new Range16(((5942 : GoUInt16)), ((6147 : GoUInt16)), ((205 : GoUInt16))).__copy__(),
new Range16(((6153 : GoUInt16)), ((6468 : GoUInt16)), ((315 : GoUInt16))).__copy__(),
new Range16(((6469 : GoUInt16)), ((6824 : GoUInt16)), ((355 : GoUInt16))).__copy__(),
new Range16(((6825 : GoUInt16)), ((6827 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7002 : GoUInt16)), ((7003 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7006 : GoUInt16)), ((7007 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7227 : GoUInt16)), ((7228 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((7294 : GoUInt16)), ((7295 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8252 : GoUInt16)), ((8253 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((8263 : GoUInt16)), ((8265 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((11822 : GoUInt16)), ((11836 : GoUInt16)), ((14 : GoUInt16))).__copy__(),
new Range16(((12290 : GoUInt16)), ((42239 : GoUInt16)), ((29949 : GoUInt16))).__copy__(),
new Range16(((42510 : GoUInt16)), ((42511 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((42739 : GoUInt16)), ((42743 : GoUInt16)), ((4 : GoUInt16))).__copy__(),
new Range16(((43126 : GoUInt16)), ((43127 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43214 : GoUInt16)), ((43215 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43311 : GoUInt16)), ((43464 : GoUInt16)), ((153 : GoUInt16))).__copy__(),
new Range16(((43465 : GoUInt16)), ((43613 : GoUInt16)), ((148 : GoUInt16))).__copy__(),
new Range16(((43614 : GoUInt16)), ((43615 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((43760 : GoUInt16)), ((43761 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((44011 : GoUInt16)), ((65106 : GoUInt16)), ((21095 : GoUInt16))).__copy__(),
new Range16(((65110 : GoUInt16)), ((65111 : GoUInt16)), ((1 : GoUInt16))).__copy__(),
new Range16(((65281 : GoUInt16)), ((65294 : GoUInt16)), ((13 : GoUInt16))).__copy__(),
new Range16(((65311 : GoUInt16)), ((65377 : GoUInt16)), ((66 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(
new Range32(((68182 : GoUInt32)), ((68183 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69461 : GoUInt32)), ((69465 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69703 : GoUInt32)), ((69704 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69822 : GoUInt32)), ((69825 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((69953 : GoUInt32)), ((69955 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70085 : GoUInt32)), ((70086 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((70093 : GoUInt32)), ((70110 : GoUInt32)), ((17 : GoUInt32))).__copy__(),
new Range32(((70111 : GoUInt32)), ((70200 : GoUInt32)), ((89 : GoUInt32))).__copy__(),
new Range32(((70201 : GoUInt32)), ((70203 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((70204 : GoUInt32)), ((70313 : GoUInt32)), ((109 : GoUInt32))).__copy__(),
new Range32(((70731 : GoUInt32)), ((70732 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71106 : GoUInt32)), ((71107 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71113 : GoUInt32)), ((71127 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71233 : GoUInt32)), ((71234 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((71484 : GoUInt32)), ((71486 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72004 : GoUInt32)), ((72006 : GoUInt32)), ((2 : GoUInt32))).__copy__(),
new Range32(((72258 : GoUInt32)), ((72259 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72347 : GoUInt32)), ((72348 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((72769 : GoUInt32)), ((72770 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((73463 : GoUInt32)), ((73464 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92782 : GoUInt32)), ((92783 : GoUInt32)), ((1 : GoUInt32))).__copy__(),
new Range32(((92917 : GoUInt32)), ((92983 : GoUInt32)), ((66 : GoUInt32))).__copy__(),
new Range32(((92984 : GoUInt32)), ((92996 : GoUInt32)), ((12 : GoUInt32))).__copy__(),
new Range32(((93848 : GoUInt32)), ((113823 : GoUInt32)), ((19975 : GoUInt32))).__copy__(),
new Range32(((121480 : GoUInt32)), ((121480 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : ((1 : GoInt)) } : RangeTable)));
var sentence_Terminal : Pointer<RangeTable> = __Sentence_Terminal;
var terminal_Punctuation : Pointer<RangeTable> = __Terminal_Punctuation;
var __Unified_Ideograph : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((13312 : GoUInt16)), ((19903 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((19968 : GoUInt16)), ((40956 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64014 : GoUInt16)), ((64015 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((64017 : GoUInt16)), ((64019 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((64020 : GoUInt16)), ((64031 : GoUInt16)), ((11 : GoUInt16))).__copy__(), new Range16(((64033 : GoUInt16)), ((64035 : GoUInt16)), ((2 : GoUInt16))).__copy__(), new Range16(((64036 : GoUInt16)), ((64039 : GoUInt16)), ((3 : GoUInt16))).__copy__(), new Range16(((64040 : GoUInt16)), ((64041 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((131072 : GoUInt32)), ((173789 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((173824 : GoUInt32)), ((177972 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((177984 : GoUInt32)), ((178205 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((178208 : GoUInt32)), ((183969 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((183984 : GoUInt32)), ((191456 : GoUInt32)), ((1 : GoUInt32))).__copy__(), new Range32(((196608 : GoUInt32)), ((201546 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var unified_Ideograph : Pointer<RangeTable> = __Unified_Ideograph;
var __Variation_Selector : Pointer<RangeTable> = Go.pointer((({ r16 : new Slice<Range16>(new Range16(((6155 : GoUInt16)), ((6157 : GoUInt16)), ((1 : GoUInt16))).__copy__(), new Range16(((65024 : GoUInt16)), ((65039 : GoUInt16)), ((1 : GoUInt16))).__copy__()), r32 : new Slice<Range32>(new Range32(((917760 : GoUInt32)), ((917999 : GoUInt32)), ((1 : GoUInt32))).__copy__()), latinOffset : 0 } : RangeTable)));
var variation_Selector : Pointer<RangeTable> = __Variation_Selector;
var properties : GoMap<GoString, Pointer<RangeTable>> = new GoMap<GoString, Pointer<RangeTable>>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range16", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }]))) }, { name : "r32", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range32", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }]))) }, { name : "latinOffset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))),
{ key : "ASCII_Hex_Digit", value : ascii_Hex_Digit },
{ key : "Bidi_Control", value : bidi_Control },
{ key : "Dash", value : dash },
{ key : "Deprecated", value : deprecated },
{ key : "Diacritic", value : diacritic },
{ key : "Extender", value : extender },
{ key : "Hex_Digit", value : hex_Digit },
{ key : "Hyphen", value : hyphen },
{ key : "IDS_Binary_Operator", value : ids_Binary_Operator },
{ key : "IDS_Trinary_Operator", value : ids_Trinary_Operator },
{ key : "Ideographic", value : ideographic },
{ key : "Join_Control", value : join_Control },
{ key : "Logical_Order_Exception", value : logical_Order_Exception },
{ key : "Noncharacter_Code_Point", value : noncharacter_Code_Point },
{ key : "Other_Alphabetic", value : other_Alphabetic },
{ key : "Other_Default_Ignorable_Code_Point", value : other_Default_Ignorable_Code_Point },
{ key : "Other_Grapheme_Extend", value : other_Grapheme_Extend },
{ key : "Other_ID_Continue", value : other_ID_Continue },
{ key : "Other_ID_Start", value : other_ID_Start },
{ key : "Other_Lowercase", value : other_Lowercase },
{ key : "Other_Math", value : other_Math },
{ key : "Other_Uppercase", value : other_Uppercase },
{ key : "Pattern_Syntax", value : pattern_Syntax },
{ key : "Pattern_White_Space", value : pattern_White_Space },
{ key : "Prepended_Concatenation_Mark", value : prepended_Concatenation_Mark },
{ key : "Quotation_Mark", value : quotation_Mark },
{ key : "Radical", value : radical },
{ key : "Regional_Indicator", value : regional_Indicator },
{ key : "Sentence_Terminal", value : sentence_Terminal },
{ key : "STerm", value : sentence_Terminal },
{ key : "Soft_Dotted", value : soft_Dotted },
{ key : "Terminal_Punctuation", value : terminal_Punctuation },
{ key : "Unified_Ideograph", value : unified_Ideograph },
{ key : "Variation_Selector", value : variation_Selector },
{ key : "White_Space", value : white_Space });
final _pp = (((1 : GoUnTypedInt)) << (7 : GoUnTypedInt));
final _pg : GoUnTypedInt = _pp | _pZ;
var mark : Pointer<RangeTable> = __M;
final upperCase : GoUnTypedInt = (0 : GoUnTypedInt);
final titleCase = (2 : GoUnTypedInt);
var printRanges : Slice<Pointer<RangeTable>> = new Slice<Pointer<RangeTable>>(l, m, n, p, s);
var turkishCase : SpecialCase = __TurkishCase.__copy__();
final maxCase = (3 : GoUnTypedInt);
final replacementChar : GoInt32 = (("\u{FFFD}".code : GoRune));
var punct : Pointer<RangeTable> = __P;
final upperLower : GoInt32 = maxRune + ((1 : GoInt32));
var upper : Pointer<RangeTable> = __Lu;
var title : Pointer<RangeTable> = __Lt;
var _properties : GoArray<GoUInt8> = {
        var s = new GoArray<GoUInt8>(...[for (i in 0 ... 256) 0]);
        s[0] = _pC;
        s[1] = _pC;
        s[2] = _pC;
        s[3] = _pC;
        s[4] = _pC;
        s[5] = _pC;
        s[6] = _pC;
        s[7] = _pC;
        s[8] = _pC;
        s[9] = _pC;
        s[10] = _pC;
        s[11] = _pC;
        s[12] = _pC;
        s[13] = _pC;
        s[14] = _pC;
        s[15] = _pC;
        s[16] = _pC;
        s[17] = _pC;
        s[18] = _pC;
        s[19] = _pC;
        s[20] = _pC;
        s[21] = _pC;
        s[22] = _pC;
        s[23] = _pC;
        s[24] = _pC;
        s[25] = _pC;
        s[26] = _pC;
        s[27] = _pC;
        s[28] = _pC;
        s[29] = _pC;
        s[30] = _pC;
        s[31] = _pC;
        s[32] = _pZ | _pp;
        s[33] = _pP | _pp;
        s[34] = _pP | _pp;
        s[35] = _pP | _pp;
        s[36] = _pS | _pp;
        s[37] = _pP | _pp;
        s[38] = _pP | _pp;
        s[39] = _pP | _pp;
        s[40] = _pP | _pp;
        s[41] = _pP | _pp;
        s[42] = _pP | _pp;
        s[43] = _pS | _pp;
        s[44] = _pP | _pp;
        s[45] = _pP | _pp;
        s[46] = _pP | _pp;
        s[47] = _pP | _pp;
        s[48] = _pN | _pp;
        s[49] = _pN | _pp;
        s[50] = _pN | _pp;
        s[51] = _pN | _pp;
        s[52] = _pN | _pp;
        s[53] = _pN | _pp;
        s[54] = _pN | _pp;
        s[55] = _pN | _pp;
        s[56] = _pN | _pp;
        s[57] = _pN | _pp;
        s[58] = _pP | _pp;
        s[59] = _pP | _pp;
        s[60] = _pS | _pp;
        s[61] = _pS | _pp;
        s[62] = _pS | _pp;
        s[63] = _pP | _pp;
        s[64] = _pP | _pp;
        s[65] = _pLu | _pp;
        s[66] = _pLu | _pp;
        s[67] = _pLu | _pp;
        s[68] = _pLu | _pp;
        s[69] = _pLu | _pp;
        s[70] = _pLu | _pp;
        s[71] = _pLu | _pp;
        s[72] = _pLu | _pp;
        s[73] = _pLu | _pp;
        s[74] = _pLu | _pp;
        s[75] = _pLu | _pp;
        s[76] = _pLu | _pp;
        s[77] = _pLu | _pp;
        s[78] = _pLu | _pp;
        s[79] = _pLu | _pp;
        s[80] = _pLu | _pp;
        s[81] = _pLu | _pp;
        s[82] = _pLu | _pp;
        s[83] = _pLu | _pp;
        s[84] = _pLu | _pp;
        s[85] = _pLu | _pp;
        s[86] = _pLu | _pp;
        s[87] = _pLu | _pp;
        s[88] = _pLu | _pp;
        s[89] = _pLu | _pp;
        s[90] = _pLu | _pp;
        s[91] = _pP | _pp;
        s[92] = _pP | _pp;
        s[93] = _pP | _pp;
        s[94] = _pS | _pp;
        s[95] = _pP | _pp;
        s[96] = _pS | _pp;
        s[97] = _pLl | _pp;
        s[98] = _pLl | _pp;
        s[99] = _pLl | _pp;
        s[100] = _pLl | _pp;
        s[101] = _pLl | _pp;
        s[102] = _pLl | _pp;
        s[103] = _pLl | _pp;
        s[104] = _pLl | _pp;
        s[105] = _pLl | _pp;
        s[106] = _pLl | _pp;
        s[107] = _pLl | _pp;
        s[108] = _pLl | _pp;
        s[109] = _pLl | _pp;
        s[110] = _pLl | _pp;
        s[111] = _pLl | _pp;
        s[112] = _pLl | _pp;
        s[113] = _pLl | _pp;
        s[114] = _pLl | _pp;
        s[115] = _pLl | _pp;
        s[116] = _pLl | _pp;
        s[117] = _pLl | _pp;
        s[118] = _pLl | _pp;
        s[119] = _pLl | _pp;
        s[120] = _pLl | _pp;
        s[121] = _pLl | _pp;
        s[122] = _pLl | _pp;
        s[123] = _pP | _pp;
        s[124] = _pS | _pp;
        s[125] = _pP | _pp;
        s[126] = _pS | _pp;
        s[127] = _pC;
        s[128] = _pC;
        s[129] = _pC;
        s[130] = _pC;
        s[131] = _pC;
        s[132] = _pC;
        s[133] = _pC;
        s[134] = _pC;
        s[135] = _pC;
        s[136] = _pC;
        s[137] = _pC;
        s[138] = _pC;
        s[139] = _pC;
        s[140] = _pC;
        s[141] = _pC;
        s[142] = _pC;
        s[143] = _pC;
        s[144] = _pC;
        s[145] = _pC;
        s[146] = _pC;
        s[147] = _pC;
        s[148] = _pC;
        s[149] = _pC;
        s[150] = _pC;
        s[151] = _pC;
        s[152] = _pC;
        s[153] = _pC;
        s[154] = _pC;
        s[155] = _pC;
        s[156] = _pC;
        s[157] = _pC;
        s[158] = _pC;
        s[159] = _pC;
        s[160] = _pZ;
        s[161] = _pP | _pp;
        s[162] = _pS | _pp;
        s[163] = _pS | _pp;
        s[164] = _pS | _pp;
        s[165] = _pS | _pp;
        s[166] = _pS | _pp;
        s[167] = _pP | _pp;
        s[168] = _pS | _pp;
        s[169] = _pS | _pp;
        s[170] = _pLo | _pp;
        s[171] = _pP | _pp;
        s[172] = _pS | _pp;
        s[173] = ((0 : GoUInt8));
        s[174] = _pS | _pp;
        s[175] = _pS | _pp;
        s[176] = _pS | _pp;
        s[177] = _pS | _pp;
        s[178] = _pN | _pp;
        s[179] = _pN | _pp;
        s[180] = _pS | _pp;
        s[181] = _pLl | _pp;
        s[182] = _pP | _pp;
        s[183] = _pP | _pp;
        s[184] = _pS | _pp;
        s[185] = _pN | _pp;
        s[186] = _pLo | _pp;
        s[187] = _pP | _pp;
        s[188] = _pN | _pp;
        s[189] = _pN | _pp;
        s[190] = _pN | _pp;
        s[191] = _pP | _pp;
        s[192] = _pLu | _pp;
        s[193] = _pLu | _pp;
        s[194] = _pLu | _pp;
        s[195] = _pLu | _pp;
        s[196] = _pLu | _pp;
        s[197] = _pLu | _pp;
        s[198] = _pLu | _pp;
        s[199] = _pLu | _pp;
        s[200] = _pLu | _pp;
        s[201] = _pLu | _pp;
        s[202] = _pLu | _pp;
        s[203] = _pLu | _pp;
        s[204] = _pLu | _pp;
        s[205] = _pLu | _pp;
        s[206] = _pLu | _pp;
        s[207] = _pLu | _pp;
        s[208] = _pLu | _pp;
        s[209] = _pLu | _pp;
        s[210] = _pLu | _pp;
        s[211] = _pLu | _pp;
        s[212] = _pLu | _pp;
        s[213] = _pLu | _pp;
        s[214] = _pLu | _pp;
        s[215] = _pS | _pp;
        s[216] = _pLu | _pp;
        s[217] = _pLu | _pp;
        s[218] = _pLu | _pp;
        s[219] = _pLu | _pp;
        s[220] = _pLu | _pp;
        s[221] = _pLu | _pp;
        s[222] = _pLu | _pp;
        s[223] = _pLl | _pp;
        s[224] = _pLl | _pp;
        s[225] = _pLl | _pp;
        s[226] = _pLl | _pp;
        s[227] = _pLl | _pp;
        s[228] = _pLl | _pp;
        s[229] = _pLl | _pp;
        s[230] = _pLl | _pp;
        s[231] = _pLl | _pp;
        s[232] = _pLl | _pp;
        s[233] = _pLl | _pp;
        s[234] = _pLl | _pp;
        s[235] = _pLl | _pp;
        s[236] = _pLl | _pp;
        s[237] = _pLl | _pp;
        s[238] = _pLl | _pp;
        s[239] = _pLl | _pp;
        s[240] = _pLl | _pp;
        s[241] = _pLl | _pp;
        s[242] = _pLl | _pp;
        s[243] = _pLl | _pp;
        s[244] = _pLl | _pp;
        s[245] = _pLl | _pp;
        s[246] = _pLl | _pp;
        s[247] = _pS | _pp;
        s[248] = _pLl | _pp;
        s[249] = _pLl | _pp;
        s[250] = _pLl | _pp;
        s[251] = _pLl | _pp;
        s[252] = _pLl | _pp;
        s[253] = _pLl | _pp;
        s[254] = _pLl | _pp;
        s[255] = _pLl | _pp;
        s;
    };
final _pLmask : GoUnTypedInt = _pLo;
var graphicRanges : Slice<Pointer<RangeTable>> = new Slice<Pointer<RangeTable>>(l, m, n, p, s, zs);
var number : Pointer<RangeTable> = __N;
final _linearMax : GoInt64 = ((18 : GoUnTypedInt));
var __CaseRanges : Slice<CaseRange> = new Slice<CaseRange>(
new CaseRange(((65 : GoUInt32)), ((90 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((97 : GoUInt32)), ((122 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((181 : GoUInt32)), ((181 : GoUInt32)), new T_d(new GoArray<GoInt32>(((743 : GoInt32)), ((0 : GoInt32)), ((743 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((192 : GoUInt32)), ((214 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((216 : GoUInt32)), ((222 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((224 : GoUInt32)), ((246 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((248 : GoUInt32)), ((254 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((255 : GoUInt32)), ((255 : GoUInt32)), new T_d(new GoArray<GoInt32>(((121 : GoInt32)), ((0 : GoInt32)), ((121 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((256 : GoUInt32)), ((303 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((304 : GoUInt32)), ((304 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((199 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((305 : GoUInt32)), ((305 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((232 : GoUnTypedInt)), ((0 : GoInt32)), -((232 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((306 : GoUInt32)), ((311 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((313 : GoUInt32)), ((328 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((330 : GoUInt32)), ((375 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((376 : GoUInt32)), ((376 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((121 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((377 : GoUInt32)), ((382 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((383 : GoUInt32)), ((383 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((300 : GoUnTypedInt)), ((0 : GoInt32)), -((300 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((384 : GoUInt32)), ((384 : GoUInt32)), new T_d(new GoArray<GoInt32>(((195 : GoInt32)), ((0 : GoInt32)), ((195 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((385 : GoUInt32)), ((385 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((210 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((386 : GoUInt32)), ((389 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((390 : GoUInt32)), ((390 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((206 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((391 : GoUInt32)), ((392 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((393 : GoUInt32)), ((394 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((205 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((395 : GoUInt32)), ((396 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((398 : GoUInt32)), ((398 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((79 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((399 : GoUInt32)), ((399 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((202 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((400 : GoUInt32)), ((400 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((203 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((401 : GoUInt32)), ((402 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((403 : GoUInt32)), ((403 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((205 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((404 : GoUInt32)), ((404 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((207 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((405 : GoUInt32)), ((405 : GoUInt32)), new T_d(new GoArray<GoInt32>(((97 : GoInt32)), ((0 : GoInt32)), ((97 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((406 : GoUInt32)), ((406 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((211 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((407 : GoUInt32)), ((407 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((209 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((408 : GoUInt32)), ((409 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((410 : GoUInt32)), ((410 : GoUInt32)), new T_d(new GoArray<GoInt32>(((163 : GoInt32)), ((0 : GoInt32)), ((163 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((412 : GoUInt32)), ((412 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((211 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((413 : GoUInt32)), ((413 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((213 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((414 : GoUInt32)), ((414 : GoUInt32)), new T_d(new GoArray<GoInt32>(((130 : GoInt32)), ((0 : GoInt32)), ((130 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((415 : GoUInt32)), ((415 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((214 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((416 : GoUInt32)), ((421 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((422 : GoUInt32)), ((422 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((218 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((423 : GoUInt32)), ((424 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((425 : GoUInt32)), ((425 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((218 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((428 : GoUInt32)), ((429 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((430 : GoUInt32)), ((430 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((218 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((431 : GoUInt32)), ((432 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((433 : GoUInt32)), ((434 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((217 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((435 : GoUInt32)), ((438 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((439 : GoUInt32)), ((439 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((219 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((440 : GoUInt32)), ((441 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((444 : GoUInt32)), ((445 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((447 : GoUInt32)), ((447 : GoUInt32)), new T_d(new GoArray<GoInt32>(((56 : GoInt32)), ((0 : GoInt32)), ((56 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((452 : GoUInt32)), ((452 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((2 : GoInt32)), ((1 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((453 : GoUInt32)), ((453 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((1 : GoUnTypedInt)), ((1 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((454 : GoUInt32)), ((454 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((2 : GoUnTypedInt)), ((0 : GoInt32)), -((1 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((455 : GoUInt32)), ((455 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((2 : GoInt32)), ((1 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((456 : GoUInt32)), ((456 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((1 : GoUnTypedInt)), ((1 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((457 : GoUInt32)), ((457 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((2 : GoUnTypedInt)), ((0 : GoInt32)), -((1 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((458 : GoUInt32)), ((458 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((2 : GoInt32)), ((1 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((459 : GoUInt32)), ((459 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((1 : GoUnTypedInt)), ((1 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((460 : GoUInt32)), ((460 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((2 : GoUnTypedInt)), ((0 : GoInt32)), -((1 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((461 : GoUInt32)), ((476 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((477 : GoUInt32)), ((477 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((79 : GoUnTypedInt)), ((0 : GoInt32)), -((79 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((478 : GoUInt32)), ((495 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((497 : GoUInt32)), ((497 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((2 : GoInt32)), ((1 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((498 : GoUInt32)), ((498 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((1 : GoUnTypedInt)), ((1 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((499 : GoUInt32)), ((499 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((2 : GoUnTypedInt)), ((0 : GoInt32)), -((1 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((500 : GoUInt32)), ((501 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((502 : GoUInt32)), ((502 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((97 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((503 : GoUInt32)), ((503 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((56 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((504 : GoUInt32)), ((543 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((544 : GoUInt32)), ((544 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((130 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((546 : GoUInt32)), ((563 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((570 : GoUInt32)), ((570 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((10795 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((571 : GoUInt32)), ((572 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((573 : GoUInt32)), ((573 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((163 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((574 : GoUInt32)), ((574 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((10792 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((575 : GoUInt32)), ((576 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10815 : GoInt32)), ((0 : GoInt32)), ((10815 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((577 : GoUInt32)), ((578 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((579 : GoUInt32)), ((579 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((195 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((580 : GoUInt32)), ((580 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((69 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((581 : GoUInt32)), ((581 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((71 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((582 : GoUInt32)), ((591 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((592 : GoUInt32)), ((592 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10783 : GoInt32)), ((0 : GoInt32)), ((10783 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((593 : GoUInt32)), ((593 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10780 : GoInt32)), ((0 : GoInt32)), ((10780 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((594 : GoUInt32)), ((594 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10782 : GoInt32)), ((0 : GoInt32)), ((10782 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((595 : GoUInt32)), ((595 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((210 : GoUnTypedInt)), ((0 : GoInt32)), -((210 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((596 : GoUInt32)), ((596 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((206 : GoUnTypedInt)), ((0 : GoInt32)), -((206 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((598 : GoUInt32)), ((599 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((205 : GoUnTypedInt)), ((0 : GoInt32)), -((205 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((601 : GoUInt32)), ((601 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((202 : GoUnTypedInt)), ((0 : GoInt32)), -((202 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((603 : GoUInt32)), ((603 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((203 : GoUnTypedInt)), ((0 : GoInt32)), -((203 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((604 : GoUInt32)), ((604 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42319 : GoInt32)), ((0 : GoInt32)), ((42319 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((608 : GoUInt32)), ((608 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((205 : GoUnTypedInt)), ((0 : GoInt32)), -((205 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((609 : GoUInt32)), ((609 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42315 : GoInt32)), ((0 : GoInt32)), ((42315 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((611 : GoUInt32)), ((611 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((207 : GoUnTypedInt)), ((0 : GoInt32)), -((207 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((613 : GoUInt32)), ((613 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42280 : GoInt32)), ((0 : GoInt32)), ((42280 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((614 : GoUInt32)), ((614 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42308 : GoInt32)), ((0 : GoInt32)), ((42308 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((616 : GoUInt32)), ((616 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((209 : GoUnTypedInt)), ((0 : GoInt32)), -((209 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((617 : GoUInt32)), ((617 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((211 : GoUnTypedInt)), ((0 : GoInt32)), -((211 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((618 : GoUInt32)), ((618 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42308 : GoInt32)), ((0 : GoInt32)), ((42308 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((619 : GoUInt32)), ((619 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10743 : GoInt32)), ((0 : GoInt32)), ((10743 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((620 : GoUInt32)), ((620 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42305 : GoInt32)), ((0 : GoInt32)), ((42305 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((623 : GoUInt32)), ((623 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((211 : GoUnTypedInt)), ((0 : GoInt32)), -((211 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((625 : GoUInt32)), ((625 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10749 : GoInt32)), ((0 : GoInt32)), ((10749 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((626 : GoUInt32)), ((626 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((213 : GoUnTypedInt)), ((0 : GoInt32)), -((213 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((629 : GoUInt32)), ((629 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((214 : GoUnTypedInt)), ((0 : GoInt32)), -((214 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((637 : GoUInt32)), ((637 : GoUInt32)), new T_d(new GoArray<GoInt32>(((10727 : GoInt32)), ((0 : GoInt32)), ((10727 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((640 : GoUInt32)), ((640 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((218 : GoUnTypedInt)), ((0 : GoInt32)), -((218 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((642 : GoUInt32)), ((642 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42307 : GoInt32)), ((0 : GoInt32)), ((42307 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((643 : GoUInt32)), ((643 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((218 : GoUnTypedInt)), ((0 : GoInt32)), -((218 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((647 : GoUInt32)), ((647 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42282 : GoInt32)), ((0 : GoInt32)), ((42282 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((648 : GoUInt32)), ((648 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((218 : GoUnTypedInt)), ((0 : GoInt32)), -((218 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((649 : GoUInt32)), ((649 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((69 : GoUnTypedInt)), ((0 : GoInt32)), -((69 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((650 : GoUInt32)), ((651 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((217 : GoUnTypedInt)), ((0 : GoInt32)), -((217 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((652 : GoUInt32)), ((652 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((71 : GoUnTypedInt)), ((0 : GoInt32)), -((71 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((658 : GoUInt32)), ((658 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((219 : GoUnTypedInt)), ((0 : GoInt32)), -((219 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((669 : GoUInt32)), ((669 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42261 : GoInt32)), ((0 : GoInt32)), ((42261 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((670 : GoUInt32)), ((670 : GoUInt32)), new T_d(new GoArray<GoInt32>(((42258 : GoInt32)), ((0 : GoInt32)), ((42258 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((837 : GoUInt32)), ((837 : GoUInt32)), new T_d(new GoArray<GoInt32>(((84 : GoInt32)), ((0 : GoInt32)), ((84 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((880 : GoUInt32)), ((883 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((886 : GoUInt32)), ((887 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((891 : GoUInt32)), ((893 : GoUInt32)), new T_d(new GoArray<GoInt32>(((130 : GoInt32)), ((0 : GoInt32)), ((130 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((895 : GoUInt32)), ((895 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((116 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((902 : GoUInt32)), ((902 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((38 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((904 : GoUInt32)), ((906 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((37 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((908 : GoUInt32)), ((908 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((64 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((910 : GoUInt32)), ((911 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((63 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((913 : GoUInt32)), ((929 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((931 : GoUInt32)), ((939 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((940 : GoUInt32)), ((940 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((38 : GoUnTypedInt)), ((0 : GoInt32)), -((38 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((941 : GoUInt32)), ((943 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((37 : GoUnTypedInt)), ((0 : GoInt32)), -((37 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((945 : GoUInt32)), ((961 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((962 : GoUInt32)), ((962 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((31 : GoUnTypedInt)), ((0 : GoInt32)), -((31 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((963 : GoUInt32)), ((971 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((972 : GoUInt32)), ((972 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((64 : GoUnTypedInt)), ((0 : GoInt32)), -((64 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((973 : GoUInt32)), ((974 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((63 : GoUnTypedInt)), ((0 : GoInt32)), -((63 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((975 : GoUInt32)), ((975 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((8 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((976 : GoUInt32)), ((976 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((62 : GoUnTypedInt)), ((0 : GoInt32)), -((62 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((977 : GoUInt32)), ((977 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((57 : GoUnTypedInt)), ((0 : GoInt32)), -((57 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((981 : GoUInt32)), ((981 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((47 : GoUnTypedInt)), ((0 : GoInt32)), -((47 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((982 : GoUInt32)), ((982 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((54 : GoUnTypedInt)), ((0 : GoInt32)), -((54 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((983 : GoUInt32)), ((983 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((8 : GoUnTypedInt)), ((0 : GoInt32)), -((8 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((984 : GoUInt32)), ((1007 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1008 : GoUInt32)), ((1008 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((86 : GoUnTypedInt)), ((0 : GoInt32)), -((86 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1009 : GoUInt32)), ((1009 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((80 : GoUnTypedInt)), ((0 : GoInt32)), -((80 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1010 : GoUInt32)), ((1010 : GoUInt32)), new T_d(new GoArray<GoInt32>(((7 : GoInt32)), ((0 : GoInt32)), ((7 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1011 : GoUInt32)), ((1011 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((116 : GoUnTypedInt)), ((0 : GoInt32)), -((116 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1012 : GoUInt32)), ((1012 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((60 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1013 : GoUInt32)), ((1013 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((96 : GoUnTypedInt)), ((0 : GoInt32)), -((96 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1015 : GoUInt32)), ((1016 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1017 : GoUInt32)), ((1017 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((7 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1018 : GoUInt32)), ((1019 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1021 : GoUInt32)), ((1023 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((130 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1024 : GoUInt32)), ((1039 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((80 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1040 : GoUInt32)), ((1071 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1072 : GoUInt32)), ((1103 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1104 : GoUInt32)), ((1119 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((80 : GoUnTypedInt)), ((0 : GoInt32)), -((80 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1120 : GoUInt32)), ((1153 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1162 : GoUInt32)), ((1215 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1216 : GoUInt32)), ((1216 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((15 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1217 : GoUInt32)), ((1230 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1231 : GoUInt32)), ((1231 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((15 : GoUnTypedInt)), ((0 : GoInt32)), -((15 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((1232 : GoUInt32)), ((1327 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((1329 : GoUInt32)), ((1366 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((48 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((1377 : GoUInt32)), ((1414 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((48 : GoUnTypedInt)), ((0 : GoInt32)), -((48 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((4256 : GoUInt32)), ((4293 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((7264 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((4295 : GoUInt32)), ((4295 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((7264 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((4301 : GoUInt32)), ((4301 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((7264 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((4304 : GoUInt32)), ((4346 : GoUInt32)), new T_d(new GoArray<GoInt32>(((3008 : GoInt32)), ((0 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((4349 : GoUInt32)), ((4351 : GoUInt32)), new T_d(new GoArray<GoInt32>(((3008 : GoInt32)), ((0 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((5024 : GoUInt32)), ((5103 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((38864 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((5104 : GoUInt32)), ((5109 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((8 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((5112 : GoUInt32)), ((5117 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((8 : GoUnTypedInt)), ((0 : GoInt32)), -((8 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7296 : GoUInt32)), ((7296 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6254 : GoUnTypedInt)), ((0 : GoInt32)), -((6254 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7297 : GoUInt32)), ((7297 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6253 : GoUnTypedInt)), ((0 : GoInt32)), -((6253 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7298 : GoUInt32)), ((7298 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6244 : GoUnTypedInt)), ((0 : GoInt32)), -((6244 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7299 : GoUInt32)), ((7300 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6242 : GoUnTypedInt)), ((0 : GoInt32)), -((6242 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7301 : GoUInt32)), ((7301 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6243 : GoUnTypedInt)), ((0 : GoInt32)), -((6243 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7302 : GoUInt32)), ((7302 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6236 : GoUnTypedInt)), ((0 : GoInt32)), -((6236 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7303 : GoUInt32)), ((7303 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((6181 : GoUnTypedInt)), ((0 : GoInt32)), -((6181 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7304 : GoUInt32)), ((7304 : GoUInt32)), new T_d(new GoArray<GoInt32>(((35266 : GoInt32)), ((0 : GoInt32)), ((35266 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7312 : GoUInt32)), ((7354 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((3008 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7357 : GoUInt32)), ((7359 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((3008 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7545 : GoUInt32)), ((7545 : GoUInt32)), new T_d(new GoArray<GoInt32>(((35332 : GoInt32)), ((0 : GoInt32)), ((35332 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7549 : GoUInt32)), ((7549 : GoUInt32)), new T_d(new GoArray<GoInt32>(((3814 : GoInt32)), ((0 : GoInt32)), ((3814 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7566 : GoUInt32)), ((7566 : GoUInt32)), new T_d(new GoArray<GoInt32>(((35384 : GoInt32)), ((0 : GoInt32)), ((35384 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7680 : GoUInt32)), ((7829 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((7835 : GoUInt32)), ((7835 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((59 : GoUnTypedInt)), ((0 : GoInt32)), -((59 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((7838 : GoUInt32)), ((7838 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((7615 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7840 : GoUInt32)), ((7935 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((7936 : GoUInt32)), ((7943 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7944 : GoUInt32)), ((7951 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7952 : GoUInt32)), ((7957 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7960 : GoUInt32)), ((7965 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7968 : GoUInt32)), ((7975 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7976 : GoUInt32)), ((7983 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7984 : GoUInt32)), ((7991 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((7992 : GoUInt32)), ((7999 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8000 : GoUInt32)), ((8005 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8008 : GoUInt32)), ((8013 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8017 : GoUInt32)), ((8017 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8019 : GoUInt32)), ((8019 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8021 : GoUInt32)), ((8021 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8023 : GoUInt32)), ((8023 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8025 : GoUInt32)), ((8025 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8027 : GoUInt32)), ((8027 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8029 : GoUInt32)), ((8029 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8031 : GoUInt32)), ((8031 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8032 : GoUInt32)), ((8039 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8040 : GoUInt32)), ((8047 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8048 : GoUInt32)), ((8049 : GoUInt32)), new T_d(new GoArray<GoInt32>(((74 : GoInt32)), ((0 : GoInt32)), ((74 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8050 : GoUInt32)), ((8053 : GoUInt32)), new T_d(new GoArray<GoInt32>(((86 : GoInt32)), ((0 : GoInt32)), ((86 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8054 : GoUInt32)), ((8055 : GoUInt32)), new T_d(new GoArray<GoInt32>(((100 : GoInt32)), ((0 : GoInt32)), ((100 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8056 : GoUInt32)), ((8057 : GoUInt32)), new T_d(new GoArray<GoInt32>(((128 : GoInt32)), ((0 : GoInt32)), ((128 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8058 : GoUInt32)), ((8059 : GoUInt32)), new T_d(new GoArray<GoInt32>(((112 : GoInt32)), ((0 : GoInt32)), ((112 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8060 : GoUInt32)), ((8061 : GoUInt32)), new T_d(new GoArray<GoInt32>(((126 : GoInt32)), ((0 : GoInt32)), ((126 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8064 : GoUInt32)), ((8071 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8072 : GoUInt32)), ((8079 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8080 : GoUInt32)), ((8087 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8088 : GoUInt32)), ((8095 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8096 : GoUInt32)), ((8103 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8104 : GoUInt32)), ((8111 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8112 : GoUInt32)), ((8113 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8115 : GoUInt32)), ((8115 : GoUInt32)), new T_d(new GoArray<GoInt32>(((9 : GoInt32)), ((0 : GoInt32)), ((9 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8120 : GoUInt32)), ((8121 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8122 : GoUInt32)), ((8123 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((74 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8124 : GoUInt32)), ((8124 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((9 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8126 : GoUInt32)), ((8126 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((7205 : GoUnTypedInt)), ((0 : GoInt32)), -((7205 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((8131 : GoUInt32)), ((8131 : GoUInt32)), new T_d(new GoArray<GoInt32>(((9 : GoInt32)), ((0 : GoInt32)), ((9 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8136 : GoUInt32)), ((8139 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((86 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8140 : GoUInt32)), ((8140 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((9 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8144 : GoUInt32)), ((8145 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8152 : GoUInt32)), ((8153 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8154 : GoUInt32)), ((8155 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((100 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8160 : GoUInt32)), ((8161 : GoUInt32)), new T_d(new GoArray<GoInt32>(((8 : GoInt32)), ((0 : GoInt32)), ((8 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8165 : GoUInt32)), ((8165 : GoUInt32)), new T_d(new GoArray<GoInt32>(((7 : GoInt32)), ((0 : GoInt32)), ((7 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8168 : GoUInt32)), ((8169 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8170 : GoUInt32)), ((8171 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((112 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8172 : GoUInt32)), ((8172 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((7 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8179 : GoUInt32)), ((8179 : GoUInt32)), new T_d(new GoArray<GoInt32>(((9 : GoInt32)), ((0 : GoInt32)), ((9 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8184 : GoUInt32)), ((8185 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((128 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8186 : GoUInt32)), ((8187 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((126 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8188 : GoUInt32)), ((8188 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((9 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8486 : GoUInt32)), ((8486 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((7517 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8490 : GoUInt32)), ((8490 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8383 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8491 : GoUInt32)), ((8491 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((8262 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8498 : GoUInt32)), ((8498 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((28 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8526 : GoUInt32)), ((8526 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((28 : GoUnTypedInt)), ((0 : GoInt32)), -((28 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((8544 : GoUInt32)), ((8559 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((16 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((8560 : GoUInt32)), ((8575 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((16 : GoUnTypedInt)), ((0 : GoInt32)), -((16 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((8579 : GoUInt32)), ((8580 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((9398 : GoUInt32)), ((9423 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((26 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((9424 : GoUInt32)), ((9449 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((26 : GoUnTypedInt)), ((0 : GoInt32)), -((26 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((11264 : GoUInt32)), ((11310 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((48 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11312 : GoUInt32)), ((11358 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((48 : GoUnTypedInt)), ((0 : GoInt32)), -((48 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((11360 : GoUInt32)), ((11361 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11362 : GoUInt32)), ((11362 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10743 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11363 : GoUInt32)), ((11363 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((3814 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11364 : GoUInt32)), ((11364 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10727 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11365 : GoUInt32)), ((11365 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((10795 : GoUnTypedInt)), ((0 : GoInt32)), -((10795 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((11366 : GoUInt32)), ((11366 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((10792 : GoUnTypedInt)), ((0 : GoInt32)), -((10792 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((11367 : GoUInt32)), ((11372 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11373 : GoUInt32)), ((11373 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10780 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11374 : GoUInt32)), ((11374 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10749 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11375 : GoUInt32)), ((11375 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10783 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11376 : GoUInt32)), ((11376 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10782 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11378 : GoUInt32)), ((11379 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11381 : GoUInt32)), ((11382 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11390 : GoUInt32)), ((11391 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((10815 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((11392 : GoUInt32)), ((11491 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11499 : GoUInt32)), ((11502 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11506 : GoUInt32)), ((11507 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((11520 : GoUInt32)), ((11557 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((7264 : GoUnTypedInt)), ((0 : GoInt32)), -((7264 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((11559 : GoUInt32)), ((11559 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((7264 : GoUnTypedInt)), ((0 : GoInt32)), -((7264 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((11565 : GoUInt32)), ((11565 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((7264 : GoUnTypedInt)), ((0 : GoInt32)), -((7264 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((42560 : GoUInt32)), ((42605 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42624 : GoUInt32)), ((42651 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42786 : GoUInt32)), ((42799 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42802 : GoUInt32)), ((42863 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42873 : GoUInt32)), ((42876 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42877 : GoUInt32)), ((42877 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((35332 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42878 : GoUInt32)), ((42887 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42891 : GoUInt32)), ((42892 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42893 : GoUInt32)), ((42893 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42280 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42896 : GoUInt32)), ((42899 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42900 : GoUInt32)), ((42900 : GoUInt32)), new T_d(new GoArray<GoInt32>(((48 : GoInt32)), ((0 : GoInt32)), ((48 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42902 : GoUInt32)), ((42921 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42922 : GoUInt32)), ((42922 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42308 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42923 : GoUInt32)), ((42923 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42319 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42924 : GoUInt32)), ((42924 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42315 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42925 : GoUInt32)), ((42925 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42305 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42926 : GoUInt32)), ((42926 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42308 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42928 : GoUInt32)), ((42928 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42258 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42929 : GoUInt32)), ((42929 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42282 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42930 : GoUInt32)), ((42930 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42261 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42931 : GoUInt32)), ((42931 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((928 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42932 : GoUInt32)), ((42943 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42946 : GoUInt32)), ((42947 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42948 : GoUInt32)), ((42948 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((48 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42949 : GoUInt32)), ((42949 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((42307 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42950 : GoUInt32)), ((42950 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), -((35384 : GoUnTypedInt)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((42951 : GoUInt32)), ((42954 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((42997 : GoUInt32)), ((42998 : GoUInt32)), new T_d(new GoArray<GoInt32>(upperLower, upperLower, upperLower)).__copy__()).__copy__(),
new CaseRange(((43859 : GoUInt32)), ((43859 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((928 : GoUnTypedInt)), ((0 : GoInt32)), -((928 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((43888 : GoUInt32)), ((43967 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((38864 : GoUnTypedInt)), ((0 : GoInt32)), -((38864 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((65313 : GoUInt32)), ((65338 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((65345 : GoUInt32)), ((65370 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((66560 : GoUInt32)), ((66599 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((40 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((66600 : GoUInt32)), ((66639 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((40 : GoUnTypedInt)), ((0 : GoInt32)), -((40 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((66736 : GoUInt32)), ((66771 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((40 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((66776 : GoUInt32)), ((66811 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((40 : GoUnTypedInt)), ((0 : GoInt32)), -((40 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((68736 : GoUInt32)), ((68786 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((64 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((68800 : GoUInt32)), ((68850 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((64 : GoUnTypedInt)), ((0 : GoInt32)), -((64 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((71840 : GoUInt32)), ((71871 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((71872 : GoUInt32)), ((71903 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((93760 : GoUInt32)), ((93791 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((32 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((93792 : GoUInt32)), ((93823 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((32 : GoUnTypedInt)), ((0 : GoInt32)), -((32 : GoUnTypedInt)))).__copy__()).__copy__(),
new CaseRange(((125184 : GoUInt32)), ((125217 : GoUInt32)), new T_d(new GoArray<GoInt32>(((0 : GoInt32)), ((34 : GoInt32)), ((0 : GoInt32)))).__copy__()).__copy__(),
new CaseRange(((125218 : GoUInt32)), ((125251 : GoUInt32)), new T_d(new GoArray<GoInt32>(-((34 : GoUnTypedInt)), ((0 : GoInt32)), -((34 : GoUnTypedInt)))).__copy__()).__copy__());
var caseRanges : Slice<CaseRange> = __CaseRanges;
var _caseOrbit : Slice<T_foldPair> = new Slice<T_foldPair>(
new T_foldPair(((75 : GoUInt16)), ((107 : GoUInt16))).__copy__(),
new T_foldPair(((83 : GoUInt16)), ((115 : GoUInt16))).__copy__(),
new T_foldPair(((107 : GoUInt16)), ((8490 : GoUInt16))).__copy__(),
new T_foldPair(((115 : GoUInt16)), ((383 : GoUInt16))).__copy__(),
new T_foldPair(((181 : GoUInt16)), ((924 : GoUInt16))).__copy__(),
new T_foldPair(((197 : GoUInt16)), ((229 : GoUInt16))).__copy__(),
new T_foldPair(((223 : GoUInt16)), ((7838 : GoUInt16))).__copy__(),
new T_foldPair(((229 : GoUInt16)), ((8491 : GoUInt16))).__copy__(),
new T_foldPair(((304 : GoUInt16)), ((304 : GoUInt16))).__copy__(),
new T_foldPair(((305 : GoUInt16)), ((305 : GoUInt16))).__copy__(),
new T_foldPair(((383 : GoUInt16)), ((83 : GoUInt16))).__copy__(),
new T_foldPair(((452 : GoUInt16)), ((453 : GoUInt16))).__copy__(),
new T_foldPair(((453 : GoUInt16)), ((454 : GoUInt16))).__copy__(),
new T_foldPair(((454 : GoUInt16)), ((452 : GoUInt16))).__copy__(),
new T_foldPair(((455 : GoUInt16)), ((456 : GoUInt16))).__copy__(),
new T_foldPair(((456 : GoUInt16)), ((457 : GoUInt16))).__copy__(),
new T_foldPair(((457 : GoUInt16)), ((455 : GoUInt16))).__copy__(),
new T_foldPair(((458 : GoUInt16)), ((459 : GoUInt16))).__copy__(),
new T_foldPair(((459 : GoUInt16)), ((460 : GoUInt16))).__copy__(),
new T_foldPair(((460 : GoUInt16)), ((458 : GoUInt16))).__copy__(),
new T_foldPair(((497 : GoUInt16)), ((498 : GoUInt16))).__copy__(),
new T_foldPair(((498 : GoUInt16)), ((499 : GoUInt16))).__copy__(),
new T_foldPair(((499 : GoUInt16)), ((497 : GoUInt16))).__copy__(),
new T_foldPair(((837 : GoUInt16)), ((921 : GoUInt16))).__copy__(),
new T_foldPair(((914 : GoUInt16)), ((946 : GoUInt16))).__copy__(),
new T_foldPair(((917 : GoUInt16)), ((949 : GoUInt16))).__copy__(),
new T_foldPair(((920 : GoUInt16)), ((952 : GoUInt16))).__copy__(),
new T_foldPair(((921 : GoUInt16)), ((953 : GoUInt16))).__copy__(),
new T_foldPair(((922 : GoUInt16)), ((954 : GoUInt16))).__copy__(),
new T_foldPair(((924 : GoUInt16)), ((956 : GoUInt16))).__copy__(),
new T_foldPair(((928 : GoUInt16)), ((960 : GoUInt16))).__copy__(),
new T_foldPair(((929 : GoUInt16)), ((961 : GoUInt16))).__copy__(),
new T_foldPair(((931 : GoUInt16)), ((962 : GoUInt16))).__copy__(),
new T_foldPair(((934 : GoUInt16)), ((966 : GoUInt16))).__copy__(),
new T_foldPair(((937 : GoUInt16)), ((969 : GoUInt16))).__copy__(),
new T_foldPair(((946 : GoUInt16)), ((976 : GoUInt16))).__copy__(),
new T_foldPair(((949 : GoUInt16)), ((1013 : GoUInt16))).__copy__(),
new T_foldPair(((952 : GoUInt16)), ((977 : GoUInt16))).__copy__(),
new T_foldPair(((953 : GoUInt16)), ((8126 : GoUInt16))).__copy__(),
new T_foldPair(((954 : GoUInt16)), ((1008 : GoUInt16))).__copy__(),
new T_foldPair(((956 : GoUInt16)), ((181 : GoUInt16))).__copy__(),
new T_foldPair(((960 : GoUInt16)), ((982 : GoUInt16))).__copy__(),
new T_foldPair(((961 : GoUInt16)), ((1009 : GoUInt16))).__copy__(),
new T_foldPair(((962 : GoUInt16)), ((963 : GoUInt16))).__copy__(),
new T_foldPair(((963 : GoUInt16)), ((931 : GoUInt16))).__copy__(),
new T_foldPair(((966 : GoUInt16)), ((981 : GoUInt16))).__copy__(),
new T_foldPair(((969 : GoUInt16)), ((8486 : GoUInt16))).__copy__(),
new T_foldPair(((976 : GoUInt16)), ((914 : GoUInt16))).__copy__(),
new T_foldPair(((977 : GoUInt16)), ((1012 : GoUInt16))).__copy__(),
new T_foldPair(((981 : GoUInt16)), ((934 : GoUInt16))).__copy__(),
new T_foldPair(((982 : GoUInt16)), ((928 : GoUInt16))).__copy__(),
new T_foldPair(((1008 : GoUInt16)), ((922 : GoUInt16))).__copy__(),
new T_foldPair(((1009 : GoUInt16)), ((929 : GoUInt16))).__copy__(),
new T_foldPair(((1012 : GoUInt16)), ((920 : GoUInt16))).__copy__(),
new T_foldPair(((1013 : GoUInt16)), ((917 : GoUInt16))).__copy__(),
new T_foldPair(((1042 : GoUInt16)), ((1074 : GoUInt16))).__copy__(),
new T_foldPair(((1044 : GoUInt16)), ((1076 : GoUInt16))).__copy__(),
new T_foldPair(((1054 : GoUInt16)), ((1086 : GoUInt16))).__copy__(),
new T_foldPair(((1057 : GoUInt16)), ((1089 : GoUInt16))).__copy__(),
new T_foldPair(((1058 : GoUInt16)), ((1090 : GoUInt16))).__copy__(),
new T_foldPair(((1066 : GoUInt16)), ((1098 : GoUInt16))).__copy__(),
new T_foldPair(((1074 : GoUInt16)), ((7296 : GoUInt16))).__copy__(),
new T_foldPair(((1076 : GoUInt16)), ((7297 : GoUInt16))).__copy__(),
new T_foldPair(((1086 : GoUInt16)), ((7298 : GoUInt16))).__copy__(),
new T_foldPair(((1089 : GoUInt16)), ((7299 : GoUInt16))).__copy__(),
new T_foldPair(((1090 : GoUInt16)), ((7300 : GoUInt16))).__copy__(),
new T_foldPair(((1098 : GoUInt16)), ((7302 : GoUInt16))).__copy__(),
new T_foldPair(((1122 : GoUInt16)), ((1123 : GoUInt16))).__copy__(),
new T_foldPair(((1123 : GoUInt16)), ((7303 : GoUInt16))).__copy__(),
new T_foldPair(((7296 : GoUInt16)), ((1042 : GoUInt16))).__copy__(),
new T_foldPair(((7297 : GoUInt16)), ((1044 : GoUInt16))).__copy__(),
new T_foldPair(((7298 : GoUInt16)), ((1054 : GoUInt16))).__copy__(),
new T_foldPair(((7299 : GoUInt16)), ((1057 : GoUInt16))).__copy__(),
new T_foldPair(((7300 : GoUInt16)), ((7301 : GoUInt16))).__copy__(),
new T_foldPair(((7301 : GoUInt16)), ((1058 : GoUInt16))).__copy__(),
new T_foldPair(((7302 : GoUInt16)), ((1066 : GoUInt16))).__copy__(),
new T_foldPair(((7303 : GoUInt16)), ((1122 : GoUInt16))).__copy__(),
new T_foldPair(((7304 : GoUInt16)), ((42570 : GoUInt16))).__copy__(),
new T_foldPair(((7776 : GoUInt16)), ((7777 : GoUInt16))).__copy__(),
new T_foldPair(((7777 : GoUInt16)), ((7835 : GoUInt16))).__copy__(),
new T_foldPair(((7835 : GoUInt16)), ((7776 : GoUInt16))).__copy__(),
new T_foldPair(((7838 : GoUInt16)), ((223 : GoUInt16))).__copy__(),
new T_foldPair(((8126 : GoUInt16)), ((837 : GoUInt16))).__copy__(),
new T_foldPair(((8486 : GoUInt16)), ((937 : GoUInt16))).__copy__(),
new T_foldPair(((8490 : GoUInt16)), ((75 : GoUInt16))).__copy__(),
new T_foldPair(((8491 : GoUInt16)), ((197 : GoUInt16))).__copy__(),
new T_foldPair(((42570 : GoUInt16)), ((42571 : GoUInt16))).__copy__(),
new T_foldPair(((42571 : GoUInt16)), ((7304 : GoUInt16))).__copy__());
var letter : Pointer<RangeTable> = __L;
final lowerCase = (1 : GoUnTypedInt);
final maxLatin1 : GoInt32 = (("\u{00FF}".code : GoRune));
var lower : Pointer<RangeTable> = __Ll;
var _asciiFold : GoArray<GoUInt16> = new GoArray<GoUInt16>(
((0 : GoUInt16)),
((1 : GoUInt16)),
((2 : GoUInt16)),
((3 : GoUInt16)),
((4 : GoUInt16)),
((5 : GoUInt16)),
((6 : GoUInt16)),
((7 : GoUInt16)),
((8 : GoUInt16)),
((9 : GoUInt16)),
((10 : GoUInt16)),
((11 : GoUInt16)),
((12 : GoUInt16)),
((13 : GoUInt16)),
((14 : GoUInt16)),
((15 : GoUInt16)),
((16 : GoUInt16)),
((17 : GoUInt16)),
((18 : GoUInt16)),
((19 : GoUInt16)),
((20 : GoUInt16)),
((21 : GoUInt16)),
((22 : GoUInt16)),
((23 : GoUInt16)),
((24 : GoUInt16)),
((25 : GoUInt16)),
((26 : GoUInt16)),
((27 : GoUInt16)),
((28 : GoUInt16)),
((29 : GoUInt16)),
((30 : GoUInt16)),
((31 : GoUInt16)),
((32 : GoUInt16)),
((33 : GoUInt16)),
((34 : GoUInt16)),
((35 : GoUInt16)),
((36 : GoUInt16)),
((37 : GoUInt16)),
((38 : GoUInt16)),
((39 : GoUInt16)),
((40 : GoUInt16)),
((41 : GoUInt16)),
((42 : GoUInt16)),
((43 : GoUInt16)),
((44 : GoUInt16)),
((45 : GoUInt16)),
((46 : GoUInt16)),
((47 : GoUInt16)),
((48 : GoUInt16)),
((49 : GoUInt16)),
((50 : GoUInt16)),
((51 : GoUInt16)),
((52 : GoUInt16)),
((53 : GoUInt16)),
((54 : GoUInt16)),
((55 : GoUInt16)),
((56 : GoUInt16)),
((57 : GoUInt16)),
((58 : GoUInt16)),
((59 : GoUInt16)),
((60 : GoUInt16)),
((61 : GoUInt16)),
((62 : GoUInt16)),
((63 : GoUInt16)),
((64 : GoUInt16)),
((97 : GoUInt16)),
((98 : GoUInt16)),
((99 : GoUInt16)),
((100 : GoUInt16)),
((101 : GoUInt16)),
((102 : GoUInt16)),
((103 : GoUInt16)),
((104 : GoUInt16)),
((105 : GoUInt16)),
((106 : GoUInt16)),
((107 : GoUInt16)),
((108 : GoUInt16)),
((109 : GoUInt16)),
((110 : GoUInt16)),
((111 : GoUInt16)),
((112 : GoUInt16)),
((113 : GoUInt16)),
((114 : GoUInt16)),
((115 : GoUInt16)),
((116 : GoUInt16)),
((117 : GoUInt16)),
((118 : GoUInt16)),
((119 : GoUInt16)),
((120 : GoUInt16)),
((121 : GoUInt16)),
((122 : GoUInt16)),
((91 : GoUInt16)),
((92 : GoUInt16)),
((93 : GoUInt16)),
((94 : GoUInt16)),
((95 : GoUInt16)),
((96 : GoUInt16)),
((65 : GoUInt16)),
((66 : GoUInt16)),
((67 : GoUInt16)),
((68 : GoUInt16)),
((69 : GoUInt16)),
((70 : GoUInt16)),
((71 : GoUInt16)),
((72 : GoUInt16)),
((73 : GoUInt16)),
((74 : GoUInt16)),
((8490 : GoUInt16)),
((76 : GoUInt16)),
((77 : GoUInt16)),
((78 : GoUInt16)),
((79 : GoUInt16)),
((80 : GoUInt16)),
((81 : GoUInt16)),
((82 : GoUInt16)),
((383 : GoUInt16)),
((84 : GoUInt16)),
((85 : GoUInt16)),
((86 : GoUInt16)),
((87 : GoUInt16)),
((88 : GoUInt16)),
((89 : GoUInt16)),
((90 : GoUInt16)),
((123 : GoUInt16)),
((124 : GoUInt16)),
((125 : GoUInt16)),
((126 : GoUInt16)),
((127 : GoUInt16))).copy();
var foldScript : GoMap<GoString, Pointer<RangeTable>> = new GoMap<GoString, Pointer<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.named("unicode.RangeTable", [], stdgo.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range16", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint16_kind) }]))) }, { name : "r32", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("unicode.Range32", [], stdgo.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "hi", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "stride", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }]))) }, { name : "latinOffset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))), { key : "Common", value : _foldCommon }, { key : "Greek", value : _foldGreek }, { key : "Inherited", value : _foldInherited });
var sterm : Pointer<RangeTable> = __Sentence_Terminal;
/**
    // IsDigit reports whether the rune is a decimal digit.
**/
function isDigit(_r:GoRune):Bool {
        if (_r <= maxLatin1) {
            return (("0".code : GoRune)) <= _r && _r <= (("9".code : GoRune));
        };
        return _isExcludingLatin(digit, _r);
    }
/**
    // IsGraphic reports whether the rune is defined as a Graphic by Unicode.
    // Such characters include letters, marks, numbers, punctuation, symbols, and
    // spaces, from categories L, M, N, P, S, Zs.
**/
function isGraphic(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pg != ((0 : GoUInt8));
        };
        return in_(_r, ...graphicRanges.toArray());
    }
/**
    // IsPrint reports whether the rune is defined as printable by Go. Such
    // characters include letters, marks, numbers, punctuation, symbols, and the
    // ASCII space character, from categories L, M, N, P, S and the ASCII space
    // character. This categorization is the same as IsGraphic except that the
    // only spacing character is ASCII space, U+0020.
**/
function isPrint(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pp != ((0 : GoUInt8));
        };
        return in_(_r, ...printRanges.toArray());
    }
/**
    // IsOneOf reports whether the rune is a member of one of the ranges.
    // The function "In" provides a nicer signature and should be used in preference to IsOneOf.
**/
function isOneOf(_ranges:Slice<Pointer<RangeTable>>, _r:GoRune):Bool {
        for (_inside in _ranges) {
            if (is_(_inside, _r)) {
                return true;
            };
        };
        return false;
    }
/**
    // In reports whether the rune is a member of one of the ranges.
**/
function in_(_r:GoRune, _ranges:haxe.Rest<Pointer<RangeTable>>):Bool {
        var _ranges = new Slice<Pointer<RangeTable>>(..._ranges);
        for (_inside in _ranges) {
            if (is_(_inside, _r)) {
                return true;
            };
        };
        return false;
    }
/**
    // IsControl reports whether the rune is a control character.
    // The C (Other) Unicode category includes more code points
    // such as surrogates; use Is(C, r) to test for them.
**/
function isControl(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pC != ((0 : GoUInt8));
        };
        return false;
    }
/**
    // IsLetter reports whether the rune is a letter (category L).
**/
function isLetter(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & (_pLmask) != ((0 : GoUInt8));
        };
        return _isExcludingLatin(letter, _r);
    }
/**
    // IsMark reports whether the rune is a mark character (category M).
**/
function isMark(_r:GoRune):Bool {
        return _isExcludingLatin(mark, _r);
    }
/**
    // IsNumber reports whether the rune is a number (category N).
**/
function isNumber(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pN != ((0 : GoUInt8));
        };
        return _isExcludingLatin(number, _r);
    }
/**
    // IsPunct reports whether the rune is a Unicode punctuation character
    // (category P).
**/
function isPunct(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pP != ((0 : GoUInt8));
        };
        return is_(punct, _r);
    }
/**
    // IsSpace reports whether the rune is a space character as defined
    // by Unicode's White Space property; in the Latin-1 space
    // this is
    //	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
    // Other definitions of spacing characters are set by category
    // Z and property Pattern_White_Space.
**/
function isSpace(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            if (_r == (("\t".code : GoRune)) || _r == (("\n".code : GoRune)) || _r == (("".code : GoRune)) || _r == (("".code : GoRune)) || _r == (("\r".code : GoRune)) || _r == ((" ".code : GoRune)) || _r == ((133 : GoInt32)) || _r == ((160 : GoInt32))) {
                return true;
            };
            return false;
        };
        return _isExcludingLatin(white_Space, _r);
    }
/**
    // IsSymbol reports whether the rune is a symbolic character.
**/
function isSymbol(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pS != ((0 : GoUInt8));
        };
        return _isExcludingLatin(symbol, _r);
    }
/**
    // is16 reports whether r is in the sorted slice of 16-bit ranges.
**/
function _is16(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
        if (_ranges.length <= _linearMax || _r <= maxLatin1) {
            {
                var _i;
                for (_obj in _ranges.keyValueIterator()) {
                    _i = _obj.key;
                    var _range_:Pointer<Range16> = Go.pointer(_ranges[_i]);
                    if (_r < _range_.value.lo) {
                        return false;
                    };
                    if (_r <= _range_.value.hi) {
                        return _range_.value.stride == ((1 : GoUInt16)) || (_r - _range_.value.lo) % _range_.value.stride == ((0 : GoUInt16));
                    };
                };
            };
            return false;
        };
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _ranges.length;
        while (_lo < _hi) {
            var _m:GoInt = _lo + (_hi - _lo) / ((2 : GoInt));
            var _range_:Pointer<Range16> = Go.pointer(_ranges[_m]);
            if (_range_.value.lo <= _r && _r <= _range_.value.hi) {
                return _range_.value.stride == ((1 : GoUInt16)) || (_r - _range_.value.lo) % _range_.value.stride == ((0 : GoUInt16));
            };
            if (_r < _range_.value.lo) {
                _hi = _m;
            } else {
                _lo = _m + ((1 : GoInt));
            };
        };
        return false;
    }
/**
    // is32 reports whether r is in the sorted slice of 32-bit ranges.
**/
function _is32(_ranges:Slice<Range32>, _r:GoUInt32):Bool {
        if (_ranges.length <= _linearMax) {
            {
                var _i;
                for (_obj in _ranges.keyValueIterator()) {
                    _i = _obj.key;
                    var _range_:Pointer<Range32> = Go.pointer(_ranges[_i]);
                    if (_r < _range_.value.lo) {
                        return false;
                    };
                    if (_r <= _range_.value.hi) {
                        return _range_.value.stride == ((1 : GoUInt32)) || (_r - _range_.value.lo) % _range_.value.stride == ((0 : GoUInt32));
                    };
                };
            };
            return false;
        };
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _ranges.length;
        while (_lo < _hi) {
            var _m:GoInt = _lo + (_hi - _lo) / ((2 : GoInt));
            var _range_:Range32 = _ranges[_m].__copy__();
            if (_range_.lo <= _r && _r <= _range_.hi) {
                return _range_.stride == ((1 : GoUInt32)) || (_r - _range_.lo) % _range_.stride == ((0 : GoUInt32));
            };
            if (_r < _range_.lo) {
                _hi = _m;
            } else {
                _lo = _m + ((1 : GoInt));
            };
        };
        return false;
    }
/**
    // Is reports whether the rune is in the specified table of ranges.
**/
function is_(_rangeTab:Pointer<RangeTable>, _r:GoRune):Bool {
        var _r16:Slice<Range16> = _rangeTab.value.r16;
        if (_r16.length > ((0 : GoInt)) && ((_r : GoUInt32)) <= ((_r16[_r16.length - ((1 : GoInt))].hi : GoUInt32))) {
            return _is16(_r16, ((_r : GoUInt16)));
        };
        var _r32:Slice<Range32> = _rangeTab.value.r32;
        if (_r32.length > ((0 : GoInt)) && _r >= ((_r32[((0 : GoInt))].lo : GoRune))) {
            return _is32(_r32, ((_r : GoUInt32)));
        };
        return false;
    }
function _isExcludingLatin(_rangeTab:Pointer<RangeTable>, _r:GoRune):Bool {
        var _r16:Slice<Range16> = _rangeTab.value.r16;
        {
            var _off:GoInt = _rangeTab.value.latinOffset;
            if (_r16.length > _off && ((_r : GoUInt32)) <= ((_r16[_r16.length - ((1 : GoInt))].hi : GoUInt32))) {
                return _is16(_r16.__slice__(_off), ((_r : GoUInt16)));
            };
        };
        var _r32:Slice<Range32> = _rangeTab.value.r32;
        if (_r32.length > ((0 : GoInt)) && _r >= ((_r32[((0 : GoInt))].lo : GoRune))) {
            return _is32(_r32, ((_r : GoUInt32)));
        };
        return false;
    }
/**
    // IsUpper reports whether the rune is an upper case letter.
**/
function isUpper(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pLmask == _pLu;
        };
        return _isExcludingLatin(upper, _r);
    }
/**
    // IsLower reports whether the rune is a lower case letter.
**/
function isLower(_r:GoRune):Bool {
        if (((_r : GoUInt32)) <= maxLatin1) {
            return _properties[((_r : GoUInt8))] & _pLmask == _pLl;
        };
        return _isExcludingLatin(lower, _r);
    }
/**
    // IsTitle reports whether the rune is a title case letter.
**/
function isTitle(_r:GoRune):Bool {
        if (_r <= maxLatin1) {
            return false;
        };
        return _isExcludingLatin(title, _r);
    }
/**
    // to maps the rune using the specified case mapping.
    // It additionally reports whether caseRange contained a mapping for r.
**/
function _to(__case:GoInt, _r:GoRune, _caseRange:Slice<CaseRange>):{ var _0 : GoRune; var _1 : Bool; } {
        var _mappedRune:GoRune = ((0 : GoInt32)), _foundMapping:Bool = false;
        if (__case < ((0 : GoInt)) || maxCase <= __case) {
            return { _0 : replacementChar, _1 : false };
        };
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _caseRange.length;
        while (_lo < _hi) {
            var _m:GoInt = _lo + (_hi - _lo) / ((2 : GoInt));
            var _cr:CaseRange = _caseRange[_m].__copy__();
            if (((_cr.lo : GoRune)) <= _r && _r <= ((_cr.hi : GoRune))) {
                var _delta:GoInt32 = _cr.delta.__t__[__case];
                if (_delta > maxRune) {
                    return { _0 : ((_cr.lo : GoRune)) + (((_r - ((_cr.lo : GoRune))) & ((1 : GoInt32))) ^ ((-1 : GoUnTypedInt)) | (((__case & ((1 : GoInt))) : GoRune))), _1 : true };
                };
                return { _0 : _r + _delta, _1 : true };
            };
            if (_r < ((_cr.lo : GoRune))) {
                _hi = _m;
            } else {
                _lo = _m + ((1 : GoInt));
            };
        };
        return { _0 : _r, _1 : false };
    }
/**
    // To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.
**/
function to(__case:GoInt, _r:GoRune):GoRune {
        {
            var __tmp__ = _to(__case, _r, caseRanges);
            _r = __tmp__._0;
        };
        return _r;
    }
/**
    // ToUpper maps the rune to upper case.
**/
function toUpper(_r:GoRune):GoRune {
        if (_r <= maxASCII) {
            if ((("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune))) {
                _r = _r - ((("a".code : GoRune)) - (("A".code : GoRune)));
            };
            return _r;
        };
        return to(upperCase, _r);
    }
/**
    // ToLower maps the rune to lower case.
**/
function toLower(_r:GoRune):GoRune {
        if (_r <= maxASCII) {
            if ((("A".code : GoRune)) <= _r && _r <= (("Z".code : GoRune))) {
                _r = _r + ((("a".code : GoRune)) - (("A".code : GoRune)));
            };
            return _r;
        };
        return to(lowerCase, _r);
    }
/**
    // ToTitle maps the rune to title case.
**/
function toTitle(_r:GoRune):GoRune {
        if (_r <= maxASCII) {
            if ((("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune))) {
                _r = _r - ((("a".code : GoRune)) - (("A".code : GoRune)));
            };
            return _r;
        };
        return to(titleCase, _r);
    }
/**
    // SimpleFold iterates over Unicode code points equivalent under
    // the Unicode-defined simple case folding. Among the code points
    // equivalent to rune (including rune itself), SimpleFold returns the
    // smallest rune > r if one exists, or else the smallest rune >= 0.
    // If r is not a valid Unicode code point, SimpleFold(r) returns r.
    //
    // For example:
    //	SimpleFold('A') = 'a'
    //	SimpleFold('a') = 'A'
    //
    //	SimpleFold('K') = 'k'
    //	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
    //	SimpleFold('\u212A') = 'K'
    //
    //	SimpleFold('1') = '1'
    //
    //	SimpleFold(-2) = -2
    //
**/
function simpleFold(_r:GoRune):GoRune {
        if (_r < ((0 : GoInt32)) || _r > maxRune) {
            return _r;
        };
        if (((_r : GoInt)) < _asciiFold.length) {
            return ((_asciiFold[_r] : GoRune));
        };
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _caseOrbit.length;
        while (_lo < _hi) {
            var _m:GoInt = _lo + (_hi - _lo) / ((2 : GoInt));
            if (((_caseOrbit[_m].from : GoRune)) < _r) {
                _lo = _m + ((1 : GoInt));
            } else {
                _hi = _m;
            };
        };
        if (_lo < _caseOrbit.length && ((_caseOrbit[_lo].from : GoRune)) == _r) {
            return ((_caseOrbit[_lo].to : GoRune));
        };
        {
            var _l:GoInt32 = toLower(_r);
            if (_l != _r) {
                return _l;
            };
        };
        return toUpper(_r);
    }
class SpecialCase_extension_fields {
    public function toUpper(__tmp__, _r:GoRune):GoRune return __tmp__.toUpper(_r);
    public function toTitle(__tmp__, _r:GoRune):GoRune return __tmp__.toTitle(_r);
    public function toLower(__tmp__, _r:GoRune):GoRune return __tmp__.toLower(_r);
}
