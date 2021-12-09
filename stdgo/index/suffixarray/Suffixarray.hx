package stdgo.index.suffixarray;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Index {
	public function findAllIndex(_r:Pointer<stdgo.regexp.Regexp.Regexp>, _n:GoInt):Slice<Slice<GoInt>> {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _result:Slice<Slice<GoInt>> = new Slice<Slice<GoInt>>().nil();
		var __tmp__ = _r.value.literalPrefix(),
			_prefix:GoString = __tmp__._0,
			_complete:Bool = __tmp__._1;
		var _lit:Slice<GoUInt8> = ((_prefix : Slice<GoByte>));
		if (_prefix == (("" : GoString))) {
			return _r.value.findAllIndex(_x.value._data, _n);
		};
		if (_complete) {
			{
				var _n1:GoInt = _n;
				Go.cfor(true, _n1 = _n1 + (((2 : GoInt)) * (_n - _result.length)), {
					var _indices:Slice<GoInt> = _x.value.lookup(_lit, _n1);
					if (_indices.length == ((0 : GoInt))) {
						return _result;
					};
					stdgo.sort.Sort.ints(_indices);
					var _pairs:Slice<GoInt> = new Slice<GoInt>(...[
						for (i in 0...((((2 : GoInt)) * _indices.length : GoInt)).toBasic()) ((0 : GoInt))
					]);
					_result = new Slice<Slice<GoInt>>(...[for (i in 0...((_indices.length : GoInt)).toBasic()) new Slice<GoInt>().nil()]);
					var _count:GoInt = ((0 : GoInt));
					var _prev:GoInt = ((0 : GoInt));
					for (_i in _indices) {
						if (_count == _n) {
							break;
						};
						if (_prev <= _i) {
							var _j:GoInt = ((2 : GoInt)) * _count;
							_pairs[_j + ((0 : GoInt))] = _i;
							_pairs[_j + ((1 : GoInt))] = _i + _lit.length;
							_result[_count] = _pairs.__slice__(_j, _j + ((2 : GoInt)));
							_count++;
							_prev = _i + _lit.length;
						};
					};
					_result = _result.__slice__(((0 : GoInt)), _count);
					if (_result.length >= _n || _indices.length != _n1) {
						break;
					};
				});
			};
			if (_result.length == ((0 : GoInt))) {
				_result = new Slice<Slice<GoInt>>().nil();
			};
			return _result;
		};
		_r = stdgo.regexp.Regexp.mustCompile((("^" : GoString)) + _r.value.toString());
		{
			var _n1:GoInt = _n;
			Go.cfor(true, _n1 = _n1 + (((2 : GoInt)) * (_n - _result.length)), {
				var _indices:Slice<GoInt> = _x.value.lookup(_lit, _n1);
				if (_indices.length == ((0 : GoInt))) {
					return _result;
				};
				stdgo.sort.Sort.ints(_indices);
				_result = _result.__slice__(((0 : GoInt)), ((0 : GoInt)));
				var _prev:GoInt = ((0 : GoInt));
				for (_i in _indices) {
					if (_result.length == _n) {
						break;
					};
					var _m:Slice<GoInt> = _r.value.findIndex(_x.value._data.__slice__(_i));
					if (_m != null && !_m.isNil() && _prev <= _i) {
						_m[((0 : GoInt))] = _i;
						_m[((1 : GoInt))] = _m[((1 : GoInt))] + (_i);
						_result = _result.__append__(_m);
						_prev = _m[((1 : GoInt))];
					};
				};
				if (_result.length >= _n || _indices.length != _n1) {
					break;
				};
			});
		};
		if (_result.length == ((0 : GoInt))) {
			_result = new Slice<Slice<GoInt>>().nil();
		};
		return _result;
	}

	public function lookup(_s:Slice<GoByte>, _n:GoInt):Slice<GoInt> {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _result:Slice<GoInt> = new Slice<GoInt>().nil();
		if (_s.length > ((0 : GoInt)) && _n != ((0 : GoInt))) {
			var _matches:T_ints = _x.value._lookupAll(_s).__copy__();
			var _count:GoInt = _matches._len();
			if (_n < ((0 : GoInt)) || _count < _n) {
				_n = _count;
			};
			if (_n > ((0 : GoInt))) {
				_result = new Slice<GoInt>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoInt))]);
				if (_matches._int32 != null && !_matches._int32.isNil()) {
					{
						var _i;
						for (_obj in _result.keyValueIterator()) {
							_i = _obj.key;
							_result[_i] = ((_matches._int32[_i] : GoInt));
						};
					};
				} else {
					{
						var _i;
						for (_obj in _result.keyValueIterator()) {
							_i = _obj.key;
							_result[_i] = ((_matches._int64[_i] : GoInt));
						};
					};
				};
			};
		};
		return _result;
	}

	public function _lookupAll(_s:Slice<GoByte>):T_ints {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _i:GoInt = stdgo.sort.Sort.search(_x.value._sa._len(), function(_i:GoInt):Bool {
			return stdgo.bytes.Bytes.compare(_x.value._at(_i), _s) >= ((0 : GoInt));
		});
		var _j:GoInt = _i + stdgo.sort.Sort.search(_x.value._sa._len() - _i, function(_j:GoInt):Bool {
			return !stdgo.bytes.Bytes.hasPrefix(_x.value._at(_j + _i), _s);
		});
		return _x.value._sa._slice(_i, _j).__copy__();
	}

	public function _at(_i:GoInt):Slice<GoByte> {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _x.value._data.__slice__(_x.value._sa._get(_i));
	}

	public function bytes():Slice<GoByte> {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _x.value._data;
	}

	public function write(_w:stdgo.io.Io.Writer):Error {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_bufSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
		{
			var _err:stdgo.Error = _writeInt(_w, _buf, _x.value._data.length);
			if (_err != null) {
				return _err;
			};
		};
		{
			var __tmp__ = _w.write(_x.value._data),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
		};
		var _sa:T_ints = _x.value._sa.__copy__();
		while (_sa._len() > ((0 : GoInt))) {
			var __tmp__ = _writeSlice(_w, _buf, _sa.__copy__()),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_sa = _sa._slice(_n, _sa._len()).__copy__();
		};
		return ((null : stdgo.Error));
	}

	public function read(_r:stdgo.io.Io.Reader):Error {
		var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_bufSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
		var __tmp__ = _readInt(_r, _buf),
			_n64:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		if (((((_n64 : GoInt)) : GoInt64)) != _n64 || ((_n64 : GoInt)) < ((0 : GoInt))) {
			return _errTooBig;
		};
		var _n:GoInt = ((_n64 : GoInt));
		if (((2 : GoInt)) * _n < _x.value._data.cap() || _x.value._data.cap() < _n || _x.value._sa._int32 != null && !_x.value._sa._int32.isNil()
			&& _n > _maxData32 || _x.value._sa._int64 != null && !_x.value._sa._int64.isNil() && _n <= _maxData32) {
			_x.value._data = new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
			_x.value._sa._int32 = new Slice<GoInt32>().nil();
			_x.value._sa._int64 = new Slice<GoInt64>().nil();
			if (_n <= _maxData32) {
				_x.value._sa._int32 = new Slice<GoInt32>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoInt32))]);
			} else {
				_x.value._sa._int64 = new Slice<GoInt64>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoInt64))]);
			};
		} else {
			_x.value._data = _x.value._data.__slice__(((0 : GoInt)), _n);
			_x.value._sa = _x.value._sa._slice(((0 : GoInt)), _n).__copy__();
		};
		{
			var __tmp__ = stdgo.io.Io.readFull(_r, _x.value._data),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
		};
		var _sa:T_ints = _x.value._sa.__copy__();
		while (_sa._len() > ((0 : GoInt))) {
			var __tmp__ = _readSlice(_r, _buf, _sa.__copy__()),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_sa = _sa._slice(_n, _sa._len()).__copy__();
		};
		return ((null : stdgo.Error));
	}

	public var _data:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _sa:T_ints = new T_ints();

	public function new(?_data:Slice<GoUInt8>, ?_sa:T_ints)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_data) + " " + Go.string(_sa) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Index(_data, _sa);
	}

	public function __set__(__tmp__) {
		this._data = __tmp__._data;
		this._sa = __tmp__._sa;
		return this;
	}
}

