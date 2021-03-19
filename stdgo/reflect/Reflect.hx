package stdgo.reflect;

function deepEqual(a1:Dynamic, a2:Dynamic):Bool {
	if (a1 == a2)
		return true;
	if (a1 == null || a2 == null) {
		return false;
	}
	var t = Type.typeof(a1);
	switch t {
		case TObject:
			return compareStruct(a1, a2);
		case TClass(c):
			var name = Type.getClassName(c);
			switch name {
				case "stdgo.SliceData":
					if (a1.length != a2.length)
						return false;
					for (i in 0...a1.length) {
						if (!deepEqual(a1.get(i), a2.get(i))) {
							trace("a1 not equal: " + a1);
							return false;
						}
					}
					return true;
				case "stdgo.PointerData":
					return deepEqual(a1.get(), a2.get());
				case "haxe._Int64.___Int64":
					return haxe.Int64.eq(a1, a2);
				default:
					// trace("unknown name: " + name);
			}
			return compareStruct(a1, a2);
		case TFunction:
			return Reflect.compareMethods(a1, a2);
		case TInt:
			trace("a---- " + a1);
			return a1 == a2;
		case TFloat:
			return a1 == a2;
		default:
			trace('unknown type: $t');
	}
	return false;
}

function compareStruct(a1:Dynamic, a2:Dynamic) {
	// fields
	var f1 = Reflect.fields(a1);
	var f2 = Reflect.fields(a2);
	if (f1.length != f2.length)
		return false;
	for (i in 0...f1.length) {
		if (f1[i] == "_address_")
			continue;
		if (!deepEqual(Reflect.field(a1, f1[i]), Reflect.field(a2, f2[i]))) {
			trace("field not equal: " + f1[i]);
			return false;
		}
	}
	return true;
}
