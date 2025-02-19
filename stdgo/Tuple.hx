package stdgo;
/**
	`Tuple` is a tuple with two values. It maps to an anonymous object with fields `_0` and `_1`.
	You can also access with `left` and `right`.
*/
typedef Tuple<T0, T1> = Tuple2<T0, T1>;

/**
	`Tuple1` is a tuple with one value. It maps directly to its own T0 types.
*/
@:dox(hide)
abstract Tuple1<T0>(T0) from T0 to T0 {
	/**
		Constructs an instance of `Tuple1` passing a value T as an argument.
	*/
	inline public function new(_0:T0)
		this = _0;

	public var _0(get, never):T0;

	inline function get__0()
		return this;

	/**
		Creates a new Tuple with the addition of the extra value `v`. The Tuple
		of course increase in size by one.
	*/
	inline public function with<T1>(v:T1)
		return new Tuple2(_0, v);

	/**
		Provides a string representation of the Tuple
	*/
	inline public function toString()
		return 'Tuple1(${this})';

	@:from inline static public function arrayToTuple<T>(v:Array<T>)
		return new Tuple1(v[0]);
}

/**
	`Tuple2` is a tuple with two values. It maps to an anonymous object with fields `_0` and `_1`.
*/
@:forward(_0, _1)
@:dox(hide)
abstract Tuple2<T0, T1>({_0:T0, _1:T1}) from {_0:T0, _1:T1} to {_0:T0, _1:T1} {
	/**
		Constructs an instance of `Tuple2` the 2 required value. This is required
		because Tuple2.new.bind(...) crashes the compiler.
	*/
	inline public static function of<A, B>(_0:A, _1:B):Tuple2<A, B>
		return new Tuple2(_0, _1);

	/**
		Constructs an instance of `Tuple2` the 2 required value.
	*/
	inline public function new(_0:T0, _1:T1)
		this = {_0: _0, _1: _1};

	/**
		Alias for `_0`.
	*/
	public var left(get, never):T0;

	/**
		Alias for `_1`.
	*/
	public var right(get, never):T1;

	inline function get_left()
		return this._0;

	inline function get_right()
		return this._1;

	/**
		`flip` returns a new Tuple with the values in reverse order.
	*/
	inline public function flip():Tuple2<T1, T0>
		return {_0: this._1, _1: this._0};

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the first
		on the left.
	*/
	inline public function dropLeft()
		return new Tuple1(this._1);

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the last
		on the right.
	*/
	inline public function dropRight()
		return new Tuple1(this._0);

	/**
		Creates a new Tuple with the addition of the extra value `v`. The Tuple
		of course increase in size by one.
	*/
	inline public function with<T2>(v:T2)
		return new Tuple3(this._0, this._1, v);

	/**
		Provides a string representation of the Tuple
	*/
	inline public function toString()
		return 'Tuple2(${this._0},${this._1})';

	public function map<T2>(f:T1->T2):Tuple2<T0, T2>
		return new Tuple2(this._0, f(this._1));

	static public function squeeze<T1, T2, R>(f:T1->T2->R):Tuple2<T1, T2>->R {
		return function(tp) {
			return f(tp._0, tp._1);
		}
	}

	@:from inline static public function arrayToTuple2<T>(v:Array<T>):Tuple2<T, T>
		return new Tuple2(v[0], v[1]);
}