@:structInit class T_ints {
	public function _slice(_i:GoInt, _j:GoInt):T_ints {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a.value._int32 != null && !_a.value._int32.isNil()) {
			return new T_ints(_a.value._int32.__slice__(_i, _j), new Slice<GoInt64>().nil()).__copy__();
		};
		return new T_ints(new Slice<GoInt32>().nil(), _a.value._int64.__slice__(_i, _j)).__copy__();
	}

	public function _set(_i:GoInt, _v:GoInt64):Void {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a.value._int32 != null && !_a.value._int32.isNil()) {
			_a.value._int32[_i] = ((_v : GoInt32));
		} else {
			_a.value._int64[_i] = _v;
		};
	}

	public function _get(_i:GoInt):GoInt64 {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a.value._int32 != null && !_a.value._int32.isNil()) {
			return ((_a.value._int32[_i] : GoInt64));
		};
		return _a.value._int64[_i];
	}

	public function _len():GoInt {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _a.value._int32.length + _a.value._int64.length;
	}

	public var _int32:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _int64:Slice<GoInt64> = new Slice<GoInt64>().nil();

	public function new(?_int32:Slice<GoInt32>, ?_int64:Slice<GoInt64>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_int32) + " " + Go.string(_int64) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ints(_int32, _int64);
	}

	public function __set__(__tmp__) {
		this._int32 = __tmp__._int32;
		this._int64 = __tmp__._int64;
		return this;
	}
}

final _realMaxData32:GoUnTypedInt = stdgo.math.Math.maxInt32;
var _maxData32:GoInt = _realMaxData32;
var _errTooBig:stdgo.Error = stdgo.errors.Errors.new_("suffixarray: data too large");
final _bufSize:GoUnTypedInt = (((16 : GoUnTypedInt)) << ((10 : GoUnTypedInt)));

/**
	// text_32 returns the suffix array for the input text.
	// It requires that len(text) fit in an int32
	// and that the caller zero sa.
**/
function _text_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>):Void {
	if (((((_text.length : GoInt32)) : GoInt)) != _text.length || _text.length != _sa.length) {
		throw "suffixarray: misuse of text_32";
	};
	_sais_8_32(_text, ((256 : GoInt)), _sa, new Slice<GoInt32>(...[
		for (i in 0...((((2 : GoUnTypedInt)) * ((256 : GoUnTypedInt)) : GoInt)).toBasic()) ((0 : GoInt32))
	]));
}

/**
	// sais_8_32 computes the suffix array of text.
	// The text must contain only values in [0, textMax).
	// The suffix array is stored in sa, which the caller
	// must ensure is already zeroed.
	// The caller must also provide temporary space tmp
	// with len(tmp) ≥ textMax. If len(tmp) ≥ 2*textMax
	// then the algorithm runs a little faster.
	// If sais_8_32 modifies tmp, it sets tmp[0] = -1 on return.
**/
function _sais_8_32(_text:Slice<GoByte>, _textMax:GoInt, _sa:Slice<GoInt32>, _tmp:Slice<GoInt32>):Void {
	if (_sa.length != _text.length || _tmp.length < ((_textMax : GoInt))) {
		throw "suffixarray: misuse of sais_8_32";
	};
	if (_text.length == ((0 : GoInt))) {
		return;
	};
	if (_text.length == ((1 : GoInt))) {
		_sa[((0 : GoInt))] = ((0 : GoInt32));
		return;
	};
	var _freq:Slice<GoInt32> = new Slice<GoInt32>().nil(),
		_bucket:Slice<GoInt32> = new Slice<GoInt32>().nil();
	if (_tmp.length >= ((2 : GoInt)) * _textMax) {
		{
			final __tmp__0 = _tmp.__slice__(0, _textMax);
			final __tmp__1 = _tmp.__slice__(_textMax, ((2 : GoInt)) * _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
		_freq[((0 : GoInt))] = -((1 : GoUnTypedInt));
	} else {
		{
			final __tmp__0 = new Slice<GoInt32>().nil();
			final __tmp__1 = _tmp.__slice__(0, _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
	};
	var _numLMS:GoInt = _placeLMS_8_32(_text, _sa, _freq, _bucket);
	if (_numLMS <= ((1 : GoInt))) {} else {
		_induceSubL_8_32(_text, _sa, _freq, _bucket);
		_induceSubS_8_32(_text, _sa, _freq, _bucket);
		_length_8_32(_text, _sa, _numLMS);
		var _maxID:GoInt = _assignID_8_32(_text, _sa, _numLMS);
		if (_maxID < _numLMS) {
			_map_32(_sa, _numLMS);
			_recurse_32(_sa, _tmp, _numLMS, _maxID);
			_unmap_8_32(_text, _sa, _numLMS);
		} else {
			Go.copy(_sa, _sa.__slice__(_sa.length - _numLMS));
		};
		_expand_8_32(_text, _freq, _bucket, _sa, _numLMS);
	};
	_induceL_8_32(_text, _sa, _freq, _bucket);
	_induceS_8_32(_text, _sa, _freq, _bucket);
	_tmp[((0 : GoInt))] = -((1 : GoUnTypedInt));
}

/**
	// freq_8_32 returns the character frequencies
	// for text, as a slice indexed by character value.
	// If freq is nil, freq_8_32 uses and returns bucket.
	// If freq is non-nil, freq_8_32 assumes that freq[0] >= 0
	// means the frequencies are already computed.
	// If the frequency data is overwritten or uninitialized,
	// the caller must set freq[0] = -1 to force recomputation
	// the next time it is needed.
**/
function _freq_8_32(_text:Slice<GoByte>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Slice<GoInt32> {
	if (_freq != null && !_freq.isNil() && _freq[((0 : GoInt))] >= ((0 : GoInt32))) {
		return _freq;
	};
	if (_freq == null || _freq.isNil()) {
		_freq = _bucket;
	};
	_freq = _freq.__slice__(0, ((256 : GoInt)));
	{
		var _i;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_freq[_i] = ((0 : GoInt32));
		};
	};
	for (_c in _text) {
		_freq[_c]++;
	};
	return _freq;
}

/**
	// bucketMin_8_32 stores into bucket[c] the minimum index
	// in the bucket for character c in a bucket-sort of text.
**/
function _bucketMin_8_32(_text:Slice<GoByte>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_freq = _freq_8_32(_text, _freq, _bucket);
	_freq = _freq.__slice__(0, ((256 : GoInt)));
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _total:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_bucket[_i] = _total;
			_total = _total + (_n);
		};
	};
}

/**
	// bucketMax_8_32 stores into bucket[c] the maximum index
	// in the bucket for character c in a bucket-sort of text.
	// The bucket indexes for c are [min, max).
	// That is, max is one past the final index in that bucket.
**/
function _bucketMax_8_32(_text:Slice<GoByte>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_freq = _freq_8_32(_text, _freq, _bucket);
	_freq = _freq.__slice__(0, ((256 : GoInt)));
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _total:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_total = _total + (_n);
			_bucket[_i] = _total;
		};
	};
}

/**
	// placeLMS_8_32 places into sa the indexes of the
	// final characters of the LMS substrings of text,
	// sorted into the rightmost ends of their correct buckets
	// in the suffix array.
	//
	// The imaginary sentinel character at the end of the text
	// is the final character of the final LMS substring, but there
	// is no bucket for the imaginary sentinel character,
	// which has a smaller value than any real character.
	// The caller must therefore pretend that sa[-1] == len(text).
	//
	// The text indexes of LMS-substring characters are always ≥ 1
	// (the first LMS-substring must be preceded by one or more L-type
	// characters that are not part of any LMS-substring),
	// so using 0 as a “not present” suffix array entry is safe,
	// both in this function and in most later functions
	// (until induceL_8_32 below).
**/
function _placeLMS_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):GoInt {
	_bucketMax_8_32(_text, _freq, _bucket);
	var _numLMS:GoInt = ((0 : GoInt));
	var _lastB:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _c0:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_c1:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _b:GoInt32 = _bucket[_c1] - ((1 : GoInt32));
				_bucket[_c1] = _b;
				_sa[_b] = (((_i + ((1 : GoInt))) : GoInt32));
				_lastB = _b;
				_numLMS++;
			};
		});
	};
	if (_numLMS > ((1 : GoInt))) {
		_sa[_lastB] = ((0 : GoInt32));
	};
	return _numLMS;
}

