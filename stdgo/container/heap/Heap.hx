package stdgo.container.heap;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef Interface = StructType & {
	> stdgo.sort.Sort.Interface,
	public function push(_x:AnyInterface):Void;
	public function pop():AnyInterface;
};

/**
	// Init establishes the heap invariants required by the other routines in this package.
	// Init is idempotent with respect to the heap invariants
	// and may be called whenever the heap invariants may have been invalidated.
	// The complexity is O(n) where n = h.Len().
**/
function init(_h:Interface):Void {
	var _n:GoInt = _h.len();
	{
		var _i:GoInt = _n / ((2 : GoInt)) - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			_down(_h, _i, _n);
		});
	};
}

/**
	// Push pushes the element x onto the heap.
	// The complexity is O(log n) where n = h.Len().
**/
function push(_h:Interface, _x:AnyInterface):Void {
	_h.push(Go.toInterface(_x));
	_up(_h, _h.len() - ((1 : GoInt)));
}

/**
	// Pop removes and returns the minimum element (according to Less) from the heap.
	// The complexity is O(log n) where n = h.Len().
	// Pop is equivalent to Remove(h, 0).
**/
function pop(_h:Interface):AnyInterface {
	var _n:GoInt = _h.len() - ((1 : GoInt));
	_h.swap(((0 : GoInt)), _n);
	_down(_h, ((0 : GoInt)), _n);
	return Go.toInterface(_h.pop());
}

/**
	// Remove removes and returns the element at index i from the heap.
	// The complexity is O(log n) where n = h.Len().
**/
function remove(_h:Interface, _i:GoInt):AnyInterface {
	var _n:GoInt = _h.len() - ((1 : GoInt));
	if (_n != _i) {
		_h.swap(_i, _n);
		if (!_down(_h, _i, _n)) {
			_up(_h, _i);
		};
	};
	return Go.toInterface(_h.pop());
}

/**
	// Fix re-establishes the heap ordering after the element at index i has changed its value.
	// Changing the value of the element at index i and then calling Fix is equivalent to,
	// but less expensive than, calling Remove(h, i) followed by a Push of the new value.
	// The complexity is O(log n) where n = h.Len().
**/
function fix(_h:Interface, _i:GoInt):Void {
	if (!_down(_h, _i, _h.len())) {
		_up(_h, _i);
	};
}

function _up(_h:Interface, _j:GoInt):Void {
	while (true) {
		var _i:GoInt = (_j - ((1 : GoInt))) / ((2 : GoInt));
		if (_i == _j || !_h.less(_j, _i)) {
			break;
		};
		_h.swap(_i, _j);
		_j = _i;
	};
}

function _down(_h:Interface, _i0:GoInt, _n:GoInt):Bool {
	var _i:GoInt = _i0;
	while (true) {
		var _j1:GoInt = ((2 : GoInt)) * _i + ((1 : GoInt));
		if (_j1 >= _n || _j1 < ((0 : GoInt))) {
			break;
		};
		var _j:GoInt = _j1;
		{
			var _j2:GoInt = _j1 + ((1 : GoInt));
			if (_j2 < _n && _h.less(_j2, _j1)) {
				_j = _j2;
			};
		};
		if (!_h.less(_j, _i)) {
			break;
		};
		_h.swap(_i, _j);
		_i = _j;
	};
	return _i > _i0;
}