/**
	`Tuple3` is a tuple with three values. It maps to an anonymous object with fields `_0`, `_1`, and `_2`.
*/
@:forward(_0, _1, _2)
@:dox(hide)
abstract Tuple3<T0, T1, T2>({_0:T0, _1:T1, _2:T2}) from {_0:T0, _1:T1, _2:T2} to {_0:T0, _1:T1, _2:T2} {
	/**
		Static constructor, required to work around Haxe compiler bug.
	*/
	inline public static function of<T0, T1, T2>(_0:T0, _1:T1, _2:T2):Tuple3<T0, T1, T2>
		return new Tuple3(_0, _1, _2);

	/**
		Constructs an instance of `Tuple3` the 3 required value.
	*/
	inline public function new(_0:T0, _1:T1, _2:T2)
		this = {_0: _0, _1: _1, _2: _2};

	/**
		`flip` returns a new Tuple with the values in reverse order.
	*/
	inline public function flip():Tuple3<T2, T1, T0>
		return {_0: this._2, _1: this._1, _2: this._0};

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the first
		on the left.
	*/
	inline public function dropLeft()
		return new Tuple2(this._1, this._2);

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the last
		on the right.
	*/
	inline public function dropRight()
		return new Tuple2(this._0, this._1);

	/**
		Creates a new Tuple with the addition of the extra value `v`. The Tuple
		of course increase in size by one.
	*/
	inline public function with<T3>(v:T3)
		return new Tuple4(this._0, this._1, this._2, v);

	/**
		Provides a string representation of the Tuple
	*/
	inline public function toString()
		return 'Tuple3(${this._0},${this._1},${this._2})';

	@:from inline static public function arrayToTuple3<T>(v:Array<T>):Tuple3<T, T, T>
		return new Tuple3(v[0], v[1], v[2]);

	public function map<T3>(f:T2->T3):Tuple3<T0, T1, T3>
		return new Tuple3(this._0, this._1, f(this._2));
}

/**
	`Tuple4` is a tuple with four values. It maps to an anonymous object with fields `_0`, `_1`, `_2`, and `_3`.
*/
@:forward(_0, _1, _2, _3)
@:dox(hide)
abstract Tuple4<T0, T1, T2, T3>({
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3
}) from {
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3
} to {
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3
} {
	/**
		Static constructor, required to work around Haxe compiler bug.
	*/
	inline public static function of<T0, T1, T2, T3>(_0:T0, _1:T1, _2:T2, _3:T3):Tuple4<T0, T1, T2, T3>
		return new Tuple4(_0, _1, _2, _3);

	/**
		Constructs an instance of `Tuple4` the 4 required value.
	*/
	inline public function new(_0:T0, _1:T1, _2:T2, _3:T3)
		this = {
			_0: _0,
			_1: _1,
			_2: _2,
			_3: _3
		};

	/**
		`flip` returns a new Tuple with the values in reverse order.
	*/
	inline public function flip():Tuple4<T3, T2, T1, T0>
		return {
			_0: this._3,
			_1: this._2,
			_2: this._1,
			_3: this._0
		};

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the first
		on the left.
	*/
	inline public function dropLeft()
		return new Tuple3(this._1, this._2, this._3);

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the last
		on the right.
	*/
	inline public function dropRight()
		return new Tuple3(this._0, this._1, this._2);

	/**
		Creates a new Tuple with the addition of the extra value `v`. The Tuple
		of course increase in size by one.
	*/
	inline public function with<T4>(v:T4)
		return new Tuple5(this._0, this._1, this._2, this._3, v);

	/**
		Provides a string representation of the Tuple
	*/
	inline public function toString()
		return 'Tuple4(${this._0},${this._1},${this._2},${this._3})';

	@:from inline static public function arrayToTuple4<T>(v:Array<T>):Tuple4<T, T, T, T>
		return new Tuple4(v[0], v[1], v[2], v[3]);
}