/**
	// induceSubL_8_32 inserts the L-type text indexes of LMS-substrings
	// into sa, assuming that the final characters of the LMS-substrings
	// are already inserted into sa, sorted by final character, and at the
	// right (not left) end of the corresponding character bucket.
	// Each LMS-substring has the form (as a regexp) /S+L+S/:
	// one or more S-type, one or more L-type, final S-type.
	// induceSubL_8_32 leaves behind only the leftmost L-type text
	// index for each LMS-substring. That is, it removes the final S-type
	// indexes that are present on entry, and it inserts but then removes
	// the interior L-type indexes too.
	// (Only the leftmost L-type index is needed by induceSubS_8_32.)
**/
function _induceSubL_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMin_8_32(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoUInt8 = _text[_k - ((1 : GoInt))], _c1:GoUInt8 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoUInt8 = _c1;
	var _b:GoInt32 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt32));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			if (_j < ((0 : GoInt))) {
				_sa[_i] = ((-_j : GoInt32));
				continue;
			};
			_sa[_i] = ((0 : GoInt32));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c0:GoUInt8 = _text[_k - ((1 : GoInt))],
				_c1:GoUInt8 = _text[_k];
			if (_c0 < _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt32));
			_b++;
		});
	};
}

/**
	// induceSubS_8_32 inserts the S-type text indexes of LMS-substrings
	// into sa, assuming that the leftmost L-type text indexes are already
	// inserted into sa, sorted by LMS-substring suffix, and at the
	// left end of the corresponding character bucket.
	// Each LMS-substring has the form (as a regexp) /S+L+S/:
	// one or more S-type, one or more L-type, final S-type.
	// induceSubS_8_32 leaves behind only the leftmost S-type text
	// index for each LMS-substring, in sorted order, at the right end of sa.
	// That is, it removes the L-type indexes that are present on entry,
	// and it inserts but then removes the interior S-type indexes too,
	// leaving the LMS-substring start indexes packed into sa[len(sa)-numLMS:].
	// (Only the LMS-substring start indexes are processed by the recursion.)
**/
function _induceSubS_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMax_8_32(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _cB:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
	var _b:GoInt32 = _bucket[_cB];
	var _top:GoInt = _sa.length;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			_sa[_i] = ((0 : GoInt32));
			if (_j < ((0 : GoInt))) {
				_top--;
				_sa[_top] = ((-_j : GoInt32));
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoUInt8 = _text[_k];
			var _c0:GoUInt8 = _text[_k - ((1 : GoInt))];
			if (_c0 > _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt32));
		});
	};
}

/**
	// length_8_32 computes and records the length of each LMS-substring in text.
	// The length of the LMS-substring at index j is stored at sa[j/2],
	// avoiding the LMS-substring indexes already stored in the top half of sa.
	// (If index j is an LMS-substring start, then index j-1 is type L and cannot be.)
	// There are two exceptions, made for optimizations in name_8_32 below.
	//
	// First, the final LMS-substring is recorded as having length 0, which is otherwise
	// impossible, instead of giving it a length that includes the implicit sentinel.
	// This ensures the final LMS-substring has length unequal to all others
	// and therefore can be detected as different without text comparison
	// (it is unequal because it is the only one that ends in the implicit sentinel,
	// and the text comparison would be problematic since the implicit sentinel
	// is not actually present at text[len(text)]).
	//
	// Second, to avoid text comparison entirely, if an LMS-substring is very short,
	// sa[j/2] records its actual text instead of its length, so that if two such
	// substrings have matching “length,” the text need not be read at all.
	// The definition of “very short” is that the text bytes must pack into an uint32,
	// and the unsigned encoding e must be ≥ len(text), so that it can be
	// distinguished from a valid length.
**/
function _length_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	var _end:GoInt = ((0 : GoInt));
	var _cx:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
	var _c0:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_c1:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			_cx = (_cx << ((8 : GoUnTypedInt))) | (((_c1 + ((1 : GoUInt8))) : GoUInt32));
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _j:GoInt = _i + ((1 : GoInt));
				var _code:GoInt32 = ((0 : GoInt32));
				if (_end == ((0 : GoInt))) {
					_code = ((0 : GoInt32));
				} else {
					_code = (((_end - _j) : GoInt32));
					if (_code <= ((32 : GoUnTypedInt)) / ((8 : GoUnTypedInt)) && -1 ^ _cx >= ((_text.length : GoUInt32))) {
						_code = (((-1 ^ _cx) : GoInt32));
					};
				};
				_sa[(_j >> ((1 : GoUnTypedInt)))] = _code;
				_end = _j + ((1 : GoInt));
				_cx = (((_c1 + ((1 : GoUInt8))) : GoUInt32));
			};
		});
	};
}

/**
	// assignID_8_32 assigns a dense ID numbering to the
	// set of LMS-substrings respecting string ordering and equality,
	// returning the maximum assigned ID.
	// For example given the input "ababab", the LMS-substrings
	// are "aba", "aba", and "ab", renumbered as 2 2 1.
	// sa[len(sa)-numLMS:] holds the LMS-substring indexes
	// sorted in string order, so to assign numbers we can
	// consider each in turn, removing adjacent duplicates.
	// The new ID for the LMS-substring at index j is written to sa[j/2],
	// overwriting the length previously stored there (by length_8_32 above).
**/
function _assignID_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _numLMS:GoInt):GoInt {
	return stdgo.internal.Macro.controlFlow({
		var _id:GoInt = ((0 : GoInt));
		var _lastLen:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
		var _lastPos:GoInt32 = ((((0 : GoInt32)) : GoInt32));
		for (_j in _sa.__slice__(_sa.length - _numLMS)) {
			var _n:GoInt32 = _sa[_j / ((2 : GoInt32))];
			if (_n != _lastLen) {
				@:goto "New";
			};
			if (((_n : GoUInt32)) >= ((_text.length : GoUInt32))) {
				@:goto "Same";
			};
			{
				var _n:GoInt = ((_n : GoInt));
				var _this:Slice<GoUInt8> = _text.__slice__(_j).__slice__(0, _n);
				var _last:Slice<GoUInt8> = _text.__slice__(_lastPos).__slice__(0, _n);
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _n, _i++, {
						if (_this[_i] != _last[_i]) {
							@:goto "New";
						};
					});
				};
				@:goto "Same";
			};
			@:label("New") _id++;
			_lastPos = _j;
			_lastLen = _n;
			@:label("Same") _sa[_j / ((2 : GoInt32))] = ((_id : GoInt32));
		};
		return _id;
	});
}

/**
	// map_32 maps the LMS-substrings in text to their new IDs,
	// producing the subproblem for the recursion.
	// The mapping itself was mostly applied by assignID_8_32:
	// sa[i] is either 0, the ID for the LMS-substring at index 2*i,
	// or the ID for the LMS-substring at index 2*i+1.
	// To produce the subproblem we need only remove the zeros
	// and change ID into ID-1 (our IDs start at 1, but text chars start at 0).
	//
	// map_32 packs the result, which is the input to the recursion,
	// into the top of sa, so that the recursion result can be stored
	// in the bottom of sa, which sets up for expand_8_32 well.
**/
function _map_32(_sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	var _w:GoInt = _sa.length;
	{
		var _i:GoInt = _sa.length / ((2 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt32 = _sa[_i];
			if (_j > ((0 : GoInt32))) {
				_w--;
				_sa[_w] = _j - ((1 : GoInt32));
			};
		});
	};
}

