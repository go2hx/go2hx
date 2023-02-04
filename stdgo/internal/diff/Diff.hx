package stdgo.internal.diff;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// A pair is a pair of values tracked for both the x and y side of a diff.
	// It is typically a pair of line indexes.
**/
@:structInit private class T_pair {
	public var _x:GoInt = 0;
	public var _y:GoInt = 0;

	public function new(?_x:GoInt, ?_y:GoInt) {
		if (_x != null)
			this._x = _x;
		if (_y != null)
			this._y = _y;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pair(_x, _y);
	}
}

/**
	// Diff returns an anchored diff of the two texts old and new
	// in the “unified diff” format. If old and new are identical,
	// Diff returns a nil slice (no output).
	//
	// Unix diff implementations typically look for a diff with
	// the smallest number of lines inserted and removed,
	// which can in the worst case take time quadratic in the
	// number of lines in the texts. As a result, many implementations
	// either can be made to run for a long time or cut off the search
	// after a predetermined amount of work.
	//
	// In contrast, this implementation looks for a diff with the
	// smallest number of “unique” lines inserted and removed,
	// where unique means a line that appears just once in both old and new.
	// We call this an “anchored diff” because the unique lines anchor
	// the chosen matching regions. An anchored diff is usually clearer
	// than a standard diff, because the algorithm does not try to
	// reuse unrelated blank lines or closing braces.
	// The algorithm also guarantees to run in O(n log n) time
	// instead of the standard O(n²) time.
	//
	// Some systems call this approach a “patience diff,” named for
	// the “patience sorting” algorithm, itself named for a solitaire card game.
	// We avoid that name for two reasons. First, the name has been used
	// for a few different variants of the algorithm, so it is imprecise.
	// Second, the name is frequently interpreted as meaning that you have
	// to wait longer (to be patient) for the diff, meaning that it is a slower algorithm,
	// when in fact the algorithm is faster than the standard one.
**/
function diff(_oldName:GoString, _old:Slice<GoByte>, _newName:GoString, _new:Slice<GoByte>):Slice<GoByte> {
	if (stdgo.bytes.Bytes.equal(_old, _new)) {
		return (null : Slice<GoUInt8>);
	};
	var _x = _lines(_old);
	var _y = _lines(_new);
	var _out:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	stdgo.fmt.Fmt.fprintf(Go.asInterface((_out : Ref<stdgo.bytes.Bytes.Buffer>)), ("diff %s %s\n" : GoString), Go.toInterface(_oldName),
		Go.toInterface(_newName));
	stdgo.fmt.Fmt.fprintf(Go.asInterface((_out : Ref<stdgo.bytes.Bytes.Buffer>)), ("--- %s\n" : GoString), Go.toInterface(_oldName));
	stdgo.fmt.Fmt.fprintf(Go.asInterface((_out : Ref<stdgo.bytes.Bytes.Buffer>)), ("+++ %s\n" : GoString), Go.toInterface(_newName));
	var _0:T_pair = ({} : T_pair),
		_1:T_pair = ({} : T_pair),
		_2:T_pair = ({} : T_pair),
		_3:Slice<GoString> = (null : Slice<GoString>),
		_ctext:Slice<GoString> = _3,
		_count:T_pair = _2,
		_chunk:T_pair = _1,
		_done:T_pair = _0;
	for (_0 => _m in _tgs(_x, _y)) {
		if (_m._x < _done._x) {
			continue;
		};
		var _start:T_pair = (_m == null ? null : _m.__copy__());
		while (((_start._x > _done._x) && (_start._y > _done._y))
			&& (_x[(_start._x - (1 : GoInt):GoInt)] == _y[(_start._y - (1 : GoInt):GoInt)])) {
			_start._x--;
			_start._y--;
		};
		var _end:T_pair = (_m == null ? null : _m.__copy__());
		while (((_end._x < _x.length) && (_end._y < _y.length)) && (_x[(_end._x : GoInt)] == _y[(_end._y : GoInt)])) {
			_end._x++;
			_end._y++;
		};
		for (_1 => _s in (_x.__slice__(_done._x, _start._x) : Slice<GoString>)) {
			_ctext = _ctext.__appendref__(("-" : GoString) + _s);
			_count._x++;
		};
		for (_2 => _s in (_y.__slice__(_done._y, _start._y) : Slice<GoString>)) {
			_ctext = _ctext.__appendref__(("+" : GoString) + _s);
			_count._y++;
		};
		{};
		if (((_end._x < _x.length) || (_end._y < _y.length))
			&& (((_end._x - _start._x) < (3 : GoInt)) || ((_ctext.length > (0 : GoInt)) && ((_end._x - _start._x) < (6 : GoInt))))) {
			for (_3 => _s in (_x.__slice__(_start._x, _end._x) : Slice<GoString>)) {
				_ctext = _ctext.__appendref__((" " : GoString) + _s);
				_count._x++;
				_count._y++;
			};
			_done = (_end == null ? null : _end.__copy__());
			continue;
		};
		if ((_ctext.length) > (0 : GoInt)) {
			var _n:GoInt = _end._x - _start._x;
			if (_n > (3 : GoInt)) {
				_n = (3 : GoInt);
			};
			for (_4 => _s in (_x.__slice__(_start._x, _start._x + _n) : Slice<GoString>)) {
				_ctext = _ctext.__appendref__((" " : GoString) + _s);
				_count._x++;
				_count._y++;
			};
			_done = (new T_pair(_start._x + _n, _start._y + _n) : T_pair);
			if (_count._x > (0 : GoInt)) {
				_chunk._x++;
			};
			if (_count._y > (0 : GoInt)) {
				_chunk._y++;
			};
			stdgo.fmt.Fmt.fprintf(Go.asInterface((_out : Ref<stdgo.bytes.Bytes.Buffer>)), ("@@ -%d,%d +%d,%d @@\n" : GoString), Go.toInterface(_chunk._x),
				Go.toInterface(_count._x), Go.toInterface(_chunk._y), Go.toInterface(_count._y));
			for (_5 => _s in _ctext) {
				_out.writeString(_s);
			};
			_count._x = (0 : GoInt);
			_count._y = (0 : GoInt);
			_ctext = (_ctext.__slice__(0, (0 : GoInt)) : Slice<GoString>);
		};
		if ((_end._x >= _x.length) && (_end._y >= _y.length)) {
			break;
		};
		_chunk = (new T_pair(_end._x - (3 : GoInt), _end._y - (3 : GoInt)) : T_pair);
		for (_6 => _s in (_x.__slice__(_chunk._x, _end._x) : Slice<GoString>)) {
			_ctext = _ctext.__appendref__((" " : GoString) + _s);
			_count._x++;
			_count._y++;
		};
		_done = (_end == null ? null : _end.__copy__());
	};
	return _out.bytes();
}

