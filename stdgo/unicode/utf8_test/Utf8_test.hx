package stdgo.unicode.utf8_test;

import stdgo.unicode.utf8.Utf8;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _utf8map:Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map> = (new Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map>(0, 0,
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((0 : GoInt32), (Go.str(0) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((1 : GoInt32), (Go.str(1) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((126 : GoInt32), (Go.str(126) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((127 : GoInt32), (Go.str(127) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((128 : GoInt32), (Go.str(194, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((129 : GoInt32), (Go.str(194, 129) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((191 : GoInt32), (Go.str(194, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((192 : GoInt32), (Go.str(195, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((193 : GoInt32), (Go.str(195, 129) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((200 : GoInt32), (Go.str(195, 136) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((208 : GoInt32), (Go.str(195, 144) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((224 : GoInt32), (Go.str(195, 160) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((240 : GoInt32), (Go.str(195, 176) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((248 : GoInt32), (Go.str(195, 184) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((255 : GoInt32), (Go.str(195, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((256 : GoInt32), (Go.str(196, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((2047 : GoInt32), (Go.str(223, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((1024 : GoInt32), (Go.str(208, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((2048 : GoInt32), (Go.str(224, 160, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((2049 : GoInt32), (Go.str(224, 160, 129) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((4096 : GoInt32), (Go.str(225, 128, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((53248 : GoInt32), (Go.str(237, 128, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((55295 : GoInt32), (Go.str(237, 159, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((57344 : GoInt32), (Go.str(238, 128, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((65534 : GoInt32), (Go.str(239, 191, 190) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((65535 : GoInt32), (Go.str(239, 191, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((65536 : GoInt32), (Go.str(240, 144, 128, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((65537 : GoInt32), (Go.str(240, 144, 128, 129) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((262144 : GoInt32), (Go.str(241, 128, 128, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((1114110 : GoInt32), (Go.str(244, 143, 191, 190) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((1114111 : GoInt32), (Go.str(244, 143, 191, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((65533 : GoInt32),
		(Go.str(239, 191, 189) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map)) : Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map>);

private var _surrogateMap:Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map> = (new Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map>(0, 0,
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((55296 : GoInt32), (Go.str(237, 160, 128) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map),
	(new stdgo.unicode.utf8_test.Utf8_test.Utf8Map((57343 : GoInt32),
		(Go.str(237, 191, 191) : GoString)) : stdgo.unicode.utf8_test.Utf8_test.Utf8Map)) : Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map>);

private var _testStrings:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str() : GoString), (Go.str("abcd") : GoString), (Go.str("☺☻☹") : GoString),
	(Go.str("日a本b語ç日ð本Ê語þ日¥本¼語i日©") : GoString), (Go.str("日a本b語ç日ð本Ê語þ日¥本¼語i日©日a本b語ç日ð本Ê語þ日¥本¼語i日©日a本b語ç日ð本Ê語þ日¥本¼語i日©") : GoString),
	(Go.str(128, 128, 128, 128) : GoString)) : Slice<GoString>);

private var _invalidSequenceTests:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str(237, 160, 128, 128) : GoString),
	(Go.str(237, 191, 191, 128) : GoString), (Go.str(145, 128, 128, 128) : GoString), (Go.str(194, 127, 128, 128) : GoString),
	(Go.str(194, 192, 128, 128) : GoString), (Go.str(223, 127, 128, 128) : GoString), (Go.str(223, 192, 128, 128) : GoString),
	(Go.str(224, 159, 191, 128) : GoString), (Go.str(224, 160, 127, 128) : GoString), (Go.str(224, 191, 192, 128) : GoString),
	(Go.str(224, 192, 128, 128) : GoString), (Go.str(225, 127, 191, 128) : GoString), (Go.str(225, 128, 127, 128) : GoString),
	(Go.str(225, 191, 192, 128) : GoString), (Go.str(225, 192, 128, 128) : GoString), (Go.str(237, 127, 191, 128) : GoString),
	(Go.str(237, 128, 127, 128) : GoString), (Go.str(237, 159, 192, 128) : GoString), (Go.str(237, 160, 128, 128) : GoString),
	(Go.str(240, 143, 191, 191) : GoString), (Go.str(240, 144, 127, 191) : GoString), (Go.str(240, 144, 128, 127) : GoString),
	(Go.str(240, 191, 191, 192) : GoString), (Go.str(240, 191, 192, 128) : GoString), (Go.str(240, 192, 128, 128) : GoString),
	(Go.str(241, 127, 191, 191) : GoString), (Go.str(241, 128, 127, 191) : GoString), (Go.str(241, 128, 128, 127) : GoString),
	(Go.str(241, 191, 191, 192) : GoString), (Go.str(241, 191, 192, 128) : GoString), (Go.str(241, 192, 128, 128) : GoString),
	(Go.str(244, 127, 191, 191) : GoString), (Go.str(244, 128, 127, 191) : GoString), (Go.str(244, 128, 128, 127) : GoString),
	(Go.str(244, 143, 191, 192) : GoString), (Go.str(244, 143, 192, 128) : GoString), (Go.str(244, 144, 128, 128) : GoString)) : Slice<GoString>);

private var _runecounttests:Slice<stdgo.unicode.utf8_test.Utf8_test.RuneCountTest> = (new Slice<stdgo.unicode.utf8_test.Utf8_test.RuneCountTest>(0, 0,
	(new stdgo.unicode.utf8_test.Utf8_test.RuneCountTest((Go.str("abcd") : GoString), (4 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneCountTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneCountTest((Go.str("☺☻☹") : GoString), (3 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneCountTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneCountTest((Go.str("1,2,3,4") : GoString), (7 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneCountTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneCountTest((Go.str(226, 0) : GoString), (2 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneCountTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneCountTest((Go.str(226, 128) : GoString), (2 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneCountTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneCountTest((Go.str("a", 226, 128) : GoString),
		(3 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneCountTest)) : Slice<stdgo.unicode.utf8_test.Utf8_test.RuneCountTest>);

private var _runelentests:Slice<stdgo.unicode.utf8_test.Utf8_test.RuneLenTest> = (new Slice<stdgo.unicode.utf8_test.Utf8_test.RuneLenTest>(0, 0,
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((0 : GoInt32), (1 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest(("e".code : GoInt32), (1 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest(("é".code : GoInt32), (2 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest(("☺".code : GoInt32), (3 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((65533 : GoInt32), (3 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((1114111 : GoInt32), (4 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((55296 : GoInt32), (-1 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((57343 : GoInt32), (-1 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((1114112 : GoInt32), (-1 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest),
	(new stdgo.unicode.utf8_test.Utf8_test.RuneLenTest((-1 : GoInt32),
		(-1 : GoInt)) : stdgo.unicode.utf8_test.Utf8_test.RuneLenTest)) : Slice<stdgo.unicode.utf8_test.Utf8_test.RuneLenTest>);

private var _validTests:Slice<stdgo.unicode.utf8_test.Utf8_test.ValidTest> = (new Slice<stdgo.unicode.utf8_test.Utf8_test.ValidTest>(0, 0,
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str() : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("a") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("abc") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("Ж") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("ЖЖ") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("брэд-ЛГТМ") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("☺☻☹") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("aa", 226) : GoString), false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest(((new Slice<GoUInt8>(0, 0, (66 : GoUInt8), (250 : GoUInt8)) : Slice<GoUInt8>) : GoString),
		false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest(((new Slice<GoUInt8>(0, 0, (66 : GoUInt8), (250 : GoUInt8), (67 : GoUInt8)) : Slice<GoUInt8>) : GoString),
		false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str("a\uFFFDb") : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(244, 143, 191, 191) : GoString), true) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(244, 144, 128, 128) : GoString), false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(247, 191, 191, 191) : GoString), false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(251, 191, 191, 191, 191) : GoString), false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(192, 128) : GoString), false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(237, 160, 128) : GoString), false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidTest((Go.str(237, 191, 191) : GoString),
		false) : stdgo.unicode.utf8_test.Utf8_test.ValidTest)) : Slice<stdgo.unicode.utf8_test.Utf8_test.ValidTest>);

private var _validrunetests:Slice<stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest> = (new Slice<stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest>(0, 0,
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((0 : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest(("e".code : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest(("é".code : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest(("☺".code : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((65533 : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((1114111 : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((55295 : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((55296 : GoInt32), false) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((57343 : GoInt32), false) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((57344 : GoInt32), true) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((1114112 : GoInt32), false) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest),
	(new stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest((-1 : GoInt32),
		false) : stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest)) : Slice<stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest>);

private var _ascii100000:GoString = stdgo.strings.Strings.repeat((Go.str("0123456789") : GoString), (10000 : GoInt));

/**
	// ~100KB, ~97% ASCII
**/
private var _longStringMostlyASCII:GoString = ("" : GoString);

/**
	// ~100KB, non-ASCII
**/
private var _longStringJapanese:GoString = ("" : GoString);

/**
	// boolSink is used to reference the return value of benchmarked
	// functions to avoid dead code elimination.
**/
private var _boolSink:Bool = false;

@:structInit class Utf8Map {
	public var _r:GoInt32 = 0;
	public var _str:GoString = "";

	public function new(?_r:GoInt32, ?_str:GoString) {
		if (_r != null)
			this._r = _r;
		if (_str != null)
			this._str = _str;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Utf8Map(_r, _str);
	}
}

@:structInit class RuneCountTest {
	public var _in:GoString = "";
	public var _out:GoInt = 0;

	public function new(?_in:GoString, ?_out:GoInt) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RuneCountTest(_in, _out);
	}
}

@:structInit class RuneLenTest {
	public var _r:GoInt32 = 0;
	public var _size:GoInt = 0;

	public function new(?_r:GoInt32, ?_size:GoInt) {
		if (_r != null)
			this._r = _r;
		if (_size != null)
			this._size = _size;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new RuneLenTest(_r, _size);
	}
}

@:structInit class ValidTest {
	public var _in:GoString = "";
	public var _out:Bool = false;

	public function new(?_in:GoString, ?_out:Bool) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ValidTest(_in, _out);
	}
}

@:structInit class ValidRuneTest {
	public var _r:GoInt32 = 0;
	public var _ok:Bool = false;

	public function new(?_r:GoInt32, ?_ok:Bool) {
		if (_r != null)
			this._r = _r;
		if (_ok != null)
			this._ok = _ok;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ValidRuneTest(_r, _ok);
	}
}

@:local private typedef T__struct_0 = {
	public var _name:GoString;
	public var _data:Slice<GoUInt8>;
};

function exampleDecodeLastRune():Void {
	var _b = ((Go.str("Hello, 世界") : GoString) : Slice<GoByte>);
	while ((_b.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_b),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf((Go.str("%c %v\n") : GoString), Go.toInterface(_r), Go.toInterface(_size));
		_b = (_b.__slice__(0, (_b.length) - _size) : Slice<GoUInt8>);
	};
}

function exampleDecodeLastRuneInString():Void {
	var _str:GoString = (Go.str("Hello, 世界") : GoString);
	while ((_str.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(_str),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf((Go.str("%c %v\n") : GoString), Go.toInterface(_r), Go.toInterface(_size));
		_str = (_str.__slice__(0, (_str.length) - _size) : GoString);
	};
}

function exampleDecodeRune():Void {
	var _b = ((Go.str("Hello, 世界") : GoString) : Slice<GoByte>);
	while ((_b.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf((Go.str("%c %v\n") : GoString), Go.toInterface(_r), Go.toInterface(_size));
		_b = (_b.__slice__(_size) : Slice<GoUInt8>);
	};
}

function exampleDecodeRuneInString():Void {
	var _str:GoString = (Go.str("Hello, 世界") : GoString);
	while ((_str.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_str),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		stdgo.fmt.Fmt.printf((Go.str("%c %v\n") : GoString), Go.toInterface(_r), Go.toInterface(_size));
		_str = (_str.__slice__(_size) : GoString);
	};
}

function exampleEncodeRune():Void {
	var _r:GoInt32 = ("世".code : GoInt32);
	var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
	var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _r);
	stdgo.fmt.Fmt.println(_buf);
	stdgo.fmt.Fmt.println(_n);
}

function exampleEncodeRune_outOfRange():Void {
	var _runes = (new Slice<GoInt32>(0, 0, (-1 : GoInt32), (1114112 : GoInt32), (65533 : GoInt32)) : Slice<GoInt32>);
	for (_i => _c in _runes) {
		var _buf = new Slice<GoUInt8>((3 : GoInt).toBasic(), 0, ...[for (i in 0...(3 : GoInt).toBasic()) (0 : GoUInt8)]);
		var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _c);
		stdgo.fmt.Fmt.printf((Go.str("%d: %d %[2]s %d\n") : GoString), Go.toInterface(_i), Go.toInterface(_buf), Go.toInterface(_size));
	};
}

function exampleFullRune():Void {
	var _buf = (new Slice<GoUInt8>(0, 0, (228 : GoUInt8), (184 : GoUInt8), (150 : GoUInt8)) : Slice<GoUInt8>);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRune(_buf));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRune((_buf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>)));
}

function exampleFullRuneInString():Void {
	var _str:GoString = (Go.str("世") : GoString);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRuneInString(_str));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRuneInString((_str.__slice__(0, (2 : GoInt)) : GoString)));
}

function exampleRuneCount():Void {
	var _buf = ((Go.str("Hello, 世界") : GoString) : Slice<GoByte>);
	stdgo.fmt.Fmt.println((Go.str("bytes =") : GoString), (_buf.length));
	stdgo.fmt.Fmt.println((Go.str("runes =") : GoString), stdgo.unicode.utf8.Utf8.runeCount(_buf));
}

function exampleRuneCountInString():Void {
	var _str:GoString = (Go.str("Hello, 世界") : GoString);
	stdgo.fmt.Fmt.println((Go.str("bytes =") : GoString), (_str.length));
	stdgo.fmt.Fmt.println((Go.str("runes =") : GoString), stdgo.unicode.utf8.Utf8.runeCountInString(_str));
}

function exampleRuneLen():Void {
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeLen(("a".code : GoInt32)));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeLen(("界".code : GoInt32)));
}

function exampleRuneStart():Void {
	var _buf = ((Go.str("a界") : GoString) : Slice<GoByte>);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart(_buf[(0 : GoInt)]));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart(_buf[(1 : GoInt)]));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart(_buf[(2 : GoInt)]));
}

function exampleValid():Void {
	var _valid = ((Go.str("Hello, 世界") : GoString) : Slice<GoByte>);
	var _invalid = (new Slice<GoUInt8>(0, 0, (255 : GoUInt8), (254 : GoUInt8), (253 : GoUInt8)) : Slice<GoUInt8>);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.valid(_valid));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.valid(_invalid));
}

function exampleValidRune():Void {
	var _valid:GoInt32 = ("a".code : GoInt32);
	var _invalid:GoInt32 = ((268435455 : GoInt32) : GoRune);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validRune(_valid));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validRune(_invalid));
}

function exampleValidString():Void {
	var _valid:GoString = (Go.str("Hello, 世界") : GoString);
	var _invalid:GoString = ((new Slice<GoUInt8>(0, 0, (255 : GoUInt8), (254 : GoUInt8), (253 : GoUInt8)) : Slice<GoUInt8>) : GoString);
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validString(_valid));
	stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validString(_invalid));
}

function exampleAppendRune():Void {
	var _buf1 = stdgo.unicode.utf8.Utf8.appendRune((null : Slice<GoUInt8>), (65536 : GoInt32));
	var _buf2 = stdgo.unicode.utf8.Utf8.appendRune(((Go.str("init") : GoString) : Slice<GoByte>), (65536 : GoInt32));
	stdgo.fmt.Fmt.println((_buf1 : GoString));
	stdgo.fmt.Fmt.println((_buf2 : GoString));
}

/**
	// Validate the constants redefined from unicode.
**/
function testConstants(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		_t.errorf((Go.str("utf8.MaxRune is wrong: %x should be %x") : GoString), Go.toInterface((1114111 : GoInt32)), Go.toInterface((1114111 : GoInt32)));
	};
	if (false) {
		_t.errorf((Go.str("utf8.RuneError is wrong: %x should be %x") : GoString), Go.toInterface((65533 : GoInt32)), Go.toInterface((65533 : GoInt32)));
	};
}

function testFullRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _m in _utf8map) {
		var _b = (_m._str : Slice<GoByte>);
		if (!fullRune(_b)) {
			_t.errorf((Go.str("FullRune(%q) (%U) = false, want true") : GoString), Go.toInterface(_b), Go.toInterface(_m._r));
		};
		var _s:GoString = _m._str;
		if (!fullRuneInString(_s)) {
			_t.errorf((Go.str("FullRuneInString(%q) (%U) = false, want true") : GoString), Go.toInterface(_s), Go.toInterface(_m._r));
		};
		var _b1 = (_b.__slice__((0 : GoInt), (_b.length) - (1 : GoInt)) : Slice<GoUInt8>);
		if (fullRune(_b1)) {
			_t.errorf((Go.str("FullRune(%q) = true, want false") : GoString), Go.toInterface(_b1));
		};
		var _s1:GoString = (_b1 : GoString);
		if (fullRuneInString(_s1)) {
			_t.errorf((Go.str("FullRune(%q) = true, want false") : GoString), Go.toInterface(_s1));
		};
	};
	for (_1 => _s in (new Slice<GoString>(0, 0, (Go.str(192) : GoString), (Go.str(193) : GoString)) : Slice<GoString>)) {
		var _b = (_s : Slice<GoByte>);
		if (!fullRune(_b)) {
			_t.errorf((Go.str("FullRune(%q) = false, want true") : GoString), Go.toInterface(_s));
		};
		if (!fullRuneInString(_s)) {
			_t.errorf((Go.str("FullRuneInString(%q) = false, want true") : GoString), Go.toInterface(_s));
		};
	};
}

function testEncodeRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _m in _utf8map) {
		var _b = (_m._str : Slice<GoByte>);
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...10) (0 : GoUInt8)]);
		var _n:GoInt = encodeRune((_buf.__slice__((0 : GoInt)) : Slice<GoUInt8>), _m._r);
		var _b1 = (_buf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
		if (!stdgo.bytes.Bytes.equal(_b, _b1)) {
			_t.errorf((Go.str("EncodeRune(%#04x) = %q want %q") : GoString), Go.toInterface(_m._r), Go.toInterface(_b1), Go.toInterface(_b));
		};
	};
}

function testAppendRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _m in _utf8map) {
		{
			var _buf = appendRune((null : Slice<GoUInt8>), _m._r);
			if ((_buf : GoString) != _m._str) {
				_t.errorf((Go.str("AppendRune(nil, %#04x) = %s, want %s") : GoString), Go.toInterface(_m._r), Go.toInterface(_buf), Go.toInterface(_m._str));
			};
		};
		{
			var _buf = appendRune(((Go.str("init") : GoString) : Slice<GoByte>), _m._r);
			if ((_buf : GoString) != ((Go.str("init") : GoString) + _m._str)) {
				_t.errorf((Go.str("AppendRune(init, %#04x) = %s, want %s") : GoString), Go.toInterface(_m._r), Go.toInterface(_buf),
					Go.toInterface((Go.str("init") : GoString) + _m._str));
			};
		};
	};
}

function testDecodeRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _m in _utf8map) {
		var _b = (_m._str : Slice<GoByte>);
		var __tmp__ = decodeRune(_b),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		if ((_r != _m._r) || (_size != _b.length)) {
			_t.errorf((Go.str("DecodeRune(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface(_m._r), Go.toInterface((_b.length)));
		};
		var _s:GoString = _m._str;
		{
			var __tmp__ = decodeRuneInString(_s);
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != _m._r) || (_size != _b.length)) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface(_m._r), Go.toInterface((_b.length)));
		};
		{
			var __tmp__ = decodeRune((_b.__slice__((0 : GoInt), _b.capacity) : Slice<GoUInt8>));
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != _m._r) || (_size != _b.length)) {
			_t.errorf((Go.str("DecodeRune(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface(_m._r), Go.toInterface((_b.length)));
		};
		_s = _m._str + (Go.str(0) : GoString);
		{
			var __tmp__ = decodeRuneInString(_s);
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != _m._r) || (_size != _b.length)) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface(_m._r), Go.toInterface((_b.length)));
		};
		var _wantsize:GoInt = (1 : GoInt);
		if (_wantsize >= (_b.length)) {
			_wantsize = (0 : GoInt);
		};
		{
			var __tmp__ = decodeRune((_b.__slice__((0 : GoInt), (_b.length) - (1 : GoInt)) : Slice<GoUInt8>));
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != (65533 : GoInt32)) || (_size != _wantsize)) {
			_t.errorf((Go.str("DecodeRune(%q) = %#04x, %d want %#04x, %d") : GoString),
				Go.toInterface((_b.__slice__((0 : GoInt), (_b.length) - (1 : GoInt)) : Slice<GoUInt8>)), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface((65533 : GoInt32)), Go.toInterface(_wantsize));
		};
		_s = (_m._str.__slice__((0 : GoInt), (_m._str.length) - (1 : GoInt)) : GoString);
		{
			var __tmp__ = decodeRuneInString(_s);
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != (65533 : GoInt32)) || (_size != _wantsize)) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface((65533 : GoInt32)), Go.toInterface(_wantsize));
		};
		if ((_b.length) == (1 : GoInt)) {
			_b[(0 : GoInt)] = (128 : GoUInt8);
		} else {
			_b[(_b.length) - (1 : GoInt)] = (127 : GoUInt8);
		};
		{
			var __tmp__ = decodeRune(_b);
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != (65533 : GoInt32)) || (_size != (1 : GoInt))) {
			_t.errorf((Go.str("DecodeRune(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface((65533 : GoInt32)), Go.toInterface((1 : GoInt)));
		};
		_s = (_b : GoString);
		{
			var __tmp__ = decodeRuneInString(_s);
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != (65533 : GoInt32)) || (_size != (1 : GoInt))) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d") : GoString), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface((65533 : GoInt32)), Go.toInterface((1 : GoInt)));
		};
	};
}

function testDecodeSurrogateRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _m in _surrogateMap) {
		var _b = (_m._str : Slice<GoByte>);
		var __tmp__ = decodeRune(_b),
			_r:GoInt32 = __tmp__._0,
			_size:GoInt = __tmp__._1;
		if ((_r != (65533 : GoInt32)) || (_size != (1 : GoInt))) {
			_t.errorf((Go.str("DecodeRune(%q) = %x, %d want %x, %d") : GoString), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface((65533 : GoInt32)), Go.toInterface((1 : GoInt)));
		};
		var _s:GoString = _m._str;
		{
			var __tmp__ = decodeRuneInString(_s);
			_r = __tmp__._0;
			_size = __tmp__._1;
		};
		if ((_r != (65533 : GoInt32)) || (_size != (1 : GoInt))) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %x, %d want %x, %d") : GoString), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size),
				Go.toInterface((65533 : GoInt32)), Go.toInterface((1 : GoInt)));
		};
	};
}

/**
	// Check that DecodeRune and DecodeLastRune correspond to
	// the equivalent range loop.
**/
function testSequencing(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _ts in _testStrings) {
		for (_1 => _m in _utf8map) {
			for (_2 => _s in (new Slice<GoString>(0, 0, _ts + _m._str, _m._str + _ts, (_ts + _m._str) + _ts) : Slice<GoString>)) {
				_testSequence(_t, _s);
			};
		};
	};
}

function _runtimeRuneCount(_s:GoString):GoInt {
	return ((_s : Slice<GoRune>).length);
}

/**
	// Check that a range loop, len([]rune(string)) optimization and
	// []rune conversions visit the same runes.
	// Not really a test of this package, but the assumption is used here and
	// it's good to verify.
**/
function testRuntimeConversion(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _ts in _testStrings) {
		var _count:GoInt = runeCountInString(_ts);
		{
			var _n:GoInt = _runtimeRuneCount(_ts);
			if (_n != _count) {
				_t.errorf((Go.str("%q: len([]rune()) counted %d runes; got %d from RuneCountInString") : GoString), Go.toInterface(_ts), Go.toInterface(_n),
					Go.toInterface(_count));
				break;
			};
		};
		var _runes = (_ts : Slice<GoRune>);
		{
			var _n:GoInt = (_runes.length);
			if (_n != _count) {
				_t.errorf((Go.str("%q: []rune() has length %d; got %d from RuneCountInString") : GoString), Go.toInterface(_ts), Go.toInterface(_n),
					Go.toInterface(_count));
				break;
			};
		};
		var _i:GoInt = (0 : GoInt);
		for (_1 => _r in _ts) {
			if (_r != _runes[_i]) {
				_t.errorf((Go.str("%q[%d]: expected %c (%U); got %c (%U)") : GoString), Go.toInterface(_ts), Go.toInterface(_i), Go.toInterface(_runes[_i]),
					Go.toInterface(_runes[_i]), Go.toInterface(_r), Go.toInterface(_r));
			};
			_i++;
		};
	};
}

function _runtimeDecodeRune(_s:GoString):GoRune {
	for (_0 => _r in _s) {
		return _r;
	};
	return (-1 : GoInt32);
}

function testDecodeInvalidSequence(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _s in _invalidSequenceTests) {
		var __tmp__ = decodeRune((_s : Slice<GoByte>)),
			_r1:GoInt32 = __tmp__._0,
			_1:GoInt = __tmp__._1;
		{
			var _want:GoInt32 = (65533 : GoInt32);
			if (_r1 != _want) {
				_t.errorf((Go.str("DecodeRune(%#x) = %#04x, want %#04x") : GoString), Go.toInterface(_s), Go.toInterface(_r1), Go.toInterface(_want));
				return;
			};
		};
		var __tmp__ = decodeRuneInString(_s),
			_r2:GoInt32 = __tmp__._0,
			_2:GoInt = __tmp__._1;
		{
			var _want:GoInt32 = (65533 : GoInt32);
			if (_r2 != _want) {
				_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x, want %#04x") : GoString), Go.toInterface(_s), Go.toInterface(_r2), Go.toInterface(_want));
				return;
			};
		};
		if (_r1 != _r2) {
			_t.errorf((Go.str("DecodeRune(%#x) = %#04x mismatch with DecodeRuneInString(%q) = %#04x") : GoString), Go.toInterface(_s), Go.toInterface(_r1),
				Go.toInterface(_s), Go.toInterface(_r2));
			return;
		};
		var _r3:GoInt32 = _runtimeDecodeRune(_s);
		if (_r2 != _r3) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x mismatch with runtime.decoderune(%q) = %#04x") : GoString), Go.toInterface(_s),
				Go.toInterface(_r2), Go.toInterface(_s), Go.toInterface(_r3));
			return;
		};
	};
}

@:structInit private class T_info__testSequence_0 {
	public var _index:GoInt = 0;
	public var _r:GoInt32 = 0;

	public function new(?_index:GoInt, ?_r:GoInt32) {
		if (_index != null)
			this._index = _index;
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_info__testSequence_0(_index, _r);
	}
}

function _testSequence(_t:Ref<stdgo.testing.Testing.T>, _s:GoString):Void {
	{};
	var _index = new Slice<stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0>((_s.length : GoInt).toBasic(), 0, ...[
		for (i in 0...(_s.length : GoInt).toBasic()) ({} : stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0)
	]);
	var _b = (_s : Slice<GoByte>);
	var _si:GoInt = (0 : GoInt);
	var _j:GoInt = (0 : GoInt);
	for (_i => _r in _s) {
		if (_si != _i) {
			_t.errorf((Go.str("Sequence(%q) mismatched index %d, want %d") : GoString), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface(_i));
			return;
		};
		_index[_j] = (new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0(_i, _r) : stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0);
		_j++;
		var __tmp__ = decodeRune((_b.__slice__(_i) : Slice<GoUInt8>)),
			_r1:GoInt32 = __tmp__._0,
			_size1:GoInt = __tmp__._1;
		if (_r != _r1) {
			_t.errorf((Go.str("DecodeRune(%q) = %#04x, want %#04x") : GoString), Go.toInterface((_s.__slice__(_i) : GoString)), Go.toInterface(_r1),
				Go.toInterface(_r));
			return;
		};
		var __tmp__ = decodeRuneInString((_s.__slice__(_i) : GoString)),
			_r2:GoInt32 = __tmp__._0,
			_size2:GoInt = __tmp__._1;
		if (_r != _r2) {
			_t.errorf((Go.str("DecodeRuneInString(%q) = %#04x, want %#04x") : GoString), Go.toInterface((_s.__slice__(_i) : GoString)), Go.toInterface(_r2),
				Go.toInterface(_r));
			return;
		};
		if (_size1 != _size2) {
			_t.errorf((Go.str("DecodeRune/DecodeRuneInString(%q) size mismatch %d/%d") : GoString), Go.toInterface((_s.__slice__(_i) : GoString)),
				Go.toInterface(_size1), Go.toInterface(_size2));
			return;
		};
		_si = _si + (_size1);
	};
	_j--;
	{
		_si = (_s.length);
		while (_si > (0 : GoInt)) {
			var __tmp__ = decodeLastRune((_b.__slice__((0 : GoInt), _si) : Slice<GoUInt8>)),
				_r1:GoInt32 = __tmp__._0,
				_size1:GoInt = __tmp__._1;
			var __tmp__ = decodeLastRuneInString((_s.__slice__((0 : GoInt), _si) : GoString)),
				_r2:GoInt32 = __tmp__._0,
				_size2:GoInt = __tmp__._1;
			if (_size1 != _size2) {
				_t.errorf((Go.str("DecodeLastRune/DecodeLastRuneInString(%q, %d) size mismatch %d/%d") : GoString), Go.toInterface(_s), Go.toInterface(_si),
					Go.toInterface(_size1), Go.toInterface(_size2));
				return;
			};
			if (_r1 != _index[_j]._r) {
				_t.errorf((Go.str("DecodeLastRune(%q, %d) = %#04x, want %#04x") : GoString), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface(_r1),
					Go.toInterface(_index[_j]._r));
				return;
			};
			if (_r2 != _index[_j]._r) {
				_t.errorf((Go.str("DecodeLastRuneInString(%q, %d) = %#04x, want %#04x") : GoString), Go.toInterface(_s), Go.toInterface(_si),
					Go.toInterface(_r2), Go.toInterface(_index[_j]._r));
				return;
			};
			_si = _si - (_size1);
			if (_si != _index[_j]._index) {
				_t.errorf((Go.str("DecodeLastRune(%q) index mismatch at %d, want %d") : GoString), Go.toInterface(_s), Go.toInterface(_si),
					Go.toInterface(_index[_j]._index));
				return;
			};
			_j--;
		};
	};
	if (_si != (0 : GoInt)) {
		_t.errorf((Go.str("DecodeLastRune(%q) finished at %d, not 0") : GoString), Go.toInterface(_s), Go.toInterface(_si));
	};
}

/**
	// Check that negative runes encode as U+FFFD.
**/
function testNegativeRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _errorbuf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	_errorbuf = (_errorbuf.__slice__((0 : GoInt), encodeRune(_errorbuf, (65533 : GoInt32))) : Slice<GoUInt8>);
	var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	_buf = (_buf.__slice__((0 : GoInt), encodeRune(_buf, (-1 : GoInt32))) : Slice<GoUInt8>);
	if (!stdgo.bytes.Bytes.equal(_buf, _errorbuf)) {
		_t.errorf((Go.str("incorrect encoding [% x] for -1; expected [% x]") : GoString), Go.toInterface(_buf), Go.toInterface(_errorbuf));
	};
}

function testRuneCount(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _runecounttests) {
		{
			var _out:GoInt = runeCountInString(_tt._in);
			if (_out != _tt._out) {
				_t.errorf((Go.str("RuneCountInString(%q) = %d, want %d") : GoString), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
			};
		};
		{
			var _out:GoInt = runeCount((_tt._in : Slice<GoByte>));
			if (_out != _tt._out) {
				_t.errorf((Go.str("RuneCount(%q) = %d, want %d") : GoString), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
			};
		};
	};
}

function testRuneLen(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _runelentests) {
		{
			var _size:GoInt = runeLen(_tt._r);
			if (_size != _tt._size) {
				_t.errorf((Go.str("RuneLen(%#U) = %d, want %d") : GoString), Go.toInterface(_tt._r), Go.toInterface(_size), Go.toInterface(_tt._size));
			};
		};
	};
}

function testValid(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _validTests) {
		if (valid((_tt._in : Slice<GoByte>)) != _tt._out) {
			_t.errorf((Go.str("Valid(%q) = %v; want %v") : GoString), Go.toInterface(_tt._in), Go.toInterface(!_tt._out), Go.toInterface(_tt._out));
		};
		if (validString(_tt._in) != _tt._out) {
			_t.errorf((Go.str("ValidString(%q) = %v; want %v") : GoString), Go.toInterface(_tt._in), Go.toInterface(!_tt._out), Go.toInterface(_tt._out));
		};
	};
}

function testValidRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _validrunetests) {
		{
			var _ok:Bool = validRune(_tt._r);
			if (_ok != _tt._ok) {
				_t.errorf((Go.str("ValidRune(%#U) = %t, want %t") : GoString), Go.toInterface(_tt._r), Go.toInterface(_ok), Go.toInterface(_tt._ok));
			};
		};
	};
}

function benchmarkRuneCountTenASCIIChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s = ((Go.str("0123456789") : GoString) : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			runeCount(_s);
		});
	};
}

function benchmarkRuneCountTenJapaneseChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s = ((Go.str("日本語日本語日本語日") : GoString) : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			runeCount(_s);
		});
	};
}

function benchmarkRuneCountInStringTenASCIIChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			runeCountInString((Go.str("0123456789") : GoString));
		});
	};
}

function benchmarkRuneCountInStringTenJapaneseChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			runeCountInString((Go.str("日本語日本語日本語日") : GoString));
		});
	};
}

function benchmarkValidTenASCIIChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s = ((Go.str("0123456789") : GoString) : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			valid(_s);
		});
	};
}

function benchmarkValid100KASCIIChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s = (_ascii100000 : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			valid(_s);
		});
	};
}

function benchmarkValidTenJapaneseChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s = ((Go.str("日本語日本語日本語日") : GoString) : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			valid(_s);
		});
	};
}

function benchmarkValidLongMostlyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _longMostlyASCII = (_longStringMostlyASCII : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			valid(_longMostlyASCII);
		});
	};
}

function benchmarkValidLongJapanese(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _longJapanese = (_longStringJapanese : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			valid(_longJapanese);
		});
	};
}

function benchmarkValidStringTenASCIIChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			validString((Go.str("0123456789") : GoString));
		});
	};
}

function benchmarkValidString100KASCIIChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			validString(_ascii100000);
		});
	};
}

function benchmarkValidStringTenJapaneseChars(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			validString((Go.str("日本語日本語日本語日") : GoString));
		});
	};
}

function benchmarkValidStringLongMostlyASCII(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			validString(_longStringMostlyASCII);
		});
	};
}

function benchmarkValidStringLongJapanese(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			validString(_longStringJapanese);
		});
	};
}

function benchmarkEncodeASCIIRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			encodeRune(_buf, ("a".code : GoInt32));
		});
	};
}

function benchmarkEncodeJapaneseRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			encodeRune(_buf, ("本".code : GoInt32));
		});
	};
}

function benchmarkAppendASCIIRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			appendRune((_buf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), ("a".code : GoInt32));
		});
	};
}

function benchmarkAppendJapaneseRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _buf = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			appendRune((_buf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), ("本".code : GoInt32));
		});
	};
}

function benchmarkDecodeASCIIRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _a = (new Slice<GoUInt8>(0, 0, ("a".code : GoUInt8)) : Slice<GoUInt8>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			decodeRune(_a);
		});
	};
}

function benchmarkDecodeJapaneseRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _nihon = ((Go.str("本") : GoString) : Slice<GoByte>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			decodeRune(_nihon);
		});
	};
}

function benchmarkFullRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _benchmarks = (new Slice<T__struct_0>(0, 0, ({_name: (Go.str("ASCII") : GoString), _data: ((Go.str("a") : GoString) : Slice<GoByte>)} : T__struct_0),
		({_name: (Go.str("Incomplete") : GoString), _data: ((Go.str(240, 144, 128) : GoString) : Slice<GoByte>)} : T__struct_0),
		({_name: (Go.str("Japanese") : GoString), _data: ((Go.str("本") : GoString) : Slice<GoByte>)} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _bm in _benchmarks) {
		_b.run(_bm._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					_boolSink = fullRune(_bm._data);
				});
			};
		});
	};
}

@:keep var _ = {
	try {
		if (false) {
			throw Go.toInterface((Go.str("utf8.MaxRune is wrong") : GoString));
		};
		if (false) {
			throw Go.toInterface((Go.str("utf8.RuneError is wrong") : GoString));
		};
		var _japanese:GoString = (Go.str("日本語日本語日本語日") : GoString);
		var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_b.len() < (100000:GoInt), _i++, {
				if ((_i % (100 : GoInt)) == (0 : GoInt)) {
					_b.writeString((Go.str("日本語日本語日本語日") : GoString));
				} else {
					_b.writeString((Go.str("0123456789") : GoString));
				};
			});
		};
		_longStringMostlyASCII = (_b.string() : GoString);
		_longStringJapanese = stdgo.strings.Strings.repeat((Go.str("日本語日本語日本語日") : GoString), (3333 : GoInt));
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