/**
	// recurse_32 calls sais_32 recursively to solve the subproblem we've built.
	// The subproblem is at the right end of sa, the suffix array result will be
	// written at the left end of sa, and the middle of sa is available for use as
	// temporary frequency and bucket storage.
**/
function _recurse_32(_sa:Slice<GoInt32>, _oldTmp:Slice<GoInt32>, _numLMS:GoInt, _maxID:GoInt):Void {
	var _dst:Slice<GoInt32> = _sa.__slice__(0, _numLMS),
		_saTmp:Slice<GoInt32> = _sa.__slice__(_numLMS, _sa.length - _numLMS),
		_text:Slice<GoInt32> = _sa.__slice__(_sa.length - _numLMS);
	var _tmp:Slice<GoInt32> = _oldTmp;
	if (_tmp.length < _saTmp.length) {
		_tmp = _saTmp;
	};
	if (_tmp.length < _numLMS) {
		var _n:GoInt = _maxID;
		if (_n < _numLMS / ((2 : GoInt))) {
			_n = _numLMS / ((2 : GoInt));
		};
		_tmp = new Slice<GoInt32>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoInt32))]);
	};
	{
		var _i;
		for (_obj in _dst.keyValueIterator()) {
			_i = _obj.key;
			_dst[_i] = ((0 : GoInt32));
		};
	};
	_sais_32(_text, _maxID, _dst, _tmp);
}

/**
	// unmap_8_32 unmaps the subproblem back to the original.
	// sa[:numLMS] is the LMS-substring numbers, which don't matter much anymore.
	// sa[len(sa)-numLMS:] is the sorted list of those LMS-substring numbers.
	// The key part is that if the list says K that means the K'th substring.
	// We can replace sa[:numLMS] with the indexes of the LMS-substrings.
	// Then if the list says K it really means sa[K].
	// Having mapped the list back to LMS-substring indexes,
	// we can place those into the right buckets.
**/
function _unmap_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	var _unmap:Slice<GoInt32> = _sa.__slice__(_sa.length - _numLMS);
	var _j:GoInt = _unmap.length;
	var _c0:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_c1:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				_j--;
				_unmap[_j] = (((_i + ((1 : GoInt))) : GoInt32));
			};
		});
	};
	_sa = _sa.__slice__(0, _numLMS);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			_sa[_i] = _unmap[_sa[_i]];
		});
	};
}

/**
	// expand_8_32 distributes the compacted, sorted LMS-suffix indexes
	// from sa[:numLMS] into the tops of the appropriate buckets in sa,
	// preserving the sorted order and making room for the L-type indexes
	// to be slotted into the sorted sequence by induceL_8_32.
**/
function _expand_8_32(_text:Slice<GoByte>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>, _sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	_bucketMax_8_32(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _x:GoInt = _numLMS - ((1 : GoInt));
	var _saX:GoInt32 = _sa[_x];
	var _c:GoUInt8 = _text[_saX];
	var _b:GoInt32 = _bucket[_c] - ((1 : GoInt32));
	_bucket[_c] = _b;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_i != ((_b : GoInt))) {
				_sa[_i] = ((0 : GoInt32));
				continue;
			};
			_sa[_i] = _saX;
			if (_x > ((0 : GoInt))) {
				_x--;
				_saX = _sa[_x];
				_c = _text[_saX];
				_b = _bucket[_c] - ((1 : GoInt32));
				_bucket[_c] = _b;
			};
		});
	};
}

/**
	// induceL_8_32 inserts L-type text indexes into sa,
	// assuming that the leftmost S-type indexes are inserted
	// into sa, in sorted order, in the right bucket halves.
	// It leaves all the L-type indexes in sa, but the
	// leftmost L-type indexes are negated, to mark them
	// for processing by induceS_8_32.
**/
function _induceL_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMin_8_32(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoUInt8 = _text[_k - ((1 : GoInt))], _c1:GoUInt8 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoUInt8 = _c1;
	var _b:GoInt32 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt32));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j <= ((0 : GoInt))) {
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoUInt8 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoUInt8 = _text[_k - ((1 : GoInt))];
					if (_c0 < _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt32));
			_b++;
		});
	};
}

function _induceS_8_32(_text:Slice<GoByte>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMax_8_32(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _cB:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
	var _b:GoInt32 = _bucket[_cB];
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j >= ((0 : GoInt))) {
				continue;
			};
			_j = -_j;
			_sa[_i] = ((_j : GoInt32));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoUInt8 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoUInt8 = _text[_k - ((1 : GoInt))];
					if (_c0 <= _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt32));
		});
	};
}

function _text_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>):Void {
	if (((((_text.length : GoInt64)) : GoInt)) != _text.length || _text.length != _sa.length) {
		throw "suffixarray: misuse of text_64";
	};
	_sais_8_64(_text, ((256 : GoInt)), _sa, new Slice<GoInt64>(...[
		for (i in 0...((((2 : GoUnTypedInt)) * ((256 : GoUnTypedInt)) : GoInt)).toBasic()) ((0 : GoInt64))
	]));
}