/**
	// lines returns the lines in the file x, including newlines.
	// If the file does not end in a newline, one is supplied
	// along with a warning about the missing newline.
**/
private function _lines(_x:Slice<GoByte>):Slice<GoString> {
	var _l = stdgo.strings.Strings.splitAfter((_x : GoString), ("\n" : GoString));
	if (_l[((_l.length) - (1 : GoInt) : GoInt)] == (Go.str())) {
		_l = (_l.__slice__(0, (_l.length) - (1 : GoInt)) : Slice<GoString>);
	} else {
		_l[((_l.length) - (1 : GoInt) : GoInt)] = _l[((_l.length) - (1 : GoInt) : GoInt)] + (("\n\\ No newline at end of file\n" : GoString));
	};
	return _l;
}

/**
	// tgs returns the pairs of indexes of the longest common subsequence
	// of unique lines in x and y, where a unique line is one that appears
	// once in x and once in y.
	//
	// The longest common subsequence algorithm is as described in
	// Thomas G. Szymanski, “A Special Case of the Maximal Common
	// Subsequence Problem,” Princeton TR #170 (January 1975),
	// available at https://research.swtch.com/tgs170.pdf.
**/
private function _tgs(_x:Slice<GoString>, _y:Slice<GoString>):Slice<T_pair> {
	var _m = (new GoObjectMap<GoString, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind)}))) : GoMap<GoString, GoInt>);
	for (_0 => _s in _x) {
		{
			var _c:GoInt = _m[_s];
			if (_c > (-2 : GoInt)) {
				_m[_s] = _c - (1 : GoInt);
			};
		};
	};
	for (_1 => _s in _y) {
		{
			var _c:GoInt = _m[_s];
			if (_c > (-8 : GoInt)) {
				_m[_s] = _c - (4 : GoInt);
			};
		};
	};
	var _0:Slice<GoInt> = (null : Slice<GoInt>),
		_1:Slice<GoInt> = (null : Slice<GoInt>),
		_2:Slice<GoInt> = (null : Slice<GoInt>),
		_inv:Slice<GoInt> = _2,
		_yi:Slice<GoInt> = _1,
		_xi:Slice<GoInt> = _0;
	for (_i => _s in _y) {
		if (_m[_s] == ((-5 : GoInt))) {
			_m[_s] = (_yi.length);
			_yi = _yi.__appendref__(_i);
		};
	};
	for (_i => _s in _x) {
		{
			var __tmp__ = (_m != null && _m.__exists__(_s) ? {value: _m[_s], ok: true} : {value: (0 : GoInt), ok: false}),
				_j:GoInt = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok && (_j >= (0 : GoInt))) {
				_xi = _xi.__appendref__(_i);
				_inv = _inv.__appendref__(_j);
			};
		};
	};
	var j = _inv;
	var _n:GoInt = (_xi.length);
	var t = new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoInt)]);
	var l = new Slice<GoInt>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (0 : GoInt)]);
	for (_i in 0...t.length.toBasic()) {
		t[(_i : GoInt)] = _n + (1 : GoInt);
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			var _k:GoInt = stdgo.sort.Sort.search(_n, function(_k:GoInt):Bool {
				return t[(_k : GoInt)] >= j[(_i : GoInt)];
			});
			t[(_k : GoInt)] = j[(_i : GoInt)];
			l[(_i : GoInt)] = _k + (1 : GoInt);
		});
	};
	var _k:GoInt = (0 : GoInt);
	for (_2 => _v in l) {
		if (_k < _v) {
			_k = _v;
		};
	};
	var _seq = new Slice<T_pair>(((2 : GoInt) + _k : GoInt).toBasic(), 0, ...[for (i in 0...((2 : GoInt) + _k : GoInt).toBasic()) ({} : T_pair)]);
	_seq[((1 : GoInt) + _k : GoInt)] = (new T_pair((_x.length), (_y.length)) : T_pair);
	var _lastj:GoInt = _n;
	{
		var _i:GoInt = _n - (1 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			if ((l[(_i : GoInt)] == _k) && (j[(_i : GoInt)] < _lastj)) {
				_seq[(_k : GoInt)] = (new T_pair(_xi[(_i : GoInt)], _yi[(j[(_i : GoInt)] : GoInt)]) : T_pair);
				_k--;
			};
		});
	};
	_seq[(0 : GoInt)] = (new T_pair((0 : GoInt), (0 : GoInt)) : T_pair);
	return _seq;
}