/**
	`Tuple5` is a tuple with five values. It maps to an anonymous object with fields `_0`, `_1`, `_2`, `_4`, and `_5`.
*/
@:forward(_0, _1, _2, _3, _4)
@:dox(hide)
abstract Tuple5<T0, T1, T2, T3, T4>({
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3,
	_4:T4
}) from {
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3,
	_4:T4
} to {
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3,
	_4:T4
} {
	/**
		Static constructor, required to work around Haxe compiler bug.
	*/
	inline public static function of<T0, T1, T2, T3, T4>(_0:T0, _1:T1, _2:T2, _3:T3, _4:T4):Tuple5<T0, T1, T2, T3, T4>
		return new Tuple5(_0, _1, _2, _3, _4);

	/**
		Constructs an instance of `Tuple5` the 5 required value.
	*/
	inline public function new(_0:T0, _1:T1, _2:T2, _3:T3, _4:T4)
		this = {
			_0: _0,
			_1: _1,
			_2: _2,
			_3: _3,
			_4: _4
		};

	/**
		`flip` returns a new Tuple with the values in reverse order.
	*/
	inline public function flip():Tuple5<T4, T3, T2, T1, T0>
		return {
			_0: this._4,
			_1: this._3,
			_2: this._2,
			_3: this._1,
			_4: this._0
		};

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the first
		on the left.
	*/
	inline public function dropLeft()
		return new Tuple4(this._1, this._2, this._3, this._4);

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the last
		on the right.
	*/
	inline public function dropRight()
		return new Tuple4(this._0, this._1, this._2, this._3);

	/**
		Creates a new Tuple with the addition of the extra value `v`. The Tuple
		of course increase in size by one.
	*/
	inline public function with<T5>(v:T5)
		return new Tuple6(this._0, this._1, this._2, this._3, this._4, v);

	/**
		Provides a string representation of the Tuple
	*/
	inline public function toString()
		return 'Tuple5(${this._0},${this._1},${this._2},${this._3},${this._4})';

	@:from inline static public function arrayToTuple5<T>(v:Array<T>):Tuple5<T, T, T, T, T>
		return new Tuple5(v[0], v[1], v[2], v[3], v[4]);
}

/**
	`Tuple6` is a tuple with size values. It maps to an anonymous object with fields `_0`, `_1`, `_2`, `_4`, `_5`, and `_6`.
*/
@:forward(_0, _1, _2, _3, _4, _5)
@:dox(hide)
abstract Tuple6<T0, T1, T2, T3, T4, T5>({
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3,
	_4:T4,
	_5:T5
}) from {
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3,
	_4:T4,
	_5:T5
} to {
	_0:T0,
	_1:T1,
	_2:T2,
	_3:T3,
	_4:T4,
	_5:T5
} {
	/**
		Static constructor, required to work around Haxe compiler bug.
	*/
	inline public static function of<T0, T1, T2, T3, T4, T5>(_0:T0, _1:T1, _2:T2, _3:T3, _4:T4, _5:T5):Tuple6<T0, T1, T2, T3, T4, T5>
		return new Tuple6(_0, _1, _2, _3, _4, _5);

	/**
		Constructs an instance of `Tuple6` the 6 required value.
	*/
	inline public function new(_0:T0, _1:T1, _2:T2, _3:T3, _4:T4, _5:T5)
		this = {
			_0: _0,
			_1: _1,
			_2: _2,
			_3: _3,
			_4: _4,
			_5: _5
		};

	/**
		`flip` returns a new Tuple with the values in reverse order.
	*/
	inline public function flip():Tuple6<T5, T4, T3, T2, T1, T0>
		return {
			_0: this._5,
			_1: this._4,
			_2: this._3,
			_3: this._2,
			_4: this._1,
			_5: this._0
		};

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the first
		on the left.
	*/
	inline public function dropLeft()
		return new Tuple5(this._1, this._2, this._3, this._4, this._5);

	/**
		`dropLeft` returns a new Tuple with one less element by dropping the last
		on the right.
	*/
	inline public function dropRight()
		return new Tuple5(this._0, this._1, this._2, this._3, this._4);

	/**
		Provides a string representation of the Tuple
	*/
	inline public function toString()
		return 'Tuple6(${this._0},${this._1},${this._2},${this._3},${this._4},${this._5})';

	@:from inline static public function arrayToTuple6<T>(v:Array<T>):Tuple6<T, T, T, T, T, T>
		return new Tuple6(v[0], v[1], v[2], v[3], v[4], v[5]);
}