function _sais_8_64(_text:Slice<GoByte>, _textMax:GoInt, _sa:Slice<GoInt64>, _tmp:Slice<GoInt64>):Void {
	if (_sa.length != _text.length || _tmp.length < ((_textMax : GoInt))) {
		throw "suffixarray: misuse of sais_8_64";
	};
	if (_text.length == ((0 : GoInt))) {
		return;
	};
	if (_text.length == ((1 : GoInt))) {
		_sa[((0 : GoInt))] = ((0 : GoInt64));
		return;
	};
	var _freq:Slice<GoInt64> = new Slice<GoInt64>().nil(),
		_bucket:Slice<GoInt64> = new Slice<GoInt64>().nil();
	if (_tmp.length >= ((2 : GoInt)) * _textMax) {
		{
			final __tmp__0 = _tmp.__slice__(0, _textMax);
			final __tmp__1 = _tmp.__slice__(_textMax, ((2 : GoInt)) * _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
		_freq[((0 : GoInt))] = -((1 : GoUnTypedInt));
	} else {
		{
			final __tmp__0 = new Slice<GoInt64>().nil();
			final __tmp__1 = _tmp.__slice__(0, _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
	};
	var _numLMS:GoInt = _placeLMS_8_64(_text, _sa, _freq, _bucket);
	if (_numLMS <= ((1 : GoInt))) {} else {
		_induceSubL_8_64(_text, _sa, _freq, _bucket);
		_induceSubS_8_64(_text, _sa, _freq, _bucket);
		_length_8_64(_text, _sa, _numLMS);
		var _maxID:GoInt = _assignID_8_64(_text, _sa, _numLMS);
		if (_maxID < _numLMS) {
			_map_64(_sa, _numLMS);
			_recurse_64(_sa, _tmp, _numLMS, _maxID);
			_unmap_8_64(_text, _sa, _numLMS);
		} else {
			Go.copy(_sa, _sa.__slice__(_sa.length - _numLMS));
		};
		_expand_8_64(_text, _freq, _bucket, _sa, _numLMS);
	};
	_induceL_8_64(_text, _sa, _freq, _bucket);
	_induceS_8_64(_text, _sa, _freq, _bucket);
	_tmp[((0 : GoInt))] = -((1 : GoUnTypedInt));
}

function _sais_32(_text:Slice<GoInt32>, _textMax:GoInt, _sa:Slice<GoInt32>, _tmp:Slice<GoInt32>):Void {
	if (_sa.length != _text.length || _tmp.length < ((_textMax : GoInt))) {
		throw "suffixarray: misuse of sais_32";
	};
	if (_text.length == ((0 : GoInt))) {
		return;
	};
	if (_text.length == ((1 : GoInt))) {
		_sa[((0 : GoInt))] = ((0 : GoInt32));
		return;
	};
	var _freq:Slice<GoInt32> = new Slice<GoInt32>().nil(),
		_bucket:Slice<GoInt32> = new Slice<GoInt32>().nil();
	if (_tmp.length >= ((2 : GoInt)) * _textMax) {
		{
			final __tmp__0 = _tmp.__slice__(0, _textMax);
			final __tmp__1 = _tmp.__slice__(_textMax, ((2 : GoInt)) * _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
		_freq[((0 : GoInt))] = -((1 : GoUnTypedInt));
	} else {
		{
			final __tmp__0 = new Slice<GoInt32>().nil();
			final __tmp__1 = _tmp.__slice__(0, _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
	};
	var _numLMS:GoInt = _placeLMS_32(_text, _sa, _freq, _bucket);
	if (_numLMS <= ((1 : GoInt))) {} else {
		_induceSubL_32(_text, _sa, _freq, _bucket);
		_induceSubS_32(_text, _sa, _freq, _bucket);
		_length_32(_text, _sa, _numLMS);
		var _maxID:GoInt = _assignID_32(_text, _sa, _numLMS);
		if (_maxID < _numLMS) {
			_map_32(_sa, _numLMS);
			_recurse_32(_sa, _tmp, _numLMS, _maxID);
			_unmap_32(_text, _sa, _numLMS);
		} else {
			Go.copy(_sa, _sa.__slice__(_sa.length - _numLMS));
		};
		_expand_32(_text, _freq, _bucket, _sa, _numLMS);
	};
	_induceL_32(_text, _sa, _freq, _bucket);
	_induceS_32(_text, _sa, _freq, _bucket);
	_tmp[((0 : GoInt))] = -((1 : GoUnTypedInt));
}

function _sais_64(_text:Slice<GoInt64>, _textMax:GoInt, _sa:Slice<GoInt64>, _tmp:Slice<GoInt64>):Void {
	if (_sa.length != _text.length || _tmp.length < ((_textMax : GoInt))) {
		throw "suffixarray: misuse of sais_64";
	};
	if (_text.length == ((0 : GoInt))) {
		return;
	};
	if (_text.length == ((1 : GoInt))) {
		_sa[((0 : GoInt))] = ((0 : GoInt64));
		return;
	};
	var _freq:Slice<GoInt64> = new Slice<GoInt64>().nil(),
		_bucket:Slice<GoInt64> = new Slice<GoInt64>().nil();
	if (_tmp.length >= ((2 : GoInt)) * _textMax) {
		{
			final __tmp__0 = _tmp.__slice__(0, _textMax);
			final __tmp__1 = _tmp.__slice__(_textMax, ((2 : GoInt)) * _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
		_freq[((0 : GoInt))] = -((1 : GoUnTypedInt));
	} else {
		{
			final __tmp__0 = new Slice<GoInt64>().nil();
			final __tmp__1 = _tmp.__slice__(0, _textMax);
			_freq = __tmp__0;
			_bucket = __tmp__1;
		};
	};
	var _numLMS:GoInt = _placeLMS_64(_text, _sa, _freq, _bucket);
	if (_numLMS <= ((1 : GoInt))) {} else {
		_induceSubL_64(_text, _sa, _freq, _bucket);
		_induceSubS_64(_text, _sa, _freq, _bucket);
		_length_64(_text, _sa, _numLMS);
		var _maxID:GoInt = _assignID_64(_text, _sa, _numLMS);
		if (_maxID < _numLMS) {
			_map_64(_sa, _numLMS);
			_recurse_64(_sa, _tmp, _numLMS, _maxID);
			_unmap_64(_text, _sa, _numLMS);
		} else {
			Go.copy(_sa, _sa.__slice__(_sa.length - _numLMS));
		};
		_expand_64(_text, _freq, _bucket, _sa, _numLMS);
	};
	_induceL_64(_text, _sa, _freq, _bucket);
	_induceS_64(_text, _sa, _freq, _bucket);
	_tmp[((0 : GoInt))] = -((1 : GoUnTypedInt));
}

function _freq_8_64(_text:Slice<GoByte>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Slice<GoInt64> {
	if (_freq != null && !_freq.isNil() && _freq[((0 : GoInt))] >= ((0 : GoInt64))) {
		return _freq;
	};
	if (_freq == null || _freq.isNil()) {
		_freq = _bucket;
	};
	_freq = _freq.__slice__(0, ((256 : GoInt)));
	{
		var _i;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_freq[_i] = ((0 : GoInt64));
		};
	};
	for (_c in _text) {
		_freq[_c]++;
	};
	return _freq;
}

function _freq_32(_text:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Slice<GoInt32> {
	if (_freq != null && !_freq.isNil() && _freq[((0 : GoInt))] >= ((0 : GoInt32))) {
		return _freq;
	};
	if (_freq == null || _freq.isNil()) {
		_freq = _bucket;
	};
	{
		var _i;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_freq[_i] = ((0 : GoInt32));
		};
	};
	for (_c in _text) {
		_freq[_c]++;
	};
	return _freq;
}

function _freq_64(_text:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Slice<GoInt64> {
	if (_freq != null && !_freq.isNil() && _freq[((0 : GoInt))] >= ((0 : GoInt64))) {
		return _freq;
	};
	if (_freq == null || _freq.isNil()) {
		_freq = _bucket;
	};
	{
		var _i;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_freq[_i] = ((0 : GoInt64));
		};
	};
	for (_c in _text) {
		_freq[_c]++;
	};
	return _freq;
}

function _bucketMin_8_64(_text:Slice<GoByte>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_freq = _freq_8_64(_text, _freq, _bucket);
	_freq = _freq.__slice__(0, ((256 : GoInt)));
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _total:GoInt64 = ((((0 : GoInt64)) : GoInt64));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_bucket[_i] = _total;
			_total = _total + (_n);
		};
	};
}

function _bucketMin_32(_text:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_freq = _freq_32(_text, _freq, _bucket);
	var _total:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_bucket[_i] = _total;
			_total = _total + (_n);
		};
	};
}

function _bucketMin_64(_text:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_freq = _freq_64(_text, _freq, _bucket);
	var _total:GoInt64 = ((((0 : GoInt64)) : GoInt64));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_bucket[_i] = _total;
			_total = _total + (_n);
		};
	};
}

function _bucketMax_8_64(_text:Slice<GoByte>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_freq = _freq_8_64(_text, _freq, _bucket);
	_freq = _freq.__slice__(0, ((256 : GoInt)));
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _total:GoInt64 = ((((0 : GoInt64)) : GoInt64));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_total = _total + (_n);
			_bucket[_i] = _total;
		};
	};
}

function _bucketMax_32(_text:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_freq = _freq_32(_text, _freq, _bucket);
	var _total:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_total = _total + (_n);
			_bucket[_i] = _total;
		};
	};
}

function _bucketMax_64(_text:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_freq = _freq_64(_text, _freq, _bucket);
	var _total:GoInt64 = ((((0 : GoInt64)) : GoInt64));
	{
		var _i;
		var _n;
		for (_obj in _freq.keyValueIterator()) {
			_i = _obj.key;
			_n = _obj.value;
			_total = _total + (_n);
			_bucket[_i] = _total;
		};
	};
}

function _placeLMS_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):GoInt {
	_bucketMax_8_64(_text, _freq, _bucket);
	var _numLMS:GoInt = ((0 : GoInt));
	var _lastB:GoInt64 = ((-((1 : GoUnTypedInt)) : GoInt64));
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _c0:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_c1:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _b:GoInt64 = _bucket[_c1] - ((1 : GoInt64));
				_bucket[_c1] = _b;
				_sa[_b] = (((_i + ((1 : GoInt))) : GoInt64));
				_lastB = _b;
				_numLMS++;
			};
		});
	};
	if (_numLMS > ((1 : GoInt))) {
		_sa[_lastB] = ((0 : GoInt64));
	};
	return _numLMS;
}

function _placeLMS_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):GoInt {
	_bucketMax_32(_text, _freq, _bucket);
	var _numLMS:GoInt = ((0 : GoInt));
	var _lastB:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
	var _c0:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_c1:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _b:GoInt32 = _bucket[_c1] - ((1 : GoInt32));
				_bucket[_c1] = _b;
				_sa[_b] = (((_i + ((1 : GoInt))) : GoInt32));
				_lastB = _b;
				_numLMS++;
			};
		});
	};
	if (_numLMS > ((1 : GoInt))) {
		_sa[_lastB] = ((0 : GoInt32));
	};
	return _numLMS;
}

function _placeLMS_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):GoInt {
	_bucketMax_64(_text, _freq, _bucket);
	var _numLMS:GoInt = ((0 : GoInt));
	var _lastB:GoInt64 = ((-((1 : GoUnTypedInt)) : GoInt64));
	var _c0:GoInt64 = ((((0 : GoInt64)) : GoInt64)),
		_c1:GoInt64 = ((((0 : GoInt64)) : GoInt64)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _b:GoInt64 = _bucket[_c1] - ((1 : GoInt64));
				_bucket[_c1] = _b;
				_sa[_b] = (((_i + ((1 : GoInt))) : GoInt64));
				_lastB = _b;
				_numLMS++;
			};
		});
	};
	if (_numLMS > ((1 : GoInt))) {
		_sa[_lastB] = ((0 : GoInt64));
	};
	return _numLMS;
}

