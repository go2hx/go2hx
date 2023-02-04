package stdgo.crypto.internal.boring.sig;

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
	// Package sig holds “code signatures” that can be called
	// and will result in certain code sequences being linked into
	// the final binary. The functions themselves are no-ops.
**/
private var __go2hxdoc__package:Bool;

/**
	// BoringCrypto indicates that the BoringCrypto module is present.
**/
function boringCrypto():Void {}

/**
	// FIPSOnly indicates that package crypto/tls/fipsonly is present.
**/
function fipsonly():Void {}

/**
	// StandardCrypto indicates that standard Go crypto is present.
**/
function standardCrypto():Void {}
