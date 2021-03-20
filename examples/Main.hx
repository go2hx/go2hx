package;

import github_com.tidwall.btree.Btree.new_ as newBtree;
import stdgo.StdGoTypes;


typedef Item = {
	key:String,
	val:String,
};

function main() {
	trace("testing");
	var keys = newBtree(byKeys);
	var vals = newBtree(byVals);
	trace("finish");
}

// byKeys is a comparison function that compares item keys and returns true
// when a is less than b.
function byKeys(a:AnyInterface, b:AnyInterface):Bool {
	var i1:Item = a;
	var i2:Item = b;
	return i1.key < i2.key;
}

// byVals is a comparison function that compares item values and returns true
// when a is less than b.
function byVals(a:AnyInterface, b:AnyInterface):Bool {
	var i1:Item = a;
	var i2:Item = b;
	if (i1.val < i2.val) {
		return true;
	}
	if (i1.val > i2.val) {
		return false;
	}
	// Both vals are equal so we should fall though
	// and let the key comparison take over.
	return byKeys(a, b);
}