function _induceSubL_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMin_8_64(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoUInt8 = _text[_k - ((1 : GoInt))], _c1:GoUInt8 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoUInt8 = _c1;
	var _b:GoInt64 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt64));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			if (_j < ((0 : GoInt))) {
				_sa[_i] = ((-_j : GoInt64));
				continue;
			};
			_sa[_i] = ((0 : GoInt64));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c0:GoUInt8 = _text[_k - ((1 : GoInt))],
				_c1:GoUInt8 = _text[_k];
			if (_c0 < _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt64));
			_b++;
		});
	};
}

function _induceSubL_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMin_32(_text, _freq, _bucket);
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoInt32 = _text[_k - ((1 : GoInt))], _c1:GoInt32 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoInt32 = _c1;
	var _b:GoInt32 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt32));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			if (_j < ((0 : GoInt))) {
				_sa[_i] = ((-_j : GoInt32));
				continue;
			};
			_sa[_i] = ((0 : GoInt32));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c0:GoInt32 = _text[_k - ((1 : GoInt))],
				_c1:GoInt32 = _text[_k];
			if (_c0 < _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt32));
			_b++;
		});
	};
}

function _induceSubL_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMin_64(_text, _freq, _bucket);
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoInt64 = _text[_k - ((1 : GoInt))], _c1:GoInt64 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoInt64 = _c1;
	var _b:GoInt64 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt64));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			if (_j < ((0 : GoInt))) {
				_sa[_i] = ((-_j : GoInt64));
				continue;
			};
			_sa[_i] = ((0 : GoInt64));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c0:GoInt64 = _text[_k - ((1 : GoInt))],
				_c1:GoInt64 = _text[_k];
			if (_c0 < _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt64));
			_b++;
		});
	};
}

function _induceSubS_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMax_8_64(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _cB:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
	var _b:GoInt64 = _bucket[_cB];
	var _top:GoInt = _sa.length;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			_sa[_i] = ((0 : GoInt64));
			if (_j < ((0 : GoInt))) {
				_top--;
				_sa[_top] = ((-_j : GoInt64));
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoUInt8 = _text[_k];
			var _c0:GoUInt8 = _text[_k - ((1 : GoInt))];
			if (_c0 > _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt64));
		});
	};
}

function _induceSubS_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMax_32(_text, _freq, _bucket);
	var _cB:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	var _b:GoInt32 = _bucket[_cB];
	var _top:GoInt = _sa.length;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			_sa[_i] = ((0 : GoInt32));
			if (_j < ((0 : GoInt))) {
				_top--;
				_sa[_top] = ((-_j : GoInt32));
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoInt32 = _text[_k];
			var _c0:GoInt32 = _text[_k - ((1 : GoInt))];
			if (_c0 > _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt32));
		});
	};
}

function _induceSubS_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMax_64(_text, _freq, _bucket);
	var _cB:GoInt64 = ((((0 : GoInt64)) : GoInt64));
	var _b:GoInt64 = _bucket[_cB];
	var _top:GoInt = _sa.length;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j == ((0 : GoInt))) {
				continue;
			};
			_sa[_i] = ((0 : GoInt64));
			if (_j < ((0 : GoInt))) {
				_top--;
				_sa[_top] = ((-_j : GoInt64));
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoInt64 = _text[_k];
			var _c0:GoInt64 = _text[_k - ((1 : GoInt))];
			if (_c0 > _c1) {
				_k = -_k;
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt64));
		});
	};
}

function _length_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	var _end:GoInt = ((0 : GoInt));
	var _cx:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
	var _c0:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_c1:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			_cx = (_cx << ((8 : GoUnTypedInt))) | (((_c1 + ((1 : GoUInt8))) : GoUInt64));
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _j:GoInt = _i + ((1 : GoInt));
				var _code:GoInt64 = ((0 : GoInt64));
				if (_end == ((0 : GoInt))) {
					_code = ((0 : GoInt64));
				} else {
					_code = (((_end - _j) : GoInt64));
					if (_code <= ((64 : GoUnTypedInt)) / ((8 : GoUnTypedInt)) && -1 ^ _cx >= ((_text.length : GoUInt64))) {
						_code = (((-1 ^ _cx) : GoInt64));
					};
				};
				_sa[(_j >> ((1 : GoUnTypedInt)))] = _code;
				_end = _j + ((1 : GoInt));
				_cx = (((_c1 + ((1 : GoUInt8))) : GoUInt64));
			};
		});
	};
}

function _length_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	var _end:GoInt = ((0 : GoInt));
	var _c0:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_c1:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _j:GoInt = _i + ((1 : GoInt));
				var _code:GoInt32 = ((0 : GoInt32));
				if (_end == ((0 : GoInt))) {
					_code = ((0 : GoInt32));
				} else {
					_code = (((_end - _j) : GoInt32));
				};
				_sa[(_j >> ((1 : GoUnTypedInt)))] = _code;
				_end = _j + ((1 : GoInt));
			};
		});
	};
}

function _length_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	var _end:GoInt = ((0 : GoInt));
	var _c0:GoInt64 = ((((0 : GoInt64)) : GoInt64)),
		_c1:GoInt64 = ((((0 : GoInt64)) : GoInt64)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				var _j:GoInt = _i + ((1 : GoInt));
				var _code:GoInt64 = ((0 : GoInt64));
				if (_end == ((0 : GoInt))) {
					_code = ((0 : GoInt64));
				} else {
					_code = (((_end - _j) : GoInt64));
				};
				_sa[(_j >> ((1 : GoUnTypedInt)))] = _code;
				_end = _j + ((1 : GoInt));
			};
		});
	};
}

function _assignID_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _numLMS:GoInt):GoInt {
	return stdgo.internal.Macro.controlFlow({
		var _id:GoInt = ((0 : GoInt));
		var _lastLen:GoInt64 = ((-((1 : GoUnTypedInt)) : GoInt64));
		var _lastPos:GoInt64 = ((((0 : GoInt64)) : GoInt64));
		for (_j in _sa.__slice__(_sa.length - _numLMS)) {
			var _n:GoInt64 = _sa[_j / ((2 : GoInt64))];
			if (_n != _lastLen) {
				@:goto "New";
			};
			if (((_n : GoUInt64)) >= ((_text.length : GoUInt64))) {
				@:goto "Same";
			};
			{
				var _n:GoInt = ((_n : GoInt));
				var _this:Slice<GoUInt8> = _text.__slice__(_j).__slice__(0, _n);
				var _last:Slice<GoUInt8> = _text.__slice__(_lastPos).__slice__(0, _n);
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _n, _i++, {
						if (_this[_i] != _last[_i]) {
							@:goto "New";
						};
					});
				};
				@:goto "Same";
			};
			@:label("New") _id++;
			_lastPos = _j;
			_lastLen = _n;
			@:label("Same") _sa[_j / ((2 : GoInt64))] = ((_id : GoInt64));
		};
		return _id;
	});
}

function _assignID_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _numLMS:GoInt):GoInt {
	return stdgo.internal.Macro.controlFlow({
		var _id:GoInt = ((0 : GoInt));
		var _lastLen:GoInt32 = ((-((1 : GoUnTypedInt)) : GoInt32));
		var _lastPos:GoInt32 = ((((0 : GoInt32)) : GoInt32));
		for (_j in _sa.__slice__(_sa.length - _numLMS)) {
			var _n:GoInt32 = _sa[_j / ((2 : GoInt32))];
			if (_n != _lastLen) {
				@:goto "New";
			};
			if (((_n : GoUInt32)) >= ((_text.length : GoUInt32))) {
				@:goto "Same";
			};
			{
				var _n:GoInt = ((_n : GoInt));
				var _this:Slice<GoInt32> = _text.__slice__(_j).__slice__(0, _n);
				var _last:Slice<GoInt32> = _text.__slice__(_lastPos).__slice__(0, _n);
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _n, _i++, {
						if (_this[_i] != _last[_i]) {
							@:goto "New";
						};
					});
				};
				@:goto "Same";
			};
			@:label("New") _id++;
			_lastPos = _j;
			_lastLen = _n;
			@:label("Same") _sa[_j / ((2 : GoInt32))] = ((_id : GoInt32));
		};
		return _id;
	});
}

