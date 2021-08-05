package stdgo.sort;

import stdgo.Slice;
import stdgo.StdGoTypes;

function ints(slice:Slice<GoInt>) {
	_sort(slice, (i, j) -> {
		return slice[i] > slice[j] ? -1 : 1;
	});
}

function strings(slice:Slice<GoString>) {
	_sort(slice, (i, j) -> {
		return slice[i] > slice[j] ? -1 : 1;
	});
}

function slice(slice:AnyInterface, less:(i:GoInt, j:GoInt) -> Bool) {
	_sort(slice.value, (i, j) -> {
		return less(i, j) ? -1 : 1;
	});
}

function intsAreSorted(slice:Slice<Int>):Bool {
	var min = slice[0];
	for (i in 1...slice.length.toBasic()) {
		if (min > slice[i])
			return false;
		min = slice[i];
	}
	return true;
}

private function _sort(a:Slice<Dynamic>, cmp:Int->Int->Int) {
	rec(a, cmp, 0, a.length.toBasic());
}

private function rec(a:Slice<Dynamic>, cmp:Int->Int->Int, from:Int, to:Int) {
	var middle = (from + to) >> 1;
	if (to - from < 12) {
		if (to <= from)
			return;
		for (i in (from + 1)...to) {
			var j = i;
			while (j > from) {
				if (compare(a, cmp, j, j - 1) < 0)
					swap(a, j - 1, j);
				else
					break;
				j--;
			}
		}
		return;
	}
	rec(a, cmp, from, middle);
	rec(a, cmp, middle, to);
	doMerge(a, cmp, from, middle, to, middle - from, to - middle);
}

private function doMerge<T>(a:Slice<T>, cmp:Int->Int->Int, from, pivot:Int, to:Int, len1:Int, len2:Int) {
	var first_cut:Int, second_cut:Int, len11:Int, len22:Int, new_mid:Int;
	if (len1 == 0 || len2 == 0)
		return;
	if (len1 + len2 == 2) {
		if (compare(a, cmp, pivot, from) < 0)
			swap(a, pivot, from);
		return;
	}
	if (len1 > len2) {
		len11 = len1 >> 1;
		first_cut = from + len11;
		second_cut = lower(a, cmp, pivot, to, first_cut);
		len22 = second_cut - pivot;
	} else {
		len22 = len2 >> 1;
		second_cut = pivot + len22;
		first_cut = upper(a, cmp, from, pivot, second_cut);
		len11 = first_cut - from;
	}
	rotate(a, cmp, first_cut, pivot, second_cut);
	new_mid = first_cut + len22;
	doMerge(a, cmp, from, first_cut, new_mid, len11, len22);
	doMerge(a, cmp, new_mid, second_cut, to, len1 - len11, len2 - len22);
}

private function rotate<T>(a:Slice<T>, cmp:Int->Int->Int, from, mid, to) {
	var n:Int;
	if (from == mid || mid == to)
		return;
	n = gcd(to - from, mid - from);
	while (n-- != 0) {
		var val = a[from + n];
		var shift = mid - from;
		var p1 = from + n, p2 = from + n + shift;
		while (p2 != from + n) {
			a[p1] = a[p2];
			p1 = p2;
			if (to - p2 > shift)
				p2 += shift;
			else
				p2 = from + (shift - (to - p2));
		}
		a[p1] = val;
	}
}

private function gcd(m, n) {
	while (n != 0) {
		var t = m % n;
		m = n;
		n = t;
	}
	return m;
}

private function upper<T>(a:Slice<T>, cmp, from, to, val) {
	var len = to - from, half, mid;
	while (len > 0) {
		half = len >> 1;
		mid = from + half;
		if (compare(a, cmp, val, mid) < 0)
			len = half;
		else {
			from = mid + 1;
			len = len - half - 1;
		}
	}
	return from;
}

private function lower<T>(a:Slice<T>, cmp, from, to, val) {
	var len:Int = to - from, half, mid;
	while (len > 0) {
		half = len >> 1;
		mid = from + half;
		if (compare(a, cmp, mid, val) < 0) {
			from = mid + 1;
			len = len - half - 1;
		} else
			len = half;
	}
	return from;
}

private function swap<T>(a:Slice<T>, i, j) {
	var tmp = a[i];
	a[i] = a[j];
	a[j] = tmp;
}

private inline function compare<T>(a:Slice<T>, cmp:Int->Int->Int, i:Int, j:Int) {
	return cmp(i, j);
}