function _assignID_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _numLMS:GoInt):GoInt {
	return stdgo.internal.Macro.controlFlow({
		var _id:GoInt = ((0 : GoInt));
		var _lastLen:GoInt64 = ((-((1 : GoUnTypedInt)) : GoInt64));
		var _lastPos:GoInt64 = ((((0 : GoInt64)) : GoInt64));
		for (_j in _sa.__slice__(_sa.length - _numLMS)) {
			var _n:GoInt64 = _sa[_j / ((2 : GoInt64))];
			if (_n != _lastLen) {
				@:goto "New";
			};
			if (((_n : GoUInt64)) >= ((_text.length : GoUInt64))) {
				@:goto "Same";
			};
			{
				var _n:GoInt = ((_n : GoInt));
				var _this:Slice<GoInt64> = _text.__slice__(_j).__slice__(0, _n);
				var _last:Slice<GoInt64> = _text.__slice__(_lastPos).__slice__(0, _n);
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _n, _i++, {
						if (_this[_i] != _last[_i]) {
							@:goto "New";
						};
					});
				};
				@:goto "Same";
			};
			@:label("New") _id++;
			_lastPos = _j;
			_lastLen = _n;
			@:label("Same") _sa[_j / ((2 : GoInt64))] = ((_id : GoInt64));
		};
		return _id;
	});
}

function _map_64(_sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	var _w:GoInt = _sa.length;
	{
		var _i:GoInt = _sa.length / ((2 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt64 = _sa[_i];
			if (_j > ((0 : GoInt64))) {
				_w--;
				_sa[_w] = _j - ((1 : GoInt64));
			};
		});
	};
}

function _recurse_64(_sa:Slice<GoInt64>, _oldTmp:Slice<GoInt64>, _numLMS:GoInt, _maxID:GoInt):Void {
	var _dst:Slice<GoInt64> = _sa.__slice__(0, _numLMS),
		_saTmp:Slice<GoInt64> = _sa.__slice__(_numLMS, _sa.length - _numLMS),
		_text:Slice<GoInt64> = _sa.__slice__(_sa.length - _numLMS);
	var _tmp:Slice<GoInt64> = _oldTmp;
	if (_tmp.length < _saTmp.length) {
		_tmp = _saTmp;
	};
	if (_tmp.length < _numLMS) {
		var _n:GoInt = _maxID;
		if (_n < _numLMS / ((2 : GoInt))) {
			_n = _numLMS / ((2 : GoInt));
		};
		_tmp = new Slice<GoInt64>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoInt64))]);
	};
	{
		var _i;
		for (_obj in _dst.keyValueIterator()) {
			_i = _obj.key;
			_dst[_i] = ((0 : GoInt64));
		};
	};
	_sais_64(_text, _maxID, _dst, _tmp);
}

function _unmap_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	var _unmap:Slice<GoInt64> = _sa.__slice__(_sa.length - _numLMS);
	var _j:GoInt = _unmap.length;
	var _c0:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_c1:GoUInt8 = ((((0 : GoUInt8)) : GoByte)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				_j--;
				_unmap[_j] = (((_i + ((1 : GoInt))) : GoInt64));
			};
		});
	};
	_sa = _sa.__slice__(0, _numLMS);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			_sa[_i] = _unmap[_sa[_i]];
		});
	};
}

function _unmap_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	var _unmap:Slice<GoInt32> = _sa.__slice__(_sa.length - _numLMS);
	var _j:GoInt = _unmap.length;
	var _c0:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_c1:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				_j--;
				_unmap[_j] = (((_i + ((1 : GoInt))) : GoInt32));
			};
		});
	};
	_sa = _sa.__slice__(0, _numLMS);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			_sa[_i] = _unmap[_sa[_i]];
		});
	};
}

function _unmap_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	var _unmap:Slice<GoInt64> = _sa.__slice__(_sa.length - _numLMS);
	var _j:GoInt = _unmap.length;
	var _c0:GoInt64 = ((((0 : GoInt64)) : GoInt64)),
		_c1:GoInt64 = ((((0 : GoInt64)) : GoInt64)),
		_isTypeS:Bool = false;
	{
		var _i:GoInt = _text.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			{
				final __tmp__0 = _text[_i];
				final __tmp__1 = _c0;
				_c0 = __tmp__0;
				_c1 = __tmp__1;
			};
			if (_c0 < _c1) {
				_isTypeS = true;
			} else if (_c0 > _c1 && _isTypeS) {
				_isTypeS = false;
				_j--;
				_unmap[_j] = (((_i + ((1 : GoInt))) : GoInt64));
			};
		});
	};
	_sa = _sa.__slice__(0, _numLMS);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			_sa[_i] = _unmap[_sa[_i]];
		});
	};
}

function _expand_8_64(_text:Slice<GoByte>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>, _sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	_bucketMax_8_64(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _x:GoInt = _numLMS - ((1 : GoInt));
	var _saX:GoInt64 = _sa[_x];
	var _c:GoUInt8 = _text[_saX];
	var _b:GoInt64 = _bucket[_c] - ((1 : GoInt64));
	_bucket[_c] = _b;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_i != ((_b : GoInt))) {
				_sa[_i] = ((0 : GoInt64));
				continue;
			};
			_sa[_i] = _saX;
			if (_x > ((0 : GoInt))) {
				_x--;
				_saX = _sa[_x];
				_c = _text[_saX];
				_b = _bucket[_c] - ((1 : GoInt64));
				_bucket[_c] = _b;
			};
		});
	};
}

function _expand_32(_text:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>, _sa:Slice<GoInt32>, _numLMS:GoInt):Void {
	_bucketMax_32(_text, _freq, _bucket);
	var _x:GoInt = _numLMS - ((1 : GoInt));
	var _saX:GoInt32 = _sa[_x];
	var _c:GoInt32 = _text[_saX];
	var _b:GoInt32 = _bucket[_c] - ((1 : GoInt32));
	_bucket[_c] = _b;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_i != ((_b : GoInt))) {
				_sa[_i] = ((0 : GoInt32));
				continue;
			};
			_sa[_i] = _saX;
			if (_x > ((0 : GoInt))) {
				_x--;
				_saX = _sa[_x];
				_c = _text[_saX];
				_b = _bucket[_c] - ((1 : GoInt32));
				_bucket[_c] = _b;
			};
		});
	};
}

function _expand_64(_text:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>, _sa:Slice<GoInt64>, _numLMS:GoInt):Void {
	_bucketMax_64(_text, _freq, _bucket);
	var _x:GoInt = _numLMS - ((1 : GoInt));
	var _saX:GoInt64 = _sa[_x];
	var _c:GoInt64 = _text[_saX];
	var _b:GoInt64 = _bucket[_c] - ((1 : GoInt64));
	_bucket[_c] = _b;
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_i != ((_b : GoInt))) {
				_sa[_i] = ((0 : GoInt64));
				continue;
			};
			_sa[_i] = _saX;
			if (_x > ((0 : GoInt))) {
				_x--;
				_saX = _sa[_x];
				_c = _text[_saX];
				_b = _bucket[_c] - ((1 : GoInt64));
				_bucket[_c] = _b;
			};
		});
	};
}

function _induceL_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMin_8_64(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoUInt8 = _text[_k - ((1 : GoInt))], _c1:GoUInt8 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoUInt8 = _c1;
	var _b:GoInt64 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt64));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j <= ((0 : GoInt))) {
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoUInt8 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoUInt8 = _text[_k - ((1 : GoInt))];
					if (_c0 < _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt64));
			_b++;
		});
	};
}

function _induceL_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMin_32(_text, _freq, _bucket);
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoInt32 = _text[_k - ((1 : GoInt))], _c1:GoInt32 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoInt32 = _c1;
	var _b:GoInt32 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt32));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j <= ((0 : GoInt))) {
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoInt32 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoInt32 = _text[_k - ((1 : GoInt))];
					if (_c0 < _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt32));
			_b++;
		});
	};
}

function _induceL_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMin_64(_text, _freq, _bucket);
	var _k:GoInt = _text.length - ((1 : GoInt));
	var _c0:GoInt64 = _text[_k - ((1 : GoInt))], _c1:GoInt64 = _text[_k];
	if (_c0 < _c1) {
		_k = -_k;
	};
	var _cB:GoInt64 = _c1;
	var _b:GoInt64 = _bucket[_cB];
	_sa[_b] = ((_k : GoInt64));
	_b++;
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _sa.length, _i++, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j <= ((0 : GoInt))) {
				continue;
			};
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoInt64 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoInt64 = _text[_k - ((1 : GoInt))];
					if (_c0 < _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_sa[_b] = ((_k : GoInt64));
			_b++;
		});
	};
}

function _induceS_8_64(_text:Slice<GoByte>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMax_8_64(_text, _freq, _bucket);
	_bucket = _bucket.__slice__(0, ((256 : GoInt)));
	var _cB:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
	var _b:GoInt64 = _bucket[_cB];
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j >= ((0 : GoInt))) {
				continue;
			};
			_j = -_j;
			_sa[_i] = ((_j : GoInt64));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoUInt8 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoUInt8 = _text[_k - ((1 : GoInt))];
					if (_c0 <= _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt64));
		});
	};
}

function _induceS_32(_text:Slice<GoInt32>, _sa:Slice<GoInt32>, _freq:Slice<GoInt32>, _bucket:Slice<GoInt32>):Void {
	_bucketMax_32(_text, _freq, _bucket);
	var _cB:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	var _b:GoInt32 = _bucket[_cB];
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j >= ((0 : GoInt))) {
				continue;
			};
			_j = -_j;
			_sa[_i] = ((_j : GoInt32));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoInt32 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoInt32 = _text[_k - ((1 : GoInt))];
					if (_c0 <= _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt32));
		});
	};
}

function _induceS_64(_text:Slice<GoInt64>, _sa:Slice<GoInt64>, _freq:Slice<GoInt64>, _bucket:Slice<GoInt64>):Void {
	_bucketMax_64(_text, _freq, _bucket);
	var _cB:GoInt64 = ((((0 : GoInt64)) : GoInt64));
	var _b:GoInt64 = _bucket[_cB];
	{
		var _i:GoInt = _sa.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _j:GoInt = ((_sa[_i] : GoInt));
			if (_j >= ((0 : GoInt))) {
				continue;
			};
			_j = -_j;
			_sa[_i] = ((_j : GoInt64));
			var _k:GoInt = _j - ((1 : GoInt));
			var _c1:GoInt64 = _text[_k];
			if (_k > ((0 : GoInt))) {
				{
					var _c0:GoInt64 = _text[_k - ((1 : GoInt))];
					if (_c0 <= _c1) {
						_k = -_k;
					};
				};
			};
			if (_cB != _c1) {
				_bucket[_cB] = _b;
				_cB = _c1;
				_b = _bucket[_cB];
			};
			_b--;
			_sa[_b] = ((_k : GoInt64));
		});
	};
}

/**
	// New creates a new Index for data.
	// Index creation time is O(N) for N = len(data).
**/
function new_(_data:Slice<GoByte>):Pointer<Index> {
	var _ix:Pointer<Index> = Go.pointer((({_data: _data, _sa: new T_ints()} : Index)));
	if (_data.length <= _maxData32) {
		_ix.value._sa._int32 = new Slice<GoInt32>(...[for (i in 0...((_data.length : GoInt)).toBasic()) ((0 : GoInt32))]);
		_text_32(_data, _ix.value._sa._int32);
	} else {
		_ix.value._sa._int64 = new Slice<GoInt64>(...[for (i in 0...((_data.length : GoInt)).toBasic()) ((0 : GoInt64))]);
		_text_64(_data, _ix.value._sa._int64);
	};
	return _ix;
}

/**
	// writeInt writes an int x to w using buf to buffer the write.
**/
function _writeInt(_w:stdgo.io.Io.Writer, _buf:Slice<GoByte>, _x:GoInt):Error {
	stdgo.encoding.binary.Binary.putVarint(_buf, ((_x : GoInt64)));
	var __tmp__ = _w.write(_buf.__slice__(((0 : GoInt)), stdgo.encoding.binary.Binary.maxVarintLen64)),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

/**
	// readInt reads an int x from r using buf to buffer the read and returns x.
**/
function _readInt(_r:stdgo.io.Io.Reader, _buf:Slice<GoByte>):{var _0:GoInt64; var _1:Error;} {
	var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(((0 : GoInt)), stdgo.encoding.binary.Binary.maxVarintLen64)),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	var __tmp__ = stdgo.encoding.binary.Binary.varint(_buf),
		_x:GoInt64 = __tmp__._0,
		_:GoInt = __tmp__._1;
	return {_0: _x, _1: _err};
}

/**
	// writeSlice writes data[:n] to w and returns n.
	// It uses buf to buffer the write.
**/
function _writeSlice(_w:stdgo.io.Io.Writer, _buf:Slice<GoByte>, _data:T_ints):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	var _p:GoInt = stdgo.encoding.binary.Binary.maxVarintLen64;
	var _m:GoInt = _data._len();
	Go.cfor(_n < _m && _p + stdgo.encoding.binary.Binary.maxVarintLen64 <= _buf.length, _n++, {
		_p = _p + (stdgo.encoding.binary.Binary.putUvarint(_buf.__slice__(_p), ((_data._get(_n) : GoUInt64))));
	});
	stdgo.encoding.binary.Binary.putVarint(_buf, ((_p : GoInt64)));
	{
		var __tmp__ = _w.write(_buf.__slice__(((0 : GoInt)), _p));
		_err = __tmp__._1;
	};
	return {_0: _n, _1: _err};
}

/**
	// readSlice reads data[:n] from r and returns n.
	// It uses buf to buffer the read.
**/
function _readSlice(_r:stdgo.io.Io.Reader, _buf:Slice<GoByte>, _data:T_ints):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	var _size64:GoInt64 = ((0 : GoInt64));
	{
		var __tmp__ = _readInt(_r, _buf);
		_size64 = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		return {_0: _n, _1: _err};
	};
	if (((((_size64 : GoInt)) : GoInt64)) != _size64 || ((_size64 : GoInt)) < ((0 : GoInt))) {
		return {_0: ((0 : GoInt)), _1: _errTooBig};
	};
	var _size:GoInt = ((_size64 : GoInt));
	{
		{
			var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(stdgo.encoding.binary.Binary.maxVarintLen64, _size));
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _n, _1: _err};
		};
	};
	{
		var _p:GoInt = stdgo.encoding.binary.Binary.maxVarintLen64;
		Go.cfor(_p < _size, _n++, {
			var __tmp__ = stdgo.encoding.binary.Binary.uvarint(_buf.__slice__(_p)),
				_x:GoUInt64 = __tmp__._0,
				_w:GoInt = __tmp__._1;
			_data._set(_n, ((_x : GoInt64)));
			_p = _p + (_w);
		});
	};
	return {_0: _n, _1: _err};
}

class Index_extension_fields {
	public function read(__tmp__, _r:stdgo.io.Io.Reader):Error
		return __tmp__.read(_r);

	public function write(__tmp__, _w:stdgo.io.Io.Writer):Error
		return __tmp__.write(_w);

	public function bytes(__tmp__):Slice<GoByte>
		return __tmp__.bytes();

	public function _at(__tmp__, _i:GoInt):Slice<GoByte>
		return __tmp__._at(_i);

	public function _lookupAll(__tmp__, _s:Slice<GoByte>):T_ints
		return __tmp__._lookupAll(_s);

	public function lookup(__tmp__, _s:Slice<GoByte>, _n:GoInt):Slice<GoInt>
		return __tmp__.lookup(_s, _n);

	public function findAllIndex(__tmp__, _r:Pointer<stdgo.regexp.Regexp.Regexp>, _n:GoInt):Slice<Slice<GoInt>>
		return __tmp__.findAllIndex(_r, _n);
}

class T_ints_extension_fields {
	public function _len(__tmp__):GoInt
		return __tmp__._len();

	public function _get(__tmp__, _i:GoInt):GoInt64
		return __tmp__._get(_i);

	public function _set(__tmp__, _i:GoInt, _v:GoInt64):Void
		__tmp__._set(_i, _v);

	public function _slice(__tmp__, _i:GoInt, _j:GoInt):T_ints
		return __tmp__._slice(_i, _j);
}
